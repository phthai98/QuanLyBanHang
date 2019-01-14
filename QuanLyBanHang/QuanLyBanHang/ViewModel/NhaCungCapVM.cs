using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyBanHang.ViewModel
{
    public class NhaCungCapVM : BaseViewModel
    {
        private ObservableCollection<Model.NhaCungCap> _List;
        public ObservableCollection<Model.NhaCungCap> List { get { return _List; } set { _List = value; OnPropertyChanged(); } }

        private Model.NhaCungCap _SelectedItem;
        public Model.NhaCungCap SelectedItem
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
                    DienThoai = SelectedItem.DienThoai;
                    Email = SelectedItem.Email;
                    DiaChi = SelectedItem.DiaChi;
                    ThongTin = SelectedItem.ThongTin;
                    NgayHopTac = SelectedItem.NgayHopTac;
                }
            }
        }

        private string _Ten;
        public string Ten { get { return _Ten; } set { _Ten = value; OnPropertyChanged(); } }


        private string _DienThoai;
        public string DienThoai { get { return _DienThoai; } set { _DienThoai = value; OnPropertyChanged(); } }


        private string _DiaChi;
        public string DiaChi { get { return _DiaChi; } set { _DiaChi = value; OnPropertyChanged(); } }


        private string _Email;
        public string Email { get { return _Email; } set { _Email = value; OnPropertyChanged(); } }


        private string _ThongTin;
        public string ThongTin { get { return _ThongTin; } set { _ThongTin = value; OnPropertyChanged(); } }

        private bool _Xoa;
        public bool Xoa { get { return _Xoa; } set { _Xoa = value; OnPropertyChanged(); } }


        private DateTime? _NgayHopTac;
        public DateTime? NgayHopTac { get { return _NgayHopTac; } set { _NgayHopTac = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public ICommand DeleteCommand { get; set; }

        public NhaCungCapVM()
        {
            List = new ObservableCollection<Model.NhaCungCap>(Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Xoa == false));

            AddCommand = new RelayCommand<object>((p) =>
            {
                return true;

            }, (p) =>
            {
                var NhaCungCap = new Model.NhaCungCap() { Ten = Ten, DienThoai = DienThoai, DiaChi = DiaChi, Email = Email, NgayHopTac = NgayHopTac, ThongTin = ThongTin, Xoa = Xoa };

                Model.DataProvider.Ins.DB.NhaCungCaps.Add(NhaCungCap);
                Model.DataProvider.Ins.DB.SaveChanges();

                List.Add(NhaCungCap);
            });

            EditCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var NhaCungCap = Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                NhaCungCap.Ten = Ten;
                NhaCungCap.DienThoai = DienThoai;
                NhaCungCap.DiaChi = DiaChi;
                NhaCungCap.Email = Email;
                NhaCungCap.NgayHopTac = NgayHopTac;
                NhaCungCap.ThongTin = ThongTin;
                Model.DataProvider.Ins.DB.SaveChanges();

                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Id == SelectedItem.Id)
                    {
                        List[i] = new Model.NhaCungCap()
                        {
                            Id = SelectedItem.Id,
                            Ten = SelectedItem.Ten,
                            DienThoai = SelectedItem.DienThoai,
                            DiaChi = SelectedItem.DiaChi,
                            Email = SelectedItem.Email,
                            ThongTin = SelectedItem.ThongTin,
                            NgayHopTac = SelectedItem.NgayHopTac
                        };
                        break;
                    }
                }
            });

            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedItem == null)
                    return false;

                var displayList = Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Id == SelectedItem.Id);
                if (displayList != null && displayList.Count() != 0)
                    return true;

                return false;

            }, (p) =>
            {
                var NhaCungCap = Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
                NhaCungCap.Xoa = true;
                Model.DataProvider.Ins.DB.SaveChanges();

                for (int i = 0; i < List.Count(); i++)
                {
                    if (List[i].Id == SelectedItem.Id)
                    {
                        List[i] = new Model.NhaCungCap()
                        {
                            Xoa = SelectedItem.Xoa
                        };
                        break;
                    }
                }

                ((ObservableCollection<Model.NhaCungCap>)List).Remove(NhaCungCap);
                ((ObservableCollection<Model.NhaCungCap>)List).Clear();
                List = new ObservableCollection<Model.NhaCungCap>(Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Xoa == false));
                _SelectedItem = null;
            });
        }
    }
}
