USE [QL_SIEUTHI3]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [nchar](15) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPNH]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPNH](
	[MaPNH] [nchar](25) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[SoLuong] [nchar](10) NULL,
	[DonGia] [money] NULL,
 CONSTRAINT [PK_ChiTietPNH] PRIMARY KEY CLUSTERED 
(
	[MaPNH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTNhomSanPhamKM]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTNhomSanPhamKM](
	[MaNhomSP] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ChiTietKM] PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DM_ManHinh]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM_ManHinh](
	[MaMH] [nchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
 CONSTRAINT [PK_DM_ManHinh] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nchar](15) NOT NULL,
	[NgayLap] [datetime] NULL,
	[TichDiem] [int] NULL,
	[TienGiam] [money] NULL,
	[TongTien] [money] NULL,
	[MaKH] [nchar](10) NULL,
	[MaND] [varchar](50) NULL,
	[TienNhan] [money] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nchar](50) NULL,
	[DiemTichLuy] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [varchar](50) NOT NULL,
	[TenKM] [nvarchar](100) NOT NULL,
	[MaNhomSPMua] [varchar](50) NOT NULL,
	[MaNhomSPTang] [varchar](50) NULL,
	[SLMua] [int] NOT NULL,
	[SLTang] [int] NULL,
	[GiaGiam] [float] NOT NULL,
	[NgayBD] [datetime] NOT NULL,
	[NgayKT] [datetime] NOT NULL,
	[DonViGiam] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [nchar](10) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [varchar](50) NOT NULL,
	[TenTK] [varchar](50) NULL,
	[TenND] [nvarchar](50) NULL,
	[MatKhau] [varchar](100) NULL,
	[HoatDong] [int] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung_NhomNguoiDung]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung_NhomNguoiDung](
	[MaND] [varchar](50) NOT NULL,
	[MaNhom] [nchar](10) NOT NULL,
	[GhiChu] [nchar](10) NULL,
 CONSTRAINT [PK_NguoiDung_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC,
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[SDT] [nchar](10) NULL,
	[Email] [nchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Website] [nchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomNguoiDung]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomNguoiDung](
	[MaNhom] [nchar](10) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomNguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSanPhamKM]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSanPhamKM](
	[MaNhomSP] [varchar](50) NOT NULL,
	[LoaiNhom] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhomSanPhamKM] PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaNhom] [nchar](10) NOT NULL,
	[MaMH] [nchar](10) NOT NULL,
	[CoQuyen] [int] NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapHang]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapHang](
	[MaPNH] [nchar](25) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[TongTien] [money] NULL,
	[MaNCC] [nchar](10) NULL,
	[MaND] [varchar](50) NULL,
 CONSTRAINT [PK_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[MaPNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](50) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[GiaBan] [money] NULL,
	[SLTon] [int] NULL,
	[NgaySX] [datetime] NULL,
	[HSD] [datetime] NULL,
	[KichCo] [float] NULL,
	[MauSac] [nvarchar](50) NULL,
	[MaLoai] [nchar](10) NULL,
	[MaTH] [nchar](10) NULL,
	[HinhAnh] [varchar](50) NULL,
	[GiaNhap] [money] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHIeu]    Script Date: 10/12/2024 11:20:19 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHIeu](
	[MaTH] [nchar](10) NOT NULL,
	[TenTH] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHIeu] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224154841 ', N'SP004     ', 3, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224154841 ', N'SP005     ', 1, 60000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224154841 ', N'SP007     ', 4, 700000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162146 ', N'SP002     ', 4, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162146 ', N'SP003     ', 4, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162146 ', N'SP005     ', 1, 60000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162637 ', N'SP002     ', 4, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162637 ', N'SP003     ', 4, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD021224162637 ', N'SP004     ', 2, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224075916 ', N'SP002     ', 4, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224075916 ', N'SP004     ', 3, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224151317 ', N'SP017', 3, 15000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224151317 ', N'SP018', 3, 8000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224151317 ', N'SP019', 2, 12000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224151349 ', N'SP015', 3, 12000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD031224151349 ', N'SP016', 2, 36000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD091124-0001  ', N'SP002     ', 2, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD091124-0002  ', N'SP002     ', 2, 30000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010828 ', N'SP015', 1, 12000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010828 ', N'SP030', 1, 65000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010828 ', N'SP035', 1, 210000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010851 ', N'SP025', 2, 84000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010851 ', N'SP029', 1, 65000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010851 ', N'SP034', 1, 144000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010903 ', N'SP001', 2, 8000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010903 ', N'SP010', 2, 22000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010903 ', N'SP021', 1, 244000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224010903 ', N'SP032', 2, 193000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224011140 ', N'SP001', 4, 8000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224011140 ', N'SP003     ', 2, 8000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224011140 ', N'SP030', 1, 65000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224012024 ', N'SP006', 4, 10900.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224012024 ', N'SP007     ', 1, 10900.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224012024 ', N'SP009', 1, 10200.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224013616 ', N'SP012', 1, 8000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224013616 ', N'SP013', 2, 10000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (N'HD101224013616 ', N'SP020', 1, 10200.0000)
