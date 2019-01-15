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
    /// Interaction logic for BDTonKho.xaml
    /// </summary>
    public partial class BDTonKho : Window
    {
        private List<SP> MyCollection;

        ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang> ListSource = new ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang>();
        public BDTonKho()
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
            public string name { get; set; }
            public int soLuongCon { get; set; }
        }

        private void Chart_Loaded1(object sender, RoutedEventArgs e)
        {
            MyCollection = new List<SP>();

            foreach (var item in ListSource)
            {
                SP sp = new SP();
                sp.name = item.sanPham.Ten;
                sp.soLuongCon = item.soLuong;

                MyCollection.Add(sp);
            }

            ((ColumnSeries)MyChart1.Series[0]).ItemsSource = MyCollection;
        }
    }
}