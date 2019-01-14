USE [master]
GO
/****** Object:  Database [QuanLyCuaHang]    Script Date: 1/12/2019 1:41:38 PM ******/
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
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/12/2019 1:41:38 PM ******/
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
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 1/12/2019 1:41:38 PM ******/
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
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/12/2019 1:41:38 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 1/12/2019 1:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[Id] [nvarchar](128) NOT NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 1/12/2019 1:41:39 PM ******/
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
/****** Object:  Table [dbo].[QuyenNguoiDung]    Script Date: 1/12/2019 1:41:39 PM ******/
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
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/12/2019 1:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [nvarchar](10) NOT NULL,
	[Ten] [nvarchar](max) NULL,
	[IdNhaCungCap] [int] NULL,
	[HangSanXuat] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinPhieuNhap]    Script Date: 1/12/2019 1:41:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinPhieuNhap](
	[Id] [nvarchar](128) NOT NULL,
	[IdSanPham] [nvarchar](10) NOT NULL,
	[IdPhieuNhap] [nvarchar](128) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [float] NULL,
	[GiaXuat] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinPhieuXuat]    Script Date: 1/12/2019 1:41:39 PM ******/
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
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([Id], [Ten], [TaiKhoan], [MatKhau], [QuyenNguoiDung]) VALUES (1, N'Nguyễn Văn A', N'admin', N'123', 1)
INSERT [dbo].[NguoiDung] ([Id], [Ten], [TaiKhoan], [MatKhau], [QuyenNguoiDung]) VALUES (2, N'Nguyễn B', N'nhanvien01', N'1234', 2)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([Id], [Ten], [DiaChi], [DienThoai], [Email], [ThongTin], [NgayHopTac]) VALUES (1, N'a', N'a', N'1', N'a', N'a', CAST(N'2012-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
INSERT [dbo].[PhieuNhap] ([Id], [NgayNhap]) VALUES (N'1', CAST(N'1998-01-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[QuyenNguoiDung] ON 

INSERT [dbo].[QuyenNguoiDung] ([Id], [Ten]) VALUES (1, N'Admin')
INSERT [dbo].[QuyenNguoiDung] ([Id], [Ten]) VALUES (2, N'Nhân viên')
SET IDENTITY_INSERT [dbo].[QuyenNguoiDung] OFF
INSERT [dbo].[SanPham] ([Id], [Ten], [IdNhaCungCap], [HangSanXuat], [SoLuong], [HinhAnh]) VALUES (N'1', N'b', 1, N'a', 3, N'faf')
INSERT [dbo].[ThongTinPhieuNhap] ([Id], [IdSanPham], [IdPhieuNhap], [SoLuong], [GiaNhap], [GiaXuat]) VALUES (N'a', N'1', N'1', 3, 12, 12)
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
ALTER TABLE [dbo].[ThongTinPhieuNhap]  WITH CHECK ADD FOREIGN KEY([IdPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdSanPham])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdKhachHang])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[ThongTinPhieuXuat]  WITH CHECK ADD FOREIGN KEY([IdPhieuXuat])
REFERENCES [dbo].[PhieuXuat] ([Id])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHang] SET  READ_WRITE 
GO
