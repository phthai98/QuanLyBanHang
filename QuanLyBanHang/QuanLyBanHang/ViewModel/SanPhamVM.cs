using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace QuanLyBanHang.ViewModel
{
    public class SanPhamVM : BaseViewModel
    {
        private ObservableCollection<Model.SanPham> _List;
        public ObservableCollection<Model.SanPham> List { get { return _List; } set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<Model.NhaCungCap> _NhaCungCap;
        public ObservableCollection<Model.NhaCungCap> NhaCungCap { get { return _NhaCungCap; } set { _NhaCungCap = value; OnPropertyChanged(); } }

        private Model.SanPham _SelectedItem;
        public Model.SanPham SelectedItem
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
                    HinhAnh = SelectedItem.HinhAnh;
                    HangSanXuat = SelectedItem.HangSanXuat;
                    SelectedNhaCungCap = SelectedItem.NhaCungCap;
                }
            }
        }

        private Model.NhaCungCap _SelectedNhaCungCap;
        public Model.NhaCungCap SelectedNhaCungCap
        {
            get
            {
                return _SelectedNhaCungCap;
            }
            set
            {
                _SelectedNhaCungCap = value;
                OnPropertyChanged();
            }
        }

        private string _Ten;
        public string Ten { get { return _Ten; } set { _Ten = value; OnPropertyChanged(); } }


        private string _HangSanXuat;
        public string HangSanXuat { get { return _HangSanXuat; } set { _HangSanXuat = value; OnPropertyChanged(); } }

        private string _HinhAnh;
        public string HinhAnh { get { return _HinhAnh; } set { _HinhAnh = value; OnPropertyChanged(); } }


        public ICommand AddCommand { get; set; }
        public ICommand EditCommand { get; set; }

        public ICommand DeleteCommand { get; set; }

        public SanPhamVM()
        {
            List = new ObservableCollection<Model.SanPham>(Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Xoa == false));
            NhaCungCap = new ObservableCollection<Model.NhaCungCap>(Model.DataProvider.Ins.DB.NhaCungCaps.Where(x => x.Xoa == false));

           AddCommand = new RelayCommand<object>((p) =>
            {
                if (SelectedNhaCungCap == null)
                    return false;
                return true;

            }, (p) =>
            {
                var tempID = Guid.NewGuid().ToString();
                tempID = tempID.Substring(0, 9);

                var SanPham = new Model.SanPham() { Ten = Ten, HinhAnh = HinhAnh, HangSanXuat = HangSanXuat, IdNhaCungCap = SelectedNhaCungCap.Id, Id = tempID };
                
                Model.DataProvider.Ins.DB.SanPhams.Add(SanPham);
                Model.DataProvider.Ins.DB.SaveChanges();
                List.Add(SanPham);

            });

           EditCommand = new RelayCommand<object>((p) =>
           {
               if (SelectedItem == null || SelectedNhaCungCap == null)
                   return false;

               var displayList = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Id == SelectedItem.Id);
               if (displayList != null && displayList.Count() != 0)
                   return true;

               return false;

           }, (p) =>
           {
               var SanPham = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
               SanPham.Ten = Ten;
               SanPham.HangSanXuat = HangSanXuat;
               SanPham.HinhAnh = HinhAnh;
               SanPham.IdNhaCungCap = SelectedNhaCungCap.Id;

               Model.DataProvider.Ins.DB.SaveChanges();

           });

           DeleteCommand = new RelayCommand<object>((p) =>
           {
               if (SelectedItem == null || SelectedNhaCungCap == null)
                   return false;

               var displayList = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Id == SelectedItem.Id);
               if (displayList != null && displayList.Count() != 0)
                   return true;

               return false;

           }, (p) =>
           {
               var SanPham = Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Id == SelectedItem.Id).SingleOrDefault();
               SanPham.Xoa = true;
               Model.DataProvider.Ins.DB.SaveChanges();

               for (int i = 0; i < List.Count(); i++)
               {
                   if (List[i].Id == SelectedItem.Id)
                   {
                       List[i] = new Model.SanPham()
                       {
                           Xoa = SelectedItem.Xoa
                       };
                       break;
                   }
               }

               ((ObservableCollection<Model.SanPham>)List).Remove(SanPham);
               ((ObservableCollection<Model.SanPham>)List).Clear();
               List = new ObservableCollection<Model.SanPham>(Model.DataProvider.Ins.DB.SanPhams.Where(x => x.Xoa == false));
               _SelectedItem = null;
           });
        }
    }
}
