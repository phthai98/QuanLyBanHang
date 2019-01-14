using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyBanHang
{
    /// <summary>
    /// Interaction logic for XemKhoHang.xaml
    /// </summary>
    public partial class XemKhoHang : Window
    {
        public class KhoHang
        {
            public Model.SanPham sanPham { get; set; }
            public int STT { get; set; }
            public int soLuong { get; set; }
            public string hangSanXuat { get; set; }
            public int giaNhapTrungBinh { get; set; }
            public int giaBanTrungBinh { get; set; }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var items = LoadKhoHang();
            MyItems.ItemsSource = items;
        }

        public ObservableCollection<KhoHang> LoadKhoHang()
        {
            ObservableCollection<KhoHang> ListKhoHang = new ObservableCollection<KhoHang>();

            var objectList = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Xoa == false);

            int i = 1;
            foreach (var item in objectList)
            {
                var inputList = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(p => p.IdSanPham == item.Id);
                var outputList = Model.DataProvider.Ins.DB.ThongTinPhieuXuats.Where(p => p.IdSanPham == item.Id);

                int sumInput = 0;
                int sumOutput = 0;
                int giaNhapTrungBinh = 0;
                int giaBanTrungBinh = 0;

                if (inputList.Count() > 0)
                {
                    sumInput = (int)inputList.Sum(p => p.SoLuong);
                    giaNhapTrungBinh = (int)inputList.Average(p => p.GiaNhap);
                    giaBanTrungBinh = (int)inputList.Average(p => p.GiaXuat);
                }
                if (outputList.Count() > 0)
                {
                    sumOutput = (int)outputList.Sum(p => p.SoLuong);
                }

                KhoHang khohang = new KhoHang();
                khohang.STT = i;
                khohang.soLuong = (sumInput - sumOutput) < 0 ? 0 : sumInput - sumOutput;
                khohang.sanPham = item;
                khohang.hangSanXuat = item.HangSanXuat;
                khohang.giaNhapTrungBinh = giaNhapTrungBinh;
                khohang.giaBanTrungBinh = giaBanTrungBinh;

                ListKhoHang.Add(khohang);

                i++;
            }

            return ListKhoHang;
        }

        public XemKhoHang()
        {
            InitializeComponent();
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            MainWindow window = new MainWindow();

            this.Close();

            window.Show();
        }

        private void GridIconBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ButtonMaximize_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
            {
                WindowState = WindowState.Maximized;
            }
            else WindowState = WindowState.Normal;
        }

        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
            {
                WindowState = WindowState.Minimized;
            }
            else WindowState = WindowState.Normal;
        }
    }
}
