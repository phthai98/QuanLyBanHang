using QuanLyBanHang.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace QuanLyBanHang
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DateTime? ngayxuat;
        string sanPhamDuocChon = "";
        int tongTien = 0;
        int soLuongMax = 0;
        bool themNgay = false;
        bool themKhachHang = false;
        string maphieu = "";
        int maKH;
        List<int> mangSL = new List<int>();
        List<string> mangIdSanPham = new List<string>();


        ObservableCollection<Product2> ListItem = new ObservableCollection<Product2>();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
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

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            var items = GetItemsFromDB();
            MyItems.ItemsSource = items;

            var items2 = GetItemsFromDB();
            MyItems2.ItemsSource = items2;

            MyItems3.ItemsSource = ListItem;
        }

        class Product
        {
            public string id { get; set; }
            public string price { get; set; }
            public string name { get; set; }
            public string imageSource { get; set; }
        }

        class Product2
        {
            public string id { get; set; }
            public int price { get; set; }
            public string name { get; set; }
            public int soLuong { get; set; }
            public int thanhTien { get; set; }
        }

        private ObservableCollection<Product> GetItemsFromDB()
        {
            ObservableCollection<Product> List = new ObservableCollection<Product>();

            var objectList = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps;

            foreach (var item in objectList)
            {
                var inputList = Model.DataProvider.Ins.DB.SanPhams.Where(p => p.Id == item.IdSanPham);

                string name;
                string img;
                string giaBan;

                if (inputList.Count() > 0)
                {
                    name = inputList.First().Ten.ToString();
                    img = inputList.First().HinhAnh.ToString();
                    giaBan = item.GiaXuat.ToString();

                    Product sanpham = new Product();
                    sanpham.id = inputList.First().Id.ToString();
                    sanpham.name = name;
                    sanpham.imageSource = img;
                    sanpham.price = giaBan;

                    List.Add(sanpham);
                }
            }
            return List;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NhapHang nhapHang = new NhapHang();
            nhapHang.Show();
            this.Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            XemKhoHang xemKhoHang = new XemKhoHang();
            xemKhoHang.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            NhaCungCap window = new NhaCungCap();
            window.Show();
            this.Close();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            ThongKe window = new ThongKe();
            window.Show();
            this.Close();
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            NguoiDung window = new NguoiDung();
            window.Show();
            this.Close();
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            SanPham window = new SanPham();
            window.Show();
            this.Close();
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {

            ngayxuat = NgayXuat.SelectedDate;

            if (ngayxuat.HasValue)
            {
                string formatted = ngayxuat.Value.ToString("dd.MM.yyyy", System.Globalization.CultureInfo.InvariantCulture);
                NgayXuat2.Text = "Ngày xuất phiếu\n" + formatted;

                themNgay = true;

            }
            else
            {
                MessageBox.Show("Tồn tại giá trị rỗng.", "Thông báo");
            }
        }

        public class MainViewModel2 : BaseViewModel
        {
            private ObservableCollection<Model.NguoiDung> _List;
            public ObservableCollection<Model.NguoiDung> List { get { return _List; } set { _List = value; OnPropertyChanged(); } }

            private ObservableCollection<Model.QuyenNguoiDung> _Quyen;
            public ObservableCollection<Model.QuyenNguoiDung> Quyen { get { return _Quyen; } set { _Quyen = value; OnPropertyChanged(); } }

            private Model.NguoiDung _SelectedItem;
            public Model.NguoiDung SelectedItem
            {
                get
                {
                    return _SelectedItem;
                }
                set
                {
                    _SelectedItem = value;
                    OnPropertyChanged();
                    if (SelectedItem != null)
                    {
                        Ten = SelectedItem.Ten;
                        TaiKhoan = SelectedItem.TaiKhoan;
                        MatKhau = SelectedItem.MatKhau;
                        SelectedQuyen = SelectedItem.QuyenNguoiDung1;
                    }
                }
            }

            private Model.QuyenNguoiDung _SelectedQuyen;
            public Model.QuyenNguoiDung SelectedQuyen
            {
                get
                {
                    return _SelectedQuyen;
                }
                set
                {
                    _SelectedQuyen = value;
                    OnPropertyChanged();
                }
            }

            private string _Ten;
            public string Ten { get { return _Ten; } set { _Ten = value; OnPropertyChanged(); } }

            private string _TaiKhoan;
            public string TaiKhoan { get { return _TaiKhoan; } set { _TaiKhoan = value; OnPropertyChanged(); } }


            private string _MatKhau;
            public string MatKhau { get { return _MatKhau; } set { _MatKhau = value; OnPropertyChanged(); } }


            private bool _Xoa;
            public bool Xoa { get { return _Xoa; } set { _Xoa = value; OnPropertyChanged(); } }


            private DateTime? _NgayHopTac;
            public DateTime? NgayHopTac { get { return _NgayHopTac; } set { _NgayHopTac = value; OnPropertyChanged(); } }


            public ICommand AddCommand { get; set; }
            public ICommand EditCommand { get; set; }

            public ICommand DeleteCommand { get; set; }

            public MainViewModel2()
            {
                List = new ObservableCollection<Model.NguoiDung>(Model.DataProvider.Ins.DB.NguoiDungs);
                Quyen = new ObservableCollection<Model.QuyenNguoiDung>(Model.DataProvider.Ins.DB.QuyenNguoiDungs);

                AddCommand = new RelayCommand<object>((p) =>
                {
                    if (SelectedQuyen == null)
                        return false;
                    return true;

                }, (p) =>
                {
                    var NguoiDung = new Model.NguoiDung() { Ten = Ten, TaiKhoan = TaiKhoan, MatKhau = MatKhau, QuyenNguoiDung = SelectedQuyen.Id };

                    Model.DataProvider.Ins.DB.NguoiDungs.Add(NguoiDung);
                    Model.DataProvider.Ins.DB.SaveChanges();
                    List.Add(NguoiDung);

                });

                EditCommand = new RelayCommand<object>((p) =>
                {
                    if (SelectedItem == null || SelectedQuyen == null)
                        return false;

                    var displayList = Model.DataProvider.Ins.DB.NguoiDungs.Where(x => x.Id == SelectedItem.Id);
                    if (displayList != null && displayList.Count() != 0)
                        return true;

                    return false;

                }, (p) =>
                {
                    var NguoiDung = Model.DataProvider.Ins.DB.NguoiDungs.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                    NguoiDung.Ten = Ten;
                    NguoiDung.TaiKhoan = TaiKhoan;
                    NguoiDung.MatKhau = MatKhau;
                    NguoiDung.QuyenNguoiDung = SelectedQuyen.Id;

                    Model.DataProvider.Ins.DB.SaveChanges();

                    SelectedItem.Ten = Ten;
                });

                DeleteCommand = new RelayCommand<object>((p) =>
                {
                    if (SelectedItem == null || SelectedQuyen == null)
                        return false;

                    var displayList = Model.DataProvider.Ins.DB.NguoiDungs.Where(x => x.Id == SelectedItem.Id);
                    if (displayList != null && displayList.Count() != 0)
                        return true;

                    return false;

                }, (p) =>
                {
                    var NguoiDung = Model.DataProvider.Ins.DB.NguoiDungs.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();

                    Model.DataProvider.Ins.DB.NguoiDungs.Remove(NguoiDung);

                    Model.DataProvider.Ins.DB.SaveChanges();

                    ((ObservableCollection<Model.NguoiDung>)List).Remove(NguoiDung);
                    ((ObservableCollection<Model.NguoiDung>)List).Clear();
                    List = new ObservableCollection<Model.NguoiDung>(Model.DataProvider.Ins.DB.NguoiDungs);
                    _SelectedItem = null;
                });
            }
        }

        private void Button_Click_7(object sender, RoutedEventArgs e)
        {
            if (sanPhamDuocChon == null || SoLuong.Text == "" || NgayXuat2.Text == "Ngày xuất phiếu" || TenKH2.Text == "Họ Tên Khách")
            {
                MessageBox.Show("Tồn tại mục rỗng.", "Thông báo");
                return;
            }

            Product2 sanpham = new Product2();
            sanpham.id = sanPhamDuocChon;

            mangIdSanPham.Add(sanPhamDuocChon);

            var objectList1 = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.IdSanPham == sanPhamDuocChon);
            var objectList2 = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Id == sanPhamDuocChon);
            var objectList3 = Model.DataProvider.Ins.DB.ThongTinPhieuXuats.Where(x => x.IdSanPham == sanPhamDuocChon);

            int sumInput = 0;
            int sumOutput = 0;

            if (objectList1.Count() > 0) sumInput = (int)objectList1.Sum(p => p.SoLuong);
            if (objectList3.Count() > 0) sumOutput = (int)objectList3.Sum(p => p.SoLuong);

            soLuongMax = sumInput - sumOutput;
            int value = int.Parse(SoLuong.Text);

            if (soLuongMax <= 0)
            {
                MessageBox.Show("Sản phẩm tạm thời hết hàng", "Thông báo");
                return;
            }
            if (value > soLuongMax)
            {
                MessageBox.Show("Quá số lượng có trong kho", "Thông báo");
                return;
            }

            sanpham.name = objectList2.First().Ten.ToString();
            sanpham.price = (int)objectList1.First().GiaXuat;
            sanpham.soLuong = int.Parse(SoLuong.Text);


            sanpham.thanhTien = sanpham.price * sanpham.soLuong;

            tongTien = tongTien + sanpham.thanhTien;

            ListItem.Add(sanpham);

            ICollectionView view = CollectionViewSource.GetDefaultView(ListItem);
            view.Refresh();

            mangSL.Add(value);
        }

        private void MyItems2_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            sanPhamDuocChon = MyItems2.SelectedValue.ToString();

            var objectList1 = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.IdSanPham == sanPhamDuocChon);
            var objectList3 = Model.DataProvider.Ins.DB.ThongTinPhieuXuats.Where(x => x.IdSanPham == sanPhamDuocChon);

            int sumInput = 0;
            int sumOutput = 0;

            if (objectList1.Count() > 0) sumInput = (int)objectList1.Sum(p => p.SoLuong);
            if (objectList3.Count() > 0) sumOutput = (int)objectList3.Sum(p => p.SoLuong);

            soLuongMax = sumInput - sumOutput;

            SLKho.Text = "Hàng có sẵn\n" + soLuongMax.ToString();
        }

        private void Button_Click_8(object sender, RoutedEventArgs e)
        {
            if (ListItem.Count() == 0)
            {
                MessageBox.Show("Danh sách sản phẩm rỗng!", "Thông báo");
                return;
            }

            if (MessageBox.Show("Tổng tiền cần thanh toán là: \n" + tongTien, "Thanh Toán",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                maphieu = Guid.NewGuid().ToString();

                if ("" != maphieu)
                {
                    Model.PhieuXuat phieuxuat = new Model.PhieuXuat();
                    phieuxuat.Id = maphieu;
                    phieuxuat.NgayXuat = ngayxuat;

                    Model.DataProvider.Ins.DB.PhieuXuats.Add(phieuxuat);
                    Model.DataProvider.Ins.DB.SaveChanges();

                    themNgay = false;
                }

                Model.KhachHang khach = new Model.KhachHang();
                khach.Ten = TenKH2.Text;
                khach.DienThoai = Sdt.Text;
                khach.DiaChi = DiaChi.Text;
                khach.Email = Email.Text;
                khach.NgayHopTac = ngayxuat;
                khach.ThongTin = ThongTin.Text;

                Model.DataProvider.Ins.DB.KhachHangs.Add(khach);
                Model.DataProvider.Ins.DB.SaveChanges();

                //Lấy ra id khách hàng
                maKH = int.Parse(Model.DataProvider.Ins.DB.KhachHangs
                            .OrderByDescending(p => p.Id)
                            .Select(r => r.Id)
                            .First().ToString());

                themKhachHang = false;
                int i = 0;
                //Thêm thông tin phiếu xuất vào database
                foreach (var item in ListItem)
                {
                    var tempID = Guid.NewGuid().ToString();
                    Model.ThongTinPhieuXuat xuatPhieu = new Model.ThongTinPhieuXuat();
                    xuatPhieu.Id = tempID;
                    xuatPhieu.IdKhachHang = maKH;
                    xuatPhieu.IdSanPham = mangIdSanPham[i];
                    xuatPhieu.IdPhieuXuat = maphieu;
                    xuatPhieu.SoLuong = mangSL[i];

                    Model.DataProvider.Ins.DB.ThongTinPhieuXuats.Add(xuatPhieu);
                    Model.DataProvider.Ins.DB.SaveChanges();
                    i++;
                }

                mangIdSanPham.Clear();
                mangSL.Clear();
                ListItem.Clear();
                ICollectionView view = CollectionViewSource.GetDefaultView(ListItem);
                view.Refresh();

                MessageBox.Show("Thanh toán thành công", "Thanh Toán");
            }
        }

        private void Button_Click_9(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Đã hủy đơn hàng", "Thông báo");

            ListItem.Clear();
            ICollectionView view = CollectionViewSource.GetDefaultView(ListItem);
            view.Refresh();
            tongTien = 0;
        }

        private void Button_Click_10(object sender, RoutedEventArgs e)
        {
            if (TenKH.Text == "")
            {
                MessageBox.Show("Không được để trống tên khách hàng!", "Thông báo");
                return;
            }
            if (Sdt.Text == "")
            {
                MessageBox.Show("Không được để trống số điện thoại!", "Thông báo");
                return;
            }
            TenKH2.Text = "Khách hàng\n" + TenKH.Text;
            themKhachHang = true;
        }
    }
}