GO
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_001     ', N'SP002     ', N'1         ', 30000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_001     ', N'SP005     ', N'2         ', 60000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_002     ', N'SP002     ', N'4         ', 30000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_002     ', N'SP005     ', N'2         ', 60000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_002     ', N'SP007     ', N'2         ', 700000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_021224_002     ', N'SP009', N'2         ', 30000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_081124_001     ', N'SP002     ', N'1         ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_081124_001     ', N'SP003     ', N'2         ', 23000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC001_081124-002     ', N'SP002     ', N'1         ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP008', N'100       ', 10200.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP009', N'100       ', 10200.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP010', N'100       ', 22000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP011', N'100       ', 22000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP012', N'100       ', 8000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP013', N'100       ', 10000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP014', N'100       ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_001     ', N'SP015', N'100       ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_002     ', N'SP001', N'100       ', 8000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_002     ', N'SP002     ', N'100       ', 244000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_002     ', N'SP003     ', N'100       ', 8000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_002     ', N'SP006', N'100       ', 10900.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC003_101224_002     ', N'SP007     ', N'100       ', 10900.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_021224_001     ', N'SP002     ', N'10        ', 30000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_021224_001     ', N'SP005     ', N'3         ', 60000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_021224_001     ', N'SP007     ', N'3         ', 700000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP018', N'100       ', 8000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP025', N'100       ', 84000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP026', N'100       ', 84000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP031', N'100       ', 193000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP032', N'100       ', 193000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP033', N'100       ', 122000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP034', N'100       ', 144000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC004_101224_001     ', N'SP035', N'100       ', 210000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_001     ', N'SP021', N'100       ', 244000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_001     ', N'SP022', N'100       ', 241000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_001     ', N'SP023', N'100       ', 241000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_001     ', N'SP024', N'100       ', 241000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_002     ', N'SP015', N'100       ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_002     ', N'SP016', N'100       ', 36000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_002     ', N'SP017', N'100       ', 15000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_002     ', N'SP019', N'100       ', 12000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC005_101224_002     ', N'SP020', N'100       ', 10200.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC006_101224_001     ', N'SP027', N'100       ', 65000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC006_101224_001     ', N'SP028', N'100       ', 65000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC006_101224_001     ', N'SP029', N'100       ', 65000.0000)
INSERT [dbo].[ChiTietPNH] ([MaPNH], [MaSP], [SoLuong], [DonGia]) VALUES (N'PN_NCC006_101224_001     ', N'SP030', N'100       ', 65000.0000)
GO
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0001', N'SP003     ')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0001', N'SP004     ')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0002', N'SP003     ')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0003', N'SP002     ')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0004', N'SP002     ')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0005', N'SP016')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0005', N'SP017')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0006', N'SP004')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0006', N'SP011')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0007', N'SP022')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0007', N'SP023')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0007', N'SP024')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0009', N'SP027')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0009', N'SP028')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0009', N'SP029')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0009', N'SP030')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0010', N'SP027')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0010', N'SP028')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0010', N'SP029')
INSERT [dbo].[CTNhomSanPhamKM] ([MaNhomSP], [MaSP]) VALUES (N'NSPKM0010', N'SP030')
GO
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH01      ', N'Tổng quan')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH02      ', N'Loại sản phẩm')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH03      ', N'Thương hiệu')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH04      ', N'Khách hàng')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH05      ', N'Nhà cung cấp')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH06      ', N'Sản phẩm')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH07      ', N'Nhập hàng')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH08      ', N'Bán hàng')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH09      ', N'Khuyến mãi')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH10      ', N'Báo cáo')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH11      ', N'Hệ thống')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH12      ', N'Dự đoán doanh thu')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH13      ', N'Người Dùng')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH14      ', N'Nhóm Người Dùng')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH15      ', N'Màn Hình')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH16      ', N'Phân Quyền')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH17      ', N'Vai Trò')
INSERT [dbo].[DM_ManHinh] ([MaMH], [TenMH]) VALUES (N'MH18      ', N'Thống kê')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD021224154841 ', CAST(N'2024-12-02T15:48:41.000' AS DateTime), 295000, 0.0000, 2950000.0000, N'KH015     ', N'ND001     ', 3000000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD021224162146 ', CAST(N'2024-12-02T16:21:46.000' AS DateTime), NULL, 0.0000, 300000.0000, NULL, N'ND001     ', 230000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD021224162637 ', CAST(N'2024-12-02T16:26:37.000' AS DateTime), NULL, 0.0000, 300000.0000, NULL, N'ND001     ', 230000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD031224075916 ', CAST(N'2024-12-03T07:59:16.000' AS DateTime), NULL, 0.0000, 210000.0000, NULL, N'ND001', 200000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD031224151317 ', CAST(N'2024-12-03T15:13:17.000' AS DateTime), NULL, 0.0000, 93000.0000, NULL, N'ND001', 100000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD031224151349 ', CAST(N'2024-12-03T15:13:49.000' AS DateTime), 0, 100.0000, 108000.0000, N'KH006     ', N'ND001', 110000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD091124-0001  ', CAST(N'2024-11-09T10:06:33.000' AS DateTime), NULL, NULL, 60000.0000, NULL, N'ND001     ', 60000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD091124-0002  ', CAST(N'2024-11-09T10:48:10.000' AS DateTime), 6000, NULL, 60000.0000, N'KH001     ', N'ND001     ', 60000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224010828 ', CAST(N'2024-12-10T01:08:28.000' AS DateTime), NULL, 0.0000, 287000.0000, NULL, N'ND001', 300000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224010851 ', CAST(N'2024-12-10T01:08:51.000' AS DateTime), NULL, 0.0000, 377000.0000, NULL, N'ND001', 377000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224010903 ', CAST(N'2024-12-10T01:09:03.000' AS DateTime), NULL, 0.0000, 690000.0000, NULL, N'ND001', 700000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224011140 ', CAST(N'2024-12-10T01:11:40.000' AS DateTime), NULL, 0.0000, 113000.0000, NULL, N'ND001', 120000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224012024 ', CAST(N'2024-12-10T01:20:24.000' AS DateTime), NULL, 0.0000, 64700.0000, NULL, N'ND001', 70000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [TichDiem], [TienGiam], [TongTien], [MaKH], [MaND], [TienNhan]) VALUES (N'HD101224013616 ', CAST(N'2024-12-10T01:36:16.000' AS DateTime), NULL, 0.0000, 38200.0000, NULL, N'ND001', 38200.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH001     ', N'Trương Lê Bảo Trân', N'0916649072', N'truonglebaotran@gmail.com                         ', 100)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH002     ', N'Phan Thế Thanh', N'0916649073', N'phanthethanh@gmail.com                            ', 100)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH005     ', N'Trương Lê Bảo Trân', N'0916649072', N'truonglebaotran@gmail.com                         ', 100)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH006     ', N'Phan Thế Thanh', N'0916649073', N'phanthethanh@gmail.com                            ', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH010     ', N'Thanh', N'0456123789', N'thanh@gmail.com                                   ', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [Email], [DiemTichLuy]) VALUES (N'KH015     ', N'thanhcuete', N'0123456789', N'thanh@gmail.com                                   ', 295000)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MaNhomSPMua], [MaNhomSPTang], [SLMua], [SLTang], [GiaGiam], [NgayBD], [NgayKT], [DonViGiam]) VALUES (N'KM0001', N'Khuyến mãi hót hòn họt-Mua2 tặng 1', N'NSPKM0001', N'NSPKM0002', 2, 1, 30000, CAST(N'2024-11-30T12:52:03.397' AS DateTime), CAST(N'2024-12-01T12:52:03.000' AS DateTime), N'Tiền')
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MaNhomSPMua], [MaNhomSPTang], [SLMua], [SLTang], [GiaGiam], [NgayBD], [NgayKT], [DonViGiam]) VALUES (N'KM0002', N'Khuyến mãi mua 1 tặng 1', N'NSPKM0003', N'NSPKM0004', 1, 1, 30000, CAST(N'2024-11-30T12:55:16.973' AS DateTime), CAST(N'2024-12-05T12:55:16.000' AS DateTime), N'Tiền')
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MaNhomSPMua], [MaNhomSPTang], [SLMua], [SLTang], [GiaGiam], [NgayBD], [NgayKT], [DonViGiam]) VALUES (N'KM0003', N'Khuyến mãi giảm tiền', N'NSPKM0002', NULL, 1, NULL, 3000, CAST(N'2024-11-30T12:55:16.973' AS DateTime), CAST(N'2024-12-05T12:55:16.000' AS DateTime), N'Tiền')
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MaNhomSPMua], [MaNhomSPTang], [SLMua], [SLTang], [GiaGiam], [NgayBD], [NgayKT], [DonViGiam]) VALUES (N'KM0004', N'KM Mua 2 thùng mì giá chỉ 400K', N'NSPKM0007', N'NSPKM0008', 2, NULL, 82000, CAST(N'2024-12-10T07:23:44.800' AS DateTime), CAST(N'2024-12-29T07:23:44.000' AS DateTime), N'Tiền')
INSERT [dbo].[KhuyenMai] ([MaKM], [TenKM], [MaNhomSPMua], [MaNhomSPTang], [SLMua], [SLTang], [GiaGiam], [NgayBD], [NgayKT], [DonViGiam]) VALUES (N'KM0005', N'KM Mua 2 KĐR tặng 1 cùng loại', N'NSPKM0009', N'NSPKM0010', 2, 1, 65000, CAST(N'2024-12-10T07:34:21.443' AS DateTime), CAST(N'2024-12-29T07:34:21.000' AS DateTime), N'Tiền')
GO
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L001      ', N'Thức ăn nhanh')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L01       ', N'Bột giặt')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L02       ', N'Nước lau sàn')
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai]) VALUES (N'L03       ', N'Nước rửa chén')
GO
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND001', N'BaoTran', N'Bảo Trân', N'Thanhdzai123@', 1)
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND002', N'TheThanh', N'Thế Thanh', N'Thanh123@                                         ', 1)
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND003', N'BaoTranhaha', N'Bảo Bảo', N'Tran123456@', 1)
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND004', N'Baobao123', N'TRân', N'Tran123456@', 1)
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND008    ', N'BaoTran                                           ', N'BaoTran', N'Baotran@123                                       ', 1)
INSERT [dbo].[NguoiDung] ([MaND], [TenTK], [TenND], [MatKhau], [HoatDong]) VALUES (N'ND009     ', N'Test                                              ', N'Test2', N'Test                                              ', 1)
GO
INSERT [dbo].[NguoiDung_NhomNguoiDung] ([MaND], [MaNhom], [GhiChu]) VALUES (N'ND001     ', N'Nhom01    ', N'          ')
INSERT [dbo].[NguoiDung_NhomNguoiDung] ([MaND], [MaNhom], [GhiChu]) VALUES (N'ND001     ', N'Nhom02    ', NULL)
INSERT [dbo].[NguoiDung_NhomNguoiDung] ([MaND], [MaNhom], [GhiChu]) VALUES (N'ND002', N'Nhom01    ', NULL)
INSERT [dbo].[NguoiDung_NhomNguoiDung] ([MaND], [MaNhom], [GhiChu]) VALUES (N'ND003', N'Nhom03    ', NULL)
INSERT [dbo].[NguoiDung_NhomNguoiDung] ([MaND], [MaNhom], [GhiChu]) VALUES (N'ND004', N'Nhom04    ', NULL)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC001    ', N'Công ty CP Acecook Việt Nam', N'0916649073', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC002    ', N'Công ty TNHH Dầu thực vật Cái Lân', N'0916649072', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC003    ', N'Công Ty CP Kỹ Nghệ Thực Phẩm Việt Nam (VIFON)', N'0916649076', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC004    ', N'Hệ thống chuỗi cửa hàng HT Sài Gòn', N'0916649074', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC005    ', N'Công ty Sản phẩm Thực phẩm Á Châu', N'0154782369', N'Thanh@gmail.com                                   ', N'TP HCM', N'http://websiteMyPham.com                          ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC006    ', N'Công ty Việt Thành', N'0916649075', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC007    ', N'Công Ty Cổ Phần Thực Phẩm Sao Ta (Fimex)', N'0916649085', N'Tran@gmail.com                                    ', N'Vũng Tàu', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC008    ', N'Công ty Cổ phần Bánh kẹo Hải Hà', N'0916649072', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC009    ', N'Công ty TNHH Bảo Trân', N'0916649073', N'TRAM@GMAIL.COM                                    ', N'LONG AN', N'HTTP://HUHU                                       ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC010    ', N'Công ty MTV Tiến Phát', N'0916649072', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email], [DiaChi], [Website]) VALUES (N'NCC011    ', N'Công ty TNHH Lương Kiều', N'0916649072', N'Tran@gmail.com                                    ', N'LOng An', N'http://website.com                                ')
GO
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'Nhom01    ', N'Quản lý', N'')
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'Nhom02    ', N'Nhân viên thu ngân', N'')
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'Nhom03    ', N'Nhân viên kho', NULL)
INSERT [dbo].[NhomNguoiDung] ([MaNhom], [TenNhom], [GhiChu]) VALUES (N'Nhom04    ', N'Bộ phận kinh doanh', NULL)
GO
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0001', N'Nhóm mua')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0002', N'Nhóm tặng')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0003', N'Nhóm mua')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0004', N'Nhóm tặng')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0005', N'Nhóm mua')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0006', N'Nhóm tặng')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0007', N'Nhóm mua')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0008', N'Nhóm tặng')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0009', N'Nhóm mua')
INSERT [dbo].[NhomSanPhamKM] ([MaNhomSP], [LoaiNhom]) VALUES (N'NSPKM0010', N'Nhóm tặng')
GO
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH01      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH02      ', 0)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH03      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH04      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH05      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH06      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH07      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH08      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH09      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH10      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH11      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH12      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH13      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH14      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH15      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH16      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH17      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom01    ', N'MH18      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom02    ', N'MH04      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom02    ', N'MH08      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom02    ', N'MH10      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom03    ', N'MH02      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom03    ', N'MH06      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom03    ', N'MH07      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom04    ', N'MH03      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom04    ', N'MH05      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom04    ', N'MH09      ', 1)
INSERT [dbo].[PhanQuyen] ([MaNhom], [MaMH], [CoQuyen]) VALUES (N'Nhom04    ', N'MH10      ', 1)
GO
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC001_021224_001     ', CAST(N'2024-12-02T02:45:41.000' AS DateTime), 150000.0000, N'NCC001    ', N'ND001     ')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC001_021224_002     ', CAST(N'2024-12-02T14:55:28.000' AS DateTime), 1700000.0000, N'NCC001    ', N'ND001     ')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC001_081124_001     ', CAST(N'2024-11-08T17:56:02.000' AS DateTime), 58000.0000, N'NCC001    ', N'ND001     ')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC001_081124-002     ', CAST(N'2024-11-08T18:02:15.000' AS DateTime), 12000.0000, N'NCC001    ', N'ND001     ')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC003_101224_001     ', CAST(N'2024-12-10T00:58:59.000' AS DateTime), 10640000.0000, N'NCC003    ', N'ND001')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC003_101224_002     ', CAST(N'2024-12-10T00:59:35.000' AS DateTime), 28180000.0000, N'NCC003    ', N'ND001')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC004_021224_001     ', CAST(N'2024-12-02T01:20:34.000' AS DateTime), 2580000.0000, N'NCC004    ', N'ND001     ')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC004_101224_001     ', CAST(N'2024-12-10T00:51:55.000' AS DateTime), 103800000.0000, N'NCC004    ', N'ND001')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC005_101224_001     ', CAST(N'2024-12-10T00:55:28.000' AS DateTime), 96700000.0000, N'NCC005    ', N'ND001')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC005_101224_002     ', CAST(N'2024-12-10T00:57:47.000' AS DateTime), 8520000.0000, N'NCC005    ', N'ND001')
INSERT [dbo].[PhieuNhapHang] ([MaPNH], [NgayNhap], [TongTien], [MaNCC], [MaND]) VALUES (N'PN_NCC006_101224_001     ', CAST(N'2024-12-10T00:54:23.000' AS DateTime), 26000000.0000, N'NCC006    ', N'ND001')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP001', N'Phở gà Đệ Nhất', 8000.0000, 244, CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 0.07, N'Vàng', N'L001      ', N'TH01      ', N'SP001.png', 3000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP002     ', N'Thùng 18 hộp mì Omachi khoai tây xốt bò hầm', 244000.0000, 132, CAST(N'2024-10-02T00:00:00.000' AS DateTime), CAST(N'2024-10-20T00:00:00.000' AS DateTime), 0.07, N'Đỏ', N'L001      ', N'TH01      ', N'SP002.png', 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP003     ', N'Phở bò ăn liền Đệ Nhất Vina Acecook', 8000.0000, 135, CAST(N'2024-10-20T00:00:00.000' AS DateTime), CAST(N'2024-10-20T00:00:00.000' AS DateTime), 0.07, N'Đỏ', N'L001      ', N'TH01      ', N'SP003.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP004     ', N'Nước lau sàn', 30000.0000, 32, CAST(N'2024-10-27T00:00:00.000' AS DateTime), CAST(N'2024-10-31T00:00:00.000' AS DateTime), 0.03, N'Xanh lá', N'L02       ', N'TH01      ', N'SP004.jpg', 20000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP005     ', N'Bột giặt Select', 60000.0000, 32, CAST(N'2020-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0.006, N'Hồng', N'L01       ', N'TH02      ', N'SP005.jpg', 30000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP006', N'Phở Có Gói Xốt Thịt Vị Gà', 10900.0000, 186, CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), 1, N'Đỏ', N'L001      ', N'TH02      ', N'SP006.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP007     ', N'Phở Có Gói Xốt Thịt Vị Bò', 10900.0000, 132, CAST(N'2024-11-07T00:00:00.000' AS DateTime), CAST(N'2024-11-07T00:00:00.000' AS DateTime), 0.07, N'Hường', N'L001      ', N'TH01      ', N'SP007.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP008', N'Cháo thịt bò Vifon', 10200.0000, 100, CAST(N'2024-12-02T00:00:00.000' AS DateTime), CAST(N'2024-12-02T00:00:00.000' AS DateTime), 5, N'Hồng', N'L001      ', N'TH01      ', N'SP008.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP009', N'Cháo thịt gà Vifon', 10200.0000, 105, CAST(N'2024-12-02T00:00:00.000' AS DateTime), CAST(N'2024-12-13T00:00:00.000' AS DateTime), 70, N'Vàng', N'L001      ', N'TH01      ', N'SP009.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP010', N'Mì xào NISSIN hương vị gà cay', 22000.0000, 98, CAST(N'2024-12-02T00:00:00.000' AS DateTime), CAST(N'2024-12-02T00:00:00.000' AS DateTime), 22, N'Đen', N'L001      ', N'TH01      ', N'SP010.PNG', 10000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP011', N'Topokki cay ngọt Young Poong', 22000.0000, 250, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2025-03-01T00:00:00.000' AS DateTime), 1, N'Trng', N'L001      ', N'TH01      ', N'SP011.PNG', 18000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP012', N'Mì Cung Đình Micoem vị lẩu tôm', 8000.0000, 219, CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, N'Xanh lá', N'L001      ', N'TH01      ', N'SP012.PNG', 2000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP013', N'Miến lẩu Thái Vifon', 10000.0000, 158, CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, N'Nâu', N'L001      ', N'TH02      ', N'SP013.PNG', 5000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP014', N'Mì vị bò cay Koreno Paldo', 12000.0000, 350, CAST(N'2023-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 1, N'Vàng', N'L001      ', N'TH01      ', N'SP014.jpg', 5000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP015', N'Koreno Mì hải sản cay Premium', 12000.0000, 296, CAST(N'2023-04-01T00:00:00.000' AS DateTime), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, N'Vàng', N'L001      ', N'TH03      ', N'SP015.jpg', 5000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP016', N'Bánh gạo cay ngọt Young Poong', 36000.0000, 228, CAST(N'2023-06-01T00:00:00.000' AS DateTime), CAST(N'2025-06-01T00:00:00.000' AS DateTime), 0.03, N'Vàng', N'L001      ', N'TH01      ', N'SP016.PNG', 20000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP017', N'Phô mai Vinamilk hộp 120g (8 miếng)', 15000.0000, 177, CAST(N'2023-08-01T00:00:00.000' AS DateTime), CAST(N'2024-08-01T00:00:00.000' AS DateTime), 0.5, N'Trắng', N'L03       ', N'TH02      ', N'SP017.jpg', 12000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP018', N'Dầu gội hương nước hoa Romano', 8000.0000, 277, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2024-03-01T00:00:00.000' AS DateTime), 1, N'Xanh', N'L01       ', N'TH03      ', N'SP018.jpg', 60000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP019', N'Dầu ăn Tường An can 5L', 12000.0000, 158, CAST(N'2023-07-01T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 3, N'vàng', N'L02       ', N'TH02      ', N'SP019.jpg', 8000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP020', N'Cháo thịt bằm Vifon', 10200.0000, 189, CAST(N'2023-05-01T00:00:00.000' AS DateTime), CAST(N'2024-05-01T00:00:00.000' AS DateTime), 0.07, N'Đỏ', N'L001      ', N'TH02      ', N'SP020.png', 6000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP021', N'Thùng 18 hộp mì Omachi sườn hầm ngũ quả', 244000.0000, 99, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.1, N'Tím', N'L001      ', N'TH01      ', N'SP021.png', 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP022', N'Thùng 30 gói mì khoai tây vị cua bể rau răm Cung Đình', 241000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.08, N'Đỏ', N'L001      ', N'TH01      ', N'SP022.png', 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP023', N'Thùng 30 gói mì ăn liền khoai tây Cung Đình Micoem vị sườn heo hầm măng', 241000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.08, N'Hồng', N'L001      ', N'TH01      ', N'SP023.png', 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP024', N'Thùng 30 gói mì ăn liền khoai tây Cung Đình Micoem vị gà hầm', 241000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.08, N'Vàng', N'L001      ', N'TH01      ', N'SP024.png', 190000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP025', N'Dầu xả Sunsilk óng mượt rạng ngời ', 84000.0000, 98, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.32, N'Đen', N'L01       ', N'TH02      ', N'SP025.png', 50000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP026', N'Dầu xả Sunsilk mềm mượt diệu kỳ', 84000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.32, N'Vàng', N'L01       ', N'TH02      ', N'SP026.png', 50000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP027', N'Kem đánh răng Sensodyne cool gel', 65000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.1, N'Trắng', N'L01       ', N'TH02      ', N'SP027.png', 40000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP028', N'Kem đánh răng Sensodyne Freshmint', 65000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.1, N'Trắng', N'L01       ', N'TH02      ', N'SP028.png', 40000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP029', N'Kem đánh răng Sensodyne Gentle Whitening', 65000.0000, 99, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.1, N'Trắng', N'L01       ', N'TH02      ', N'SP029.png', 40000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP030', N'Kem đánh răng Sensodyne Multi Care', 65000.0000, 98, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.1, N'Trắng', N'L01       ', N'TH02      ', N'SP030.png', 40000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP031', N'Dầu gội nước hoa X-men Active', 193000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.65, N'Xanh', N'L01       ', N'TH02      ', N'SP031.png', 150000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP032', N'Dầu gội nước hoa X-men Sport', 193000.0000, 98, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.65, N'Xanh', N'L01       ', N'TH02      ', N'SP032.png', 150000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP033', N'Dầu gội cao cấp Romano classic', 122000.0000, 100, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.38, N'Xanh đen', N'L01       ', N'TH02      ', N'SP033.png', 80000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP034', N'Dầu gội nước hoa X-men For Boss Perfumed Shampoo Fragrance', 144000.0000, 99, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.38, N'Đen', N'L01       ', N'TH02      ', N'SP034.png', 10000.0000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [SLTon], [NgaySX], [HSD], [KichCo], [MauSac], [MaLoai], [MaTH], [HinhAnh], [GiaNhap]) VALUES (N'SP035', N'Dầu gội X-men For Boss Perfumed Shampoo', 210000.0000, 99, CAST(N'2024-12-08T00:00:00.000' AS DateTime), CAST(N'2024-12-08T00:00:00.000' AS DateTime), 0.65, N'Đen', N'L01       ', N'TH02      ', N'SP035.png', 190000.0000)
GO
INSERT [dbo].[ThuongHIeu] ([MaTH], [TenTH]) VALUES (N'TH01      ', N'Aba')
INSERT [dbo].[ThuongHIeu] ([MaTH], [TenTH]) VALUES (N'TH02      ', N'Omo')
INSERT [dbo].[ThuongHIeu] ([MaTH], [TenTH]) VALUES (N'TH03      ', N'Okela')
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPNH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPNH_PhieuNhapHang] FOREIGN KEY([MaPNH])
REFERENCES [dbo].[PhieuNhapHang] ([MaPNH])
GO
ALTER TABLE [dbo].[ChiTietPNH] CHECK CONSTRAINT [FK_ChiTietPNH_PhieuNhapHang]
GO
ALTER TABLE [dbo].[ChiTietPNH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPNH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPNH] CHECK CONSTRAINT [FK_ChiTietPNH_SanPham]
GO
ALTER TABLE [dbo].[CTNhomSanPhamKM]  WITH CHECK ADD  CONSTRAINT [FK_CTNhomSanPhamKM_NhomSanPhamKM] FOREIGN KEY([MaNhomSP])
REFERENCES [dbo].[NhomSanPhamKM] ([MaNhomSP])
GO
ALTER TABLE [dbo].[CTNhomSanPhamKM] CHECK CONSTRAINT [FK_CTNhomSanPhamKM_NhomSanPhamKM]
GO
ALTER TABLE [dbo].[CTNhomSanPhamKM]  WITH CHECK ADD  CONSTRAINT [FK_CTNhomSanPhamKM_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTNhomSanPhamKM] CHECK CONSTRAINT [FK_CTNhomSanPhamKM_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_NhomSanPhamKM] FOREIGN KEY([MaNhomSPMua])
REFERENCES [dbo].[NhomSanPhamKM] ([MaNhomSP])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_NhomSanPhamKM]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_NhomSanPhamKM1] FOREIGN KEY([MaNhomSPTang])
REFERENCES [dbo].[NhomSanPhamKM] ([MaNhomSP])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_NhomSanPhamKM1]
GO
ALTER TABLE [dbo].[NguoiDung_NhomNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhomNguoiDung_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[NguoiDung_NhomNguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhomNguoiDung_NguoiDung]
GO
ALTER TABLE [dbo].[NguoiDung_NhomNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhomNguoiDung_NhomNguoiDung] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[NguoiDung_NhomNguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhomNguoiDung_NhomNguoiDung]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_DM_ManHinh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[DM_ManHinh] ([MaMH])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_DM_ManHinh]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_NhomNguoiDung] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomNguoiDung] ([MaNhom])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_NhomNguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NguoiDung]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHIeu] FOREIGN KEY([MaTH])
REFERENCES [dbo].[ThuongHIeu] ([MaTH])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHIeu]
GO
