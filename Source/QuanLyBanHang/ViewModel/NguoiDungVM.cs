using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyBanHang.ViewModel
{
    public class NguoiDungVM:BaseViewModel
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

        public NguoiDungVM()
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
                var NguoiDung=new Model.NguoiDung(){Ten=Ten, TaiKhoan=TaiKhoan,MatKhau=MatKhau, QuyenNguoiDung=SelectedQuyen.Id};
                
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
}
