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
    
    public partial class NguoiDung:BaseViewModel
    {
        public int Id { get; set; }
        private string _Ten;
        public string Ten { get { return _Ten; } set { _Ten = value; OnPropertyChanged(); } }

        private string _TaiKhoan;
        public string TaiKhoan { get { return _TaiKhoan; } set { _TaiKhoan = value; OnPropertyChanged(); } }

        private string _MatKhau;
        public string MatKhau { get { return _MatKhau; } set { _MatKhau = value; OnPropertyChanged(); } }
        public int QuyenNguoiDung { get; set; }

        private QuyenNguoiDung _QuyenNguoiDung1;
        public virtual QuyenNguoiDung QuyenNguoiDung1 { get { return _QuyenNguoiDung1; } set { _QuyenNguoiDung1 = value; OnPropertyChanged(); } }
    }
}
