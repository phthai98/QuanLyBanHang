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
    
    public partial class ThongTinPhieuNhap:BaseViewModel
    {
        private string _Id;
        public string Id { get { return _Id; } set { _Id = value; OnPropertyChanged(); } }

        private string _IdSanPham;
        public string IdSanPham { get { return _IdSanPham; } set { _IdSanPham = value; OnPropertyChanged(); } }
        private int _SoLuong;
        public int SoLuong { get { return _SoLuong; } set { _SoLuong = value; OnPropertyChanged(); } }
        private double _GiaNhap;
        public double GiaNhap { get { return _GiaNhap; } set { _GiaNhap = value; OnPropertyChanged(); } }
        private double _GiaXuat;
        public double GiaXuat { get { return _GiaXuat; } set { _GiaXuat = value; OnPropertyChanged(); } }

        private Nullable<System.DateTime> _NgayNhap;
        public Nullable<System.DateTime> NgayNhap { get { return _NgayNhap; } set { _NgayNhap = value; OnPropertyChanged(); } }

        private SanPham _SanPham;
        public virtual SanPham SanPham { get { return _SanPham; } set { _SanPham = value; OnPropertyChanged(); } }
    }
}
