using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyBanHang.ViewModel
{
    public class NhapHangVM:BaseViewModel
    {
        private ObservableCollection<Model.ThongTinPhieuNhap> _List;
        public ObservableCollection<Model.ThongTinPhieuNhap> List { get { return _List; } set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Model.SanPham> _SanPham;
        public ObservableCollection<Model.SanPham> SanPham { get { return _SanPham; } set { _SanPham = value; OnPropertyChanged(); } }

        private Model.ThongTinPhieuNhap _SelectedItem;
        public Model.ThongTinPhieuNhap SelectedItem
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
                    NgayNhap = SelectedItem.NgayNhap;
                    SoLuong = SelectedItem.SoLuong;
                    GiaNhap = SelectedItem.GiaNhap;
                    GiaXuat = SelectedItem.GiaXuat;
                    SelectedSanPham = SelectedItem.SanPham;
                }
            }
        }

        private Model.SanPham _SelectedSanPham;
        public Model.SanPham SelectedSanPham
        {
            get
            {
                return _SelectedSanPham;
            }
            set
            {
                _SelectedSanPham = value;
                OnPropertyChanged();
            }
        }

        private int _SoLuong;
        public int SoLuong { get { return _SoLuong; } set { _SoLuong = value; OnPropertyChanged(); } }


        private double _GiaNhap;
        public double GiaNhap { get { return _GiaNhap; } set { _GiaNhap = value; OnPropertyChanged(); } }

        private double _GiaXuat;
        public double GiaXuat { get { return _GiaXuat; } set { _GiaXuat = value; OnPropertyChanged(); } }

        private DateTime? _NgayNhap;
        public DateTime? NgayNhap { get { return _NgayNhap; } set { _NgayNhap = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public ICommand DeleteCommand { get; set; }

        public NhapHangVM()
        {
            List = new ObservableCollection<Model.ThongTinPhieuNhap>(Model.DataProvider.Ins.DB.ThongTinPhieuNhaps);
            SanPham = new ObservableCollection<Model.SanPham>(Model.DataProvider.Ins.DB.SanPhams);

           AddCommand = new RelayCommand<object>((p) =>
            {
                if (_SelectedSanPham == null)
                    return false;
                return true;

            }, (p) =>
            {
                var tempID = Guid.NewGuid().ToString();
                tempID = tempID.Substring(0, 9);

                var ThongTinPhieuNhap = new Model.ThongTinPhieuNhap() { NgayNhap = NgayNhap, SoLuong = SoLuong, GiaNhap = GiaNhap, GiaXuat = GiaXuat, IdSanPham = SelectedSanPham.Id, Id = tempID };
                
                Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Add(ThongTinPhieuNhap);
                Model.DataProvider.Ins.DB.SaveChanges();
                List.Add(ThongTinPhieuNhap);

            });

           EditCommand = new RelayCommand<object>((p) =>
           {
               if (SelectedItem == null || SelectedSanPham == null)
                   return false;

               var displayList = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.Id == SelectedItem.Id);
               if (displayList != null && displayList.Count() != 0)
                   return true;

               return false;

           }, (p) =>
           {
               var NhapHang = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
               NhapHang.NgayNhap = NgayNhap;
               NhapHang.SoLuong = SoLuong;
               NhapHang.GiaNhap = GiaNhap;
               NhapHang.GiaXuat = GiaXuat;
               NhapHang.IdSanPham = SelectedSanPham.Id;

               Model.DataProvider.Ins.DB.SaveChanges();

           });

           DeleteCommand = new RelayCommand<object>((p) =>
           {
               if (SelectedItem == null || SelectedSanPham == null)
                   return false;

               var displayList = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.Id == SelectedItem.Id);
               if (displayList != null && displayList.Count() != 0)
                   return true;

               return false;

           }, (p) =>
           {
               var NhapHang = Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();

               Model.DataProvider.Ins.DB.ThongTinPhieuNhaps.Remove(NhapHang);

               Model.DataProvider.Ins.DB.SaveChanges();

               ((ObservableCollection<Model.ThongTinPhieuNhap>)List).Remove(NhapHang);
               ((ObservableCollection<Model.ThongTinPhieuNhap>)List).Clear();
               List = new ObservableCollection<Model.ThongTinPhieuNhap>(Model.DataProvider.Ins.DB.ThongTinPhieuNhaps);
               _SelectedItem = null;
           });
        }
    }
}
