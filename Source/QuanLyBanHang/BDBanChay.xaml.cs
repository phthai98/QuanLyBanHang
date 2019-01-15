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
    /// Interaction logic for BDBanChay.xaml
    /// </summary>
    public partial class BDBanChay : Window
    {
        private List<SP> MyCollection;

        ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang> ListSource = new ObservableCollection<QuanLyBanHang.XemKhoHang.KhoHang>();
        public BDBanChay()
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

            foreach(var item in ListSource)
            {
                SP sp = new SP();
                sp.name1 = item.sanPham.Ten;
                sp.soDaBan = item.soDaBan;

                MyCollection.Add(sp);
            }

            ((ColumnSeries)MyChart.Series[0]).ItemsSource = MyCollection;
        }
    }
}
