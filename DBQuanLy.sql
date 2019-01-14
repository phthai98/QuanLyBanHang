USE [master]
GO
/****** Object:  Database [QuanLyCuaHang]    Script Date: 1/14/2019 1:18:02 PM ******/
CREATE DATABASE [QuanLyCuaHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCuaHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyCuaHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyCuaHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyCuaHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyCuaHang] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCuaHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCuaHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyCuaHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCuaHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCuaHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyCuaHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCuaHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCuaHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCuaHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCuaHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCuaHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCuaHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyCuaHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyCuaHang] SET QUERY_STORE = OFF
GO
USE [QuanLyCuaHang]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](200) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[NgayHopTac] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](max) NULL,
	[QuyenNguoiDung] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[DienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[NgayHopTac] [datetime] NULL,
	[Xoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[Id] [nvarchar](128) NOT NULL,
	[NgayXuat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyenNguoiDung]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyenNguoiDung](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [nvarchar](10) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[IdNhaCungCap] [int] NULL,
	[HangSanXuat] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[Xoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinPhieuNhap]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPhieuNhap](
	[Id] [nvarchar](128) NOT NULL,
	[IdSanPham] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [float] NULL,
	[GiaXuat] [float] NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinPhieuXuat]    Script Date: 1/14/2019 1:18:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPhieuXuat](
	[Id] [nvarchar](128) NOT NULL,
	[IdSanPham] [nvarchar](10) NOT NULL,
	[IdPhieuXuat] [nvarchar](128) NOT NULL,
	[IdKhachHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac]) VALUES (1, N'Trần A', N'TP. HCM', N'123456789', N'1234@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac]) VALUES (2, N'Trần B', N'TP. HCM', N'123456789', N'1234@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac]) VALUES (3, N'Nguyễn Văn A', N'', N'123456', N'', N'', CAST(N'2019-01-08T00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac]) VALUES (9, N'a', N'', N'1', N'', N'', CAST(N'2019-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [Ten], [TaiKhoan], [MatKhau], [QuyenNguoiDung]) VALUES (1, N'Nguyễn Văn A', N'admin', N'123', 1)
INSERT [dbo].[NguoiDung] ([Id], [Ten], [TaiKhoan], [MatKhau], [QuyenNguoiDung]) VALUES (2, N'Nguyễn V C', N'nhanvien01', N'1234', 2)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (1, N'Điện máy xanh', N'Tp. HCM', N'123456789', N'dienmayxanh@gmail.com', N'Uy tín', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (2, N'FPT', N'Tp. HCM', N'123456789', N'fpt@gmail.com', N'Uy tín', CAST(N'2018-05-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (3, N'VinSmart', N'Tp. HCM', N'123456789', N'vin@gmail.com', N'Mới hợp tác', CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (4, N'VinSmart', N'Tp. HCM', N'12456789', N'vin@gmail.com', N'Mới hợp tác', CAST(N'2018-12-12T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (5, N'Chợ Lớn', N'Tp.HCM', N'098764431', N'cho@gmail.com', N'Mới giao lưu', CAST(N'2019-01-09T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (6, N'VinSmart', N'Tp. HCM', N'12456789', N'vin@gmail.com', N'Mới hợp tác', CAST(N'2018-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (17, N'a', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (18, N'a', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac], [Xoa]) VALUES (19, N'Điện máy xanh', N'Tp. HCM', N'123456789', N'dienmayxanh@gmail.com', N'Uy tín', CAST(N'2018-01-01T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat]) VALUES (N'1', CAST(N'2018-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat]) VALUES (N'2', CAST(N'2018-09-05T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat]) VALUES (N'3', CAST(N'2019-01-09T00:00:00.000' AS DateTime))
INSERT [dbo].[PhieuXuat] ([Id], [NgayXuat]) VALUES (N'f2875a7e-a1ad-4c5c-903e-d11148f1f6cb', CAST(N'2019-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[QuyenNguoiDung] ON 

INSERT [dbo].[QuyenNguoiDung] ([Id], [Ten]) VALUES (1, N'Admin')
INSERT [dbo].[QuyenNguoiDung] ([Id], [Ten]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[QuyenNguoiDung] OFF
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'1', N'LG V30', 2, N'3', N'Assets/lgv30+.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'10', N'LG V40', 4, N'LG', N'Assets/lgv40.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'11', N'Pixel 3 XL', 2, N'Google', N'Assets/pixel3xl.png', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'12', N'Pixel 2 XL', 2, N'Google', N'Assets/pixel2.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'13', N'Pixel 3', 1, N'Google', N'Assets/pixel3.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'14', N'Iphone 8+', 1, N'Apple', N'Assets/ip8+.png', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'2', N'LG G6', 1, N'LG', N'Assets/lgg6.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'3', N'Iphone X 64G', 3, N'Apple', N'Assets/ipx.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'4', N'Iphone Xs Max 64G', 2, N'Apple', N'Assets/ipxsmax.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'5', N'Galaxy Note 9', 2, N'Samsung', N'Assets/note9.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'6', N'Galaxy S9+', 2, N'Samsung', N'Assets/s9+.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'7', N'Xiaomi Mi 8', 3, N'Xiaomi', N'Assets/mi8.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'8', N'Xiaomi Mi Mi 3', 3, N'Xiaomi', N'Assets/mimix3.jpg', 0)
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [HinhAnh], [Xoa]) VALUES (N'fab53c15-', N'LG V41', 4, N'LG', N'Assets/ipx.jpg', NULL)
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'1', N'1', 4, 8000000, 9000000, CAST(N'2018-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'10', N'2', 7, 3000000, 4000000, CAST(N'2018-01-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'11', N'3', 8, 5000000, 8000000, CAST(N'2018-01-03T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'12', N'4', 2, 10000000, 11000000, CAST(N'2018-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'13', N'5', 2, 11000000, 11500000, CAST(N'2015-01-05T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'14', N'6', 3, 12000000, 12500000, CAST(N'2019-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'2', N'7', 10, 7500000, 8000000, CAST(N'2014-04-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'3', N'8', 7, 7000000, 7000000, CAST(N'2014-03-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'4', N'10', 5, 4000000, 6000000, CAST(N'2016-03-02T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'5', N'11', 4, 5000000, 6000000, CAST(N'2012-03-05T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'6', N'12', 4, 5000000, 6000000, CAST(N'2014-03-06T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'7', N'13', 6, 6000000, 6500000, CAST(N'2016-03-07T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'8', N'7', 2, 1000, 200, CAST(N'2019-01-18T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [SoLuong], [GiaNhap], [GiaXuat], [NgayNhap]) VALUES (N'9', N'14', 4, 10000000, 10000000, CAST(N'2019-01-24T00:00:00.000' AS DateTime))
INSERT [dbo].[ThongTinPhieuXuat] ([Id], [IdSanPham], [IdPhieuXuat], [IdKhachHang], [SoLuong], [GhiChu]) VALUES (N'1', N'1', N'1', 1, 1, NULL)
INSERT [dbo].[ThongTinPhieuXuat] ([Id], [IdSanPham], [IdPhieuXuat], [IdKhachHang], [SoLuong], [GhiChu]) VALUES (N'2', N'2', N'2', 2, 2, NULL)
INSERT [dbo].[ThongTinPhieuXuat] ([Id], [IdSanPham], [IdPhieuXuat], [IdKhachHang], [SoLuong], [GhiChu]) VALUES (N'3', N'2', N'2', 2, 3, NULL)
ALTER TABLE [dbo].[NhaCungCap] ADD  CONSTRAINT [NhaCungCap_Xoa]  DEFAULT ((0)) FOR [Xoa]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [SanPham_HinhAnh]  DEFAULT ('Assets/lgg7.jpg') FOR [HinhAnh]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [SanPham_Xoa]  DEFAULT ((0)) FOR [Xoa]
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap] ADD  DEFAULT ((0)) FOR [GiaXuat]
GO
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD FOREIGN KEY([QuyenNguoiDung])
REFERENCES [dbo].[QuyenNguoiDung] ([Id])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([IdNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([Id])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[ThongTinPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHang] SET  READ_WRITE 
GO
