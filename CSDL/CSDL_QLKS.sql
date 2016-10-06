USE [master]
GO
/****** Object:  Database [TTN_QuanLyKhachSan]    Script Date: 30/09/2016 3:22:48 PM ******/
CREATE DATABASE [TTN_QuanLyKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TTN_QuanLyKhachSan', FILENAME = N'F:\Hoc tap\Thuc tap nhom\TTN_QuanLyKhachSan\CSDL\TTN_QuanLyKhachSan.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TTN_QuanLyKhachSan_log', FILENAME = N'F:\Hoc tap\Thuc tap nhom\TTN_QuanLyKhachSan\CSDL\TTN_QuanLyKhachSan_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TTN_QuanLyKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [TTN_QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[tblDichVu]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDichVu](
	[MaDV] [nvarchar](10) NOT NULL,
	[TenDV] [nvarchar](50) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_tblDichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaPhieuThue] [nvarchar](10) NULL,
	[NgayVao] [date] NULL,
	[NgayRa] [date] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GT] [nvarchar](3) NULL,
	[SoDT] [nvarchar](20) NULL,
	[CMND] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLoaiPhong]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLoaiPhong](
	[MaLoaiPh] [nvarchar](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[CMND] [nchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuThue]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuThue](
	[MaPhieu] [nvarchar](10) NOT NULL,
	[MaKH] [nvarchar](10) NULL,
	[MaPh] [nvarchar](10) NULL,
	[MaPT] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblPhieuThue] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhong]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhong](
	[MaPh] [nvarchar](10) NOT NULL,
	[SoPhong] [nvarchar](10) NULL,
	[LoaiPhong] [nvarchar](10) NULL,
	[TrangThai] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPhong] PRIMARY KEY CLUSTERED 
(
	[MaPh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhuongThucThue]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhuongThucThue](
	[MaPT] [nvarchar](10) NOT NULL,
	[TenPT] [nvarchar](20) NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_tblPhuongThucThue] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSuDungDV]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSuDungDV](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaDV] [nvarchar](10) NOT NULL,
	[ThoiGian] [datetime] NOT NULL,
 CONSTRAINT [PK_tblSuDungDV] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDV] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[MaNV] [nvarchar](10) NOT NULL,
	[MatKhau] [nvarchar](20) NULL,
	[LoaiTK] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblPhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThietBi]    Script Date: 30/09/2016 3:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThietBi](
	[MaPh] [nvarchar](10) NOT NULL,
	[ThietBi] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[NhaSanXuat] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblVatDung] PRIMARY KEY CLUSTERED 
(
	[MaPh] ASC,
	[ThietBi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'ADMIN', N'Nguyễn Duy Hùng', CAST(0x8B1D0B00 AS Date), N'Nam', N'123456789 ', NULL, N'987654321 ')
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV001', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV002', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV003', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblNhanVien] ([MaNV], [TenNV], [NgaySinh], [GioiTinh], [CMND], [DiaChi], [SoDT]) VALUES (N'NV004', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'ADMIN', N'123456', N'1')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV001', N'abc123', N'1')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV002', N'123456', N'0')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV003', N'123456', N'1')
INSERT [dbo].[tblTaiKhoan] ([MaNV], [MatKhau], [LoaiTK]) VALUES (N'NV004', N'123456', N'1')
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblPhieuThue] FOREIGN KEY([MaPhieuThue])
REFERENCES [dbo].[tblPhieuThue] ([MaPhieu])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblPhieuThue]
GO
ALTER TABLE [dbo].[tblNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_tblNhanVien_tblPhanQuyen] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblTaiKhoan] ([MaNV])
GO
ALTER TABLE [dbo].[tblNhanVien] CHECK CONSTRAINT [FK_tblNhanVien_tblPhanQuyen]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblKhachHang]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblPhong] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhong] ([MaPh])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblPhong]
GO
ALTER TABLE [dbo].[tblPhieuThue]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuThue_tblPhuongThucThue] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhuongThucThue] ([MaPT])
GO
ALTER TABLE [dbo].[tblPhieuThue] CHECK CONSTRAINT [FK_tblPhieuThue_tblPhuongThucThue]
GO
ALTER TABLE [dbo].[tblSuDungDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSuDungDV_tblDichVu] FOREIGN KEY([MaDV])
REFERENCES [dbo].[tblDichVu] ([MaDV])
GO
ALTER TABLE [dbo].[tblSuDungDV] CHECK CONSTRAINT [FK_tblSuDungDV_tblDichVu]
GO
ALTER TABLE [dbo].[tblSuDungDV]  WITH CHECK ADD  CONSTRAINT [FK_tblSuDungDV_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tblSuDungDV] CHECK CONSTRAINT [FK_tblSuDungDV_tblHoaDon]
GO
ALTER TABLE [dbo].[tblThietBi]  WITH CHECK ADD  CONSTRAINT [FK_tblThietBi_tblPhong] FOREIGN KEY([MaPh])
REFERENCES [dbo].[tblPhong] ([MaPh])
GO
ALTER TABLE [dbo].[tblThietBi] CHECK CONSTRAINT [FK_tblThietBi_tblPhong]
GO
USE [master]
GO
ALTER DATABASE [TTN_QuanLyKhachSan] SET  READ_WRITE 
GO
