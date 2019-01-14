using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.DataVisualization.Charting;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyBanHang
{
    /// <summary>
    /// Interaction logic for BDDoanhThu.xaml
    /// </summary>
    public partial class BDDoanhThu : Window
    {
        private List<SP> MyCollection;

        ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang> ListSource = new ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang>();
        public BDDoanhThu()
        {
            InitializeComponent();
  
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ListSource = QuanLyBanHang.XemKhoHang.ListKhoHang;
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            XemKhoHang window = new XemKhoHang();

            ListSource.Clear();

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

        public class SP
        {
            public string name1 { get; set; }
            public int soDaBan { get; set; }
        }

        private void Chart_Loaded(object sender, RoutedEventArgs e)
        {
            MyCollection = new List<SP>();

            int tongGiaNhap = 0;
            int tongGiaXuat = 0;

            foreach (var item in ListSource)
            {
                tongGiaNhap += (item.soDaBan + item.soLuong) * item.giaNhapTrungBinh;
                tongGiaXuat += item.soDaBan * item.giaBanTrungBinh;

            }

            SP sp1 = new SP();
            sp1.name1 = "Tổng giá nhập";
            sp1.soDaBan = tongGiaNhap;

            SP sp2 = new SP();
            sp2.name1 = "Tổng giá xuất";
            sp2.soDaBan = tongGiaXuat;

            MyCollection.Add(sp1);
            MyCollection.Add(sp2);

            ((ColumnSeries)MyChart.Series[0]).ItemsSource = MyCollection;
        }
    }
}

