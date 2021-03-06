//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyBanHang.Model
{
    using QuanLyBanHang.ViewModel;
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham : BaseViewModel
    {
        public SanPham()
        {
            this.ThongTinPhieuNhaps = new HashSet<ThongTinPhieuNhap>();
            this.ThongTinPhieuXuats = new HashSet<ThongTinPhieuXuat>();
        }
        private string _Id;
        public string Id { get { return _Id; } set { _Id = value; OnPropertyChanged(); } }

        private string _Ten;
        public string Ten { get { return _Ten; } set { _Ten = value; OnPropertyChanged(); } }

        private int _IdNhaCungCap;
        public int IdNhaCungCap { get { return _IdNhaCungCap; } set { _IdNhaCungCap = value; OnPropertyChanged(); } }

        private string _HangSanXuat;
        public string HangSanXuat { get { return _HangSanXuat; } set { _HangSanXuat = value; OnPropertyChanged(); } }
        private string _HinhAnh;
        public string HinhAnh { get { return _HinhAnh; } set { _HinhAnh = value; OnPropertyChanged(); } }
        public Nullable<bool> Xoa { get; set; }

        private NhaCungCap _NhaCungCap;
        public virtual NhaCungCap NhaCungCap { get { return _NhaCungCap; } set { _NhaCungCap = value; OnPropertyChanged(); } }
        public virtual ICollection<ThongTinPhieuNhap> ThongTinPhieuNhaps { get; set; }
        public virtual ICollection<ThongTinPhieuXuat> ThongTinPhieuXuats { get; set; }
    }
}
