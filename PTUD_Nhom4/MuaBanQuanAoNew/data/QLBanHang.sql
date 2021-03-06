USE [QLBanHang]
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDBH]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Bán Hàng Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDBH]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaHDBH) FROM HDBanHang) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaHDBH, 3)) FROM HDBanHang
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'BH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'BH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDC]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Ca Làm Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDC]()
RETURNS VARCHAR(4)
AS
BEGIN
	DECLARE @ID VARCHAR(4)
	IF (SELECT COUNT(MaCa) FROM CaLam) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaCa, 3)) FROM CaLam
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'C00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'C0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDCL]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Chất Liệu Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDCL]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaCL) FROM ChatLieu) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaCL, 3)) FROM ChatLieu
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'CL00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'CL0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDCV]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Chức Vụ Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDCV]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaCV) FROM ChucVu) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaCV, 3)) FROM ChucVu
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'CV00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'CV0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDDH]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*Tạo Mã Dat Hang Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDDH]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaDH) FROM DatHang) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaDH, 3)) FROM DatHang
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'DH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'DH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDDM]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Danh Muc Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDDM]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaDanhMuc) FROM DanhMucSP) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaDanhMuc, 3)) FROM DanhMucSP
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'DM00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'DM0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDKC]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Chất Kich Co Động*/
CREATE FUNCTION [dbo].[AUTO_IDKC]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaKC) FROM KichCo) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaKC, 3)) FROM KichCo
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'KC00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'KC0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDKH]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Tạo Mã Khách Hàng Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDKH]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaKH) FROM KhachHang) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaKH, 3)) FROM KhachHang
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'KH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'KH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDMS]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Mau Sac Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDMS]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaMS) FROM MauSac) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaMS, 3)) FROM MauSac
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'MS00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'MS0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDNCC]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã NCC Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDNCC]()
RETURNS VARCHAR(6)
AS
BEGIN
	DECLARE @ID VARCHAR(6)
	IF (SELECT COUNT(MaNCC) FROM NhaCC) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaNCC, 3)) FROM NhaCC
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'NCC00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'NCC0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDNSX]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--/*Tạo Mã Nhập Hàng Tự Động*/
--CREATE FUNCTION AUTO_IDNH()
--RETURNS VARCHAR(5)
--AS
--BEGIN
--	DECLARE @ID VARCHAR(5)
--	IF (SELECT COUNT(MaHDNH) FROM HDNhapHang) = 0
--		SET @ID = '0'
--	ELSE
--		SELECT @ID = MAX(RIGHT(MaHDNH, 3)) FROM HDNhapHang
--		SELECT @ID = CASE
--			WHEN @ID >= 0 and @ID < 9 THEN 'NH00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
--			WHEN @ID >= 9 THEN 'NH0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
--		END
--	RETURN @ID
--END
--Go

--/*Thêm Mã Nhập Hàng Tự Động*/
--ALTER TABLE HDNhapHang
--add CONSTRAINT IDNH DEFAULT DBO.AUTO_IDNH() for MaHDNH
--Go



/*Tạo Mã Nhà Sản Xuất Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDNSX]()
RETURNS VARCHAR(6)
AS
BEGIN
	DECLARE @ID VARCHAR(6)
	IF (SELECT COUNT(MaNSX) FROM NhaSX) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaNSX, 3)) FROM NhaSX
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'NSX00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'NSX0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDNV]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*Tạo Mã Nhan Vien Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDNV]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaNV) FROM NhanVien) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaNV, 3)) FROM NhanVien
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'NV00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'NV0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  UserDefinedFunction [dbo].[AUTO_IDSP]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*Tạo Mã Sản Phẩm Tự Động*/
CREATE FUNCTION [dbo].[AUTO_IDSP]()
RETURNS VARCHAR(5)
AS
BEGIN
	DECLARE @ID VARCHAR(5)
	IF (SELECT COUNT(MaSP) FROM SanPham) = 0
		SET @ID = '0'
	ELSE
		SELECT @ID = MAX(RIGHT(MaSP, 3)) FROM SanPham
		SELECT @ID = CASE
			WHEN @ID >= 0 and @ID < 9 THEN 'SP00' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
			WHEN @ID >= 9 THEN 'SP0' + CONVERT(CHAR, CONVERT(INT, @ID) + 1)
		END
	RETURN @ID
END
GO
/****** Object:  Table [dbo].[CaLam]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLam](
	[MaCa] [varchar](40) NOT NULL,
	[Buoi] [nvarchar](25) NULL,
	[ThoiGianBatDau] [varchar](60) NULL,
	[ThoiGianKetThuc] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaCL] [varchar](40) NOT NULL,
	[TenCL] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [varchar](40) NOT NULL,
	[TenCV] [nvarchar](60) NOT NULL,
	[Luong] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_DatHang]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_DatHang](
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[MaDH] [varchar](40) NOT NULL,
	[MaSP] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CT_DatHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_HDBanHang]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HDBanHang](
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[MaHDBH] [varchar](40) NOT NULL,
	[MaSP] [varchar](40) NOT NULL,
 CONSTRAINT [PK_CT_HDBanHang] PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSP]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSP](
	[MaDanhMuc] [varchar](40) NOT NULL,
	[TenDanhMuc] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[MaDH] [varchar](40) NOT NULL,
	[MaNV] [varchar](40) NULL,
	[MaKH] [varchar](40) NULL,
	[NgayDH] [datetime] NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBanHang]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBanHang](
	[MaHDBH] [varchar](40) NOT NULL,
	[MaNV] [varchar](40) NULL,
	[MaKH] [varchar](40) NULL,
	[NgayLapHDBH] [datetime] NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](40) NOT NULL,
	[TenKH] [nvarchar](255) NOT NULL,
	[SDT] [varchar](30) NULL,
	[DiaChi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[MaKC] [varchar](40) NOT NULL,
	[TenKC] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[MaMS] [varchar](40) NOT NULL,
	[TenMS] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [varchar](40) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[DiaChi] [nvarchar](255) NOT NULL,
	[SDT] [varchar](20) NOT NULL,
	[Email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](40) NOT NULL,
	[MaCa] [varchar](40) NULL,
	[MaCV] [varchar](40) NULL,
	[TenNV] [nvarchar](255) NOT NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[CMND] [varchar](20) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [varchar](20) NULL,
	[NgaySinh] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSX]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSX](
	[MaNSX] [varchar](40) NOT NULL,
	[TenNSX] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](40) NOT NULL,
	[MaDanhMuc] [varchar](40) NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[MaMS] [varchar](40) NULL,
	[MaCL] [varchar](40) NULL,
	[MaNSX] [varchar](40) NULL,
	[MaKC] [varchar](40) NULL,
	[MaNCC] [varchar](40) NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[Anh] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/3/2021 3:57:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDN] [varchar](30) NOT NULL,
	[MatKhau] [varchar](25) NOT NULL,
	[Quyen] [varchar](50) NOT NULL,
	[MaNV] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLam] ([MaCa], [Buoi], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'C001', N'Sáng', N'8.00:AM', N'14.00PM')
INSERT [dbo].[CaLam] ([MaCa], [Buoi], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'C002', N'Chiều', N'14.00:PM', N'22.00PM')
GO
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL001', N'Cotton')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL002', N'Kaki')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL003', N'Jeans')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL004', N'Nỉ')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL005', N'len')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL006', N'Kate')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL007', N'lụa')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL008', N'Voan')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL009', N'Nylon')
INSERT [dbo].[ChatLieu] ([MaCL], [TenCL]) VALUES (N'CL010', N'Ren')
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Luong]) VALUES (N'CV001', N'Quản Lý', 20000000.0000)
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [Luong]) VALUES (N'CV002', N'Nhân Viên', 10000000.0000)
GO
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 300000.0000, N'BH001', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH001', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH001', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH002', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH002', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 200000.0000, N'BH002', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 300000.0000, N'BH002', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH003', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 200000.0000, N'BH003', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 300000.0000, N'BH003', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH003', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 200000.0000, N'BH004', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH004', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 300000.0000, N'BH004', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 700000.0000, N'BH004', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH005', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH005', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH005', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (5, 2000000.0000, N'BH005', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH006', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH006', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH006', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH006', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (9, 4950000.0000, N'BH007', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (16, 8000000.0000, N'BH008', N'SP015')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (8, 3200000.0000, N'BH008', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 1600000.0000, N'BH008', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH009', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (6, 3000000.0000, N'BH009', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 200000.0000, N'BH009', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH009', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (5, 2500000.0000, N'BH010', N'SP002')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 450000.0000, N'BH010', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH010', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH010', N'SP015')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1200000.0000, N'BH010', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH010', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2000000.0000, N'BH011', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH011', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH011', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH011', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH011', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2000000.0000, N'BH011', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 900000.0000, N'BH012', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 2100000.0000, N'BH012', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH012', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH012', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (6, 3000000.0000, N'BH012', N'SP022')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH012', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (5, 1500000.0000, N'BH013', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (8, 4000000.0000, N'BH013', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH013', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH013', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (5, 2750000.0000, N'BH014', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1800000.0000, N'BH014', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 600000.0000, N'BH014', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 900000.0000, N'BH014', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 450000.0000, N'BH015', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH015', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH015', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1800000.0000, N'BH015', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 300000.0000, N'BH016', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH016', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH016', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH016', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH017', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH017', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH017', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1800000.0000, N'BH017', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 1600000.0000, N'BH017', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1400000.0000, N'BH018', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH018', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH018', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH018', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH018', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 400000.0000, N'BH019', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1200000.0000, N'BH019', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1400000.0000, N'BH019', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH019', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 2100000.0000, N'BH020', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1200000.0000, N'BH020', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH020', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH020', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH021', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2400000.0000, N'BH021', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 900000.0000, N'BH021', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 1600000.0000, N'BH021', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH022', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 2100000.0000, N'BH022', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 1600000.0000, N'BH022', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2000000.0000, N'BH023', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH023', N'SP022')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH023', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH024', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH024', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH024', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH025', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH025', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH026', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH026', N'SP010')
GO
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 200000.0000, N'BH026', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH027', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH027', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH028', N'SP001')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH029', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH029', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH029', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH030', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH030', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH030', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH031', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1200000.0000, N'BH031', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH031', N'SP022')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH031', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH032', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH032', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 150000.0000, N'BH033', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH033', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 550000.0000, N'BH033', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH033', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 450000.0000, N'BH034', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH034', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH034', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 450000.0000, N'BH035', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2000000.0000, N'BH035', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH036', N'SP001')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH036', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH036', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 400000.0000, N'BH037', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH037', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH037', N'SP018')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH037', N'SP022')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH038', N'SP019')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH038', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH038', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH039', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 400000.0000, N'BH039', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH039', N'SP021')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH039', N'SP022')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH039', N'SP024')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1650000.0000, N'BH040', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1800000.0000, N'BH040', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (5, 750000.0000, N'BH041', N'SP003')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH041', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH041', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH042', N'SP002')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH042', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1800000.0000, N'BH042', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH043', N'SP002')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH043', N'SP007')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH043', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH043', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH044', N'SP006')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 600000.0000, N'BH044', N'SP008')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 600000.0000, N'BH044', N'SP011')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH045', N'SP010')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH045', N'SP012')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH046', N'SP013')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 600000.0000, N'BH046', N'SP014')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH046', N'SP015')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1400000.0000, N'BH047', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH047', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH048', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1400000.0000, N'BH049', N'SP017')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH049', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH050', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH050', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH050', N'SP025')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH051', N'SP015')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH051', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (1, 500000.0000, N'BH052', N'SP016')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 800000.0000, N'BH052', N'SP020')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (3, 1500000.0000, N'BH053', N'SP023')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1100000.0000, N'BH054', N'SP005')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (4, 2400000.0000, N'BH054', N'SP009')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1000000.0000, N'BH055', N'SP004')
INSERT [dbo].[CT_HDBanHang] ([SoLuong], [ThanhTien], [MaHDBH], [MaSP]) VALUES (2, 1200000.0000, N'BH055', N'SP009')
GO
INSERT [dbo].[DanhMucSP] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM001', N'Áo')
INSERT [dbo].[DanhMucSP] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM002', N'Quần')
INSERT [dbo].[DanhMucSP] ([MaDanhMuc], [TenDanhMuc]) VALUES (N'DM003', N'Váy')
GO
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH001', N'NV001', N'KH002', CAST(N'2021-11-28T16:13:33.687' AS DateTime), 1450000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH002', N'NV001', N'KH002', CAST(N'2021-11-28T16:13:59.750' AS DateTime), 2250000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH003', N'NV001', N'KH004', CAST(N'2021-11-28T16:14:40.520' AS DateTime), 2700000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH004', N'NV001', N'KH001', CAST(N'2021-11-28T16:14:57.390' AS DateTime), 2000000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH005', N'NV001', N'KH001', CAST(N'2021-11-28T16:15:36.040' AS DateTime), 3800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH006', N'NV001', N'KH006', CAST(N'2021-11-28T16:16:28.243' AS DateTime), 2800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH007', N'NV001', N'KH006', CAST(N'2021-11-28T17:31:00.127' AS DateTime), 4950000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH008', N'NV001', N'KH002', CAST(N'2021-11-29T00:19:26.667' AS DateTime), 12800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH009', N'NV001', N'KH002', CAST(N'2021-11-29T16:26:57.357' AS DateTime), 4900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH010', N'NV001', N'KH006', CAST(N'2021-11-29T16:27:30.103' AS DateTime), 6250000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH011', N'NV001', N'KH004', CAST(N'2021-11-29T16:27:49.040' AS DateTime), 5900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH012', N'NV001', N'KH003', CAST(N'2021-11-29T16:28:10.857' AS DateTime), 7900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH013', N'NV001', N'KH001', CAST(N'2021-11-29T16:28:36.047' AS DateTime), 7500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH014', N'NV001', N'KH005', CAST(N'2021-11-29T16:29:34.027' AS DateTime), 6050000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH015', N'NV001', N'KH002', CAST(N'2021-11-30T11:51:20.693' AS DateTime), 4000000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH016', N'NV001', N'KH006', CAST(N'2021-11-30T11:51:36.847' AS DateTime), 3100000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH017', N'NV001', N'KH004', CAST(N'2021-11-30T11:53:29.140' AS DateTime), 6650000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH018', N'NV001', N'KH001', CAST(N'2021-11-30T11:53:47.653' AS DateTime), 5200000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH019', N'NV001', N'KH003', CAST(N'2021-11-30T11:54:06.320' AS DateTime), 4500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH020', N'NV001', N'KH005', CAST(N'2021-11-30T11:54:31.797' AS DateTime), 5300000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH021', N'NV001', N'KH007', CAST(N'2021-11-30T11:59:23.033' AS DateTime), 6100000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH022', N'NV001', N'KH008', CAST(N'2021-11-30T11:59:46.257' AS DateTime), 4900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH023', N'NV001', N'KH009', CAST(N'2021-11-30T12:00:01.783' AS DateTime), 5000000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH024', N'NV001', N'KH010', CAST(N'2021-11-30T12:00:21.883' AS DateTime), 2600000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH025', N'NV001', N'KH012', CAST(N'2021-11-30T12:29:45.020' AS DateTime), 1100000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH026', N'NV001', N'KH013', CAST(N'2021-11-30T12:30:04.483' AS DateTime), 1400000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH027', N'NV001', N'KH014', CAST(N'2021-11-30T12:30:16.700' AS DateTime), 1150000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH028', N'NV001', N'KH007', CAST(N'2021-12-02T09:33:12.617' AS DateTime), 1500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH029', N'NV001', N'KH008', CAST(N'2021-12-02T09:33:33.960' AS DateTime), 2700000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH030', N'NV001', N'KH009', CAST(N'2021-12-02T09:33:49.783' AS DateTime), 2400000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH031', N'NV001', N'KH010', CAST(N'2021-12-02T09:34:07.040' AS DateTime), 3000000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH032', N'NV001', N'KH012', CAST(N'2021-12-02T09:34:27.633' AS DateTime), 900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH033', N'NV001', N'KH006', CAST(N'2021-12-02T09:34:44.367' AS DateTime), 1800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH034', N'NV001', N'KH002', CAST(N'2021-12-02T09:34:59.063' AS DateTime), 1850000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH035', N'NV001', N'KH013', CAST(N'2021-12-02T09:35:13.790' AS DateTime), 2450000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH036', N'NV001', N'KH013', CAST(N'2021-12-02T09:35:33.017' AS DateTime), 3100000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH037', N'NV001', N'KH014', CAST(N'2021-12-02T09:35:49.843' AS DateTime), 2800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH038', N'NV001', N'KH003', CAST(N'2021-12-02T09:36:03.203' AS DateTime), 2800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH039', N'NV001', N'KH004', CAST(N'2021-12-02T09:36:27.187' AS DateTime), 3000000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH040', N'NV001', N'KH001', CAST(N'2021-12-02T09:36:39.640' AS DateTime), 3450000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH041', N'NV001', N'KH005', CAST(N'2021-12-02T09:37:17.500' AS DateTime), 2550000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH042', N'NV001', N'KH011', CAST(N'2021-12-02T09:37:31.590' AS DateTime), 3900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH043', N'NV002', N'KH007', CAST(N'2021-12-03T15:52:03.913' AS DateTime), 3800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH044', N'NV002', N'KH008', CAST(N'2021-12-03T15:52:21.550' AS DateTime), 2300000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH045', N'NV002', N'KH009', CAST(N'2021-12-03T15:52:35.637' AS DateTime), 1800000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH046', N'NV002', N'KH010', CAST(N'2021-12-03T15:52:50.417' AS DateTime), 2400000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH047', N'NV002', N'KH012', CAST(N'2021-12-03T15:53:05.333' AS DateTime), 2900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH048', N'NV002', N'KH002', CAST(N'2021-12-03T15:53:21.697' AS DateTime), 1500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH049', N'NV002', N'KH013', CAST(N'2021-12-03T15:53:37.063' AS DateTime), 2900000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH050', N'NV002', N'KH014', CAST(N'2021-12-03T15:53:53.613' AS DateTime), 3300000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH051', N'NV002', N'KH004', CAST(N'2021-12-03T15:54:11.990' AS DateTime), 2500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH052', N'NV002', N'KH001', CAST(N'2021-12-03T15:54:30.427' AS DateTime), 1300000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH053', N'NV002', N'KH003', CAST(N'2021-12-03T15:54:48.583' AS DateTime), 1500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH054', N'NV002', N'KH005', CAST(N'2021-12-03T15:55:15.670' AS DateTime), 3500000.0000)
INSERT [dbo].[HDBanHang] ([MaHDBH], [MaNV], [MaKH], [NgayLapHDBH], [TongTien]) VALUES (N'BH055', N'NV002', N'KH011', CAST(N'2021-12-03T15:55:30.603' AS DateTime), 2200000.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH001', N'Đông Vũ', N'0983234728', N'Bình Tân')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH002', N'Oanh', N'0964505517', N'Bình Tân')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH003', N'Linh', N'0964988227', N'Bình Tân')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH004', N'Công', N'0902695954', N'Bình Tân')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH005', N'Duy', N'0793464997', N'Bình Chánh')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH006', N'An', N'0964505516', N'Bình Tân')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH007', N'Hà', N'0964505511', N'BT')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH008', N'Long', N'0964505512', N'BT')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH009', N'kha', N'0964505513', N'BT')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH010', N'Phong', N'0964505514', N'BT')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH011', N'Ngọc', N'0964988221', N'Q7')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH012', N'Uyên', N'0964505515', N'Q7')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH013', N'Hiếu', N'0964505518', N'Q7')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [DiaChi]) VALUES (N'KH014', N'Linh', N'0964505519', N'HN')
GO
INSERT [dbo].[KichCo] ([MaKC], [TenKC]) VALUES (N'KC001', N'S')
INSERT [dbo].[KichCo] ([MaKC], [TenKC]) VALUES (N'KC002', N'L')
INSERT [dbo].[KichCo] ([MaKC], [TenKC]) VALUES (N'KC003', N'XL')
GO
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS001', N'Đen')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS002', N'Trắng')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS003', N'Xanh')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS004', N'Hồng')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS005', N'Đỏ')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS006', N'Lục')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS007', N'Lam')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS008', N'Vàng')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS009', N'Chàm')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS010', N'Tím')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS011', N'Xanh lá')
INSERT [dbo].[MauSac] ([MaMS], [TenMS]) VALUES (N'MS012', N'Xanh rêu')
GO
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC001', N'Duy Huy Hậu', N'Bình Tân', N'0964505517', N'Huy@gmai.com')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC002', N'Công Lan', N'Bình Tân', N'0964988227', N'cong@gmai.com')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC003', N'Công Phương', N'Bình Tân', N'0902695954', N'congphuong@gmai.com')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC004', N'Duy An', N'Quảng Trị', N'0793464997', N'an@gmai.com')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC005', N'Tuyền', N'Quảng Trị', N'0983234728', N'Tuyen@gmai.com')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC006', N'Duy Huy Hậu', N'Bình Tân', N'0964505521', N'huy1@gmai.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [MaCa], [MaCV], [TenNV], [GioiTinh], [CMND], [DiaChi], [SDT], [NgaySinh]) VALUES (N'NV001', N'C001', N'CV001', N'Phạm Lê Khánh Duy', N'Nam', N'342029564', N'Bình Chánh', N'0793464997', CAST(N'2001-08-24' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [MaCa], [MaCV], [TenNV], [GioiTinh], [CMND], [DiaChi], [SDT], [NgaySinh]) VALUES (N'NV002', N'C002', N'CV001', N'Phạm Hoàng Huy', N'Nam', N'033201005747', N'Bình Tân', N'0964505517', CAST(N'2001-01-18' AS Date))
GO
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX001', N'Yame')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX002', N'Nike')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX003', N'Adidas')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX004', N'Huy')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX005', N'DuyAn')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX006', N'Bờm')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX007', N'Xshop')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX008', N'Chất')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX009', N'Puma')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX010', N'Phương Linh')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX011', N'Sài Gòn')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX012', N'Now')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX013', N'Vion')
INSERT [dbo].[NhaSX] ([MaNSX], [TenNSX]) VALUES (N'NSX014', N'Swang')
GO
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP001', N'DM001', N'Áo Khoác Hoodie Linh Vật', N'MS003', N'CL004', N'NSX001', N'KC002', N'NCC001', 1994, 500000.0000, N'Áo Khoác Hoodie Linh Vật.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP002', N'DM001', N'Áo Khoác Hoodie Y Nguyên Bản', N'MS001', N'CL004', N'NSX006', N'KC002', N'NCC002', 1991, 500000.0000, N'Áo Khoác Hoodie Y Nguyên Bản.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP003', N'DM001', N'Áo Thun Cổ Tròn Ngân Hà', N'MS001', N'CL001', N'NSX007', N'KC002', N'NCC002', 1984, 150000.0000, N'Áo Thun Cổ Tròn Ngân Hà.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP004', N'DM001', N'Áo Thun Cổ Tròn Thần Cổ Đại Anubis', N'MS001', N'CL001', N'NSX007', N'KC002', N'NCC004', 1991, 500000.0000, N'Áo Thun Cổ Tròn Thần Cổ Đại Anubis .PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP005', N'DM003', N'Chân Váy Chữ A Caro Xếp Ly', N'MS002', N'CL001', N'NSX007', N'KC002', N'NCC005', 1972, 550000.0000, N'Chân Váy Chữ A Caro Xếp Ly.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP006', N'DM003', N'Chân Váy Chữ A Ngắn Công Sở', N'MS002', N'CL001', N'NSX007', N'KC002', N'NCC005', 1991, 550000.0000, N'Chân Váy Chữ A Ngắn Công Sở.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP007', N'DM001', N'Sơ Mi Cổ Danton Linh Vật Bbuff', N'MS001', N'CL001', N'NSX006', N'KC002', N'NCC004', 1986, 500000.0000, N'CSơ Mi Cổ Danton Linh Vật Bbuff .PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP008', N'DM002', N'Quần Dài Jean Slimfit', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC004', 1984, 600000.0000, N'Quần Dài Jean Slimfit .PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP009', N'DM002', N'Quần Dài Tây Đơn Giản', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1969, 600000.0000, N'Quần Dài Tây Đơn Giản .PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP010', N'DM002', N'Quần Dài Vải Đặc Biệt.', N'MS001', N'CL001', N'NSX005', N'KC002', N'NCC001', 1986, 600000.0000, N'Quần Dài Vải Đặc Biệt.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP011', N'DM002', N'Quần Short Dị Biệt', N'MS002', N'CL001', N'NSX006', N'KC001', N'NCC003', 1985, 200000.0000, N'Quần Short Dị Biệt.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP012', N'DM002', N'Quần Short Đơn Giản 12VAHDT', N'MS002', N'CL001', N'NSX006', N'KC001', N'NCC003', 1987, 300000.0000, N'Quần Short Đơn Giản 12VAHDT.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP013', N'DM002', N'Quần Short Đơn Giản B2FL02', N'MS002', N'CL002', N'NSX006', N'KC002', N'NCC003', 1981, 400000.0000, N'Quần Short Đơn Giản B2FL02.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP014', N'DM002', N'Quần Short Đơn Giản M1', N'MS003', N'CL002', N'NSX006', N'KC002', N'NCC002', 1980, 300000.0000, N'Quần Short Đơn Giản M1 .PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP015', N'DM002', N'Quần Short Đơn Giản Y Nguyên Bản Ver5', N'MS001', N'CL002', N'NSX005', N'KC002', N'NCC001', 1978, 500000.0000, N'Quần Short Đơn Giản Y Nguyên Bản Ver5.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP016', N'DM002', N'Quần Short Đơn Giản', N'MS001', N'CL002', N'NSX005', N'KC002', N'NCC001', 1979, 500000.0000, N'Quần Short Đơn Giản.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP017', N'DM002', N'Quần Short Y Nguyên Bản 18', N'MS001', N'CL001', N'NSX005', N'KC002', N'NCC001', 1982, 700000.0000, N'Quần Short Y Nguyên Bản 18.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP018', N'DM001', N'Áo sơ mi', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1986, 400000.0000, N'Sơ Mi Cổ Danton Đơn Giản.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP019', N'DM001', N'Sơ Mi Cổ Danton Linh Vật Bbuff', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1983, 400000.0000, N'Sơ Mi Cổ Danton Linh Vật Bbuff.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP020', N'DM001', N'Sơ Mi Cổ Danton Linh Vật Rồng', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1981, 400000.0000, N'Sơ Mi Cổ Danton Linh Vật Rồng.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP021', N'DM001', N'Sơ Mi Cổ Danton Ngân Hà 4 Element', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1986, 500000.0000, N'Sơ Mi Cổ Danton Ngân Hà 4 Element.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP022', N'DM001', N'Sơ Mi Tay Ngắn Thần Cổ Đại', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1986, 500000.0000, N'Sơ Mi Tay Ngắn Thần Cổ Đại.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP023', N'DM003', N'Váy Gile Dạ Công Sở', N'MS002', N'CL001', N'NSX008', N'KC002', N'NCC001', 1985, 500000.0000, N'Váy Gile Dạ Công Sở.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP024', N'DM003', N'Váy Kẻ Phối Tay Voan Cổ Nơ', N'MS002', N'CL001', N'NSX008', N'KC002', N'NCC001', 1980, 500000.0000, N'Váy Kẻ Phối Tay Voan Cổ Nơ.PNG')
INSERT [dbo].[SanPham] ([MaSP], [MaDanhMuc], [TenSP], [MaMS], [MaCL], [MaNSX], [MaKC], [MaNCC], [SoLuong], [DonGia], [Anh]) VALUES (N'SP025', N'DM003', N'Váy Xòe Tay Phồng Cổ Xếp Ly', N'MS001', N'CL001', N'NSX008', N'KC002', N'NCC001', 1986, 500000.0000, N'Váy Xòe Tay Phồng Cổ Xếp Ly.PNG')
GO
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaNV]) VALUES (N'phamhoanghuy', N'19429061', N'QL', N'NV002')
INSERT [dbo].[TaiKhoan] ([TenDN], [MatKhau], [Quyen], [MaNV]) VALUES (N'phamlekhanhduy', N'19432121', N'QL', N'NV001')
GO
ALTER TABLE [dbo].[CaLam] ADD  CONSTRAINT [IDC]  DEFAULT ([DBO].[AUTO_IDC]()) FOR [MaCa]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  CONSTRAINT [IDCL]  DEFAULT ([DBO].[AUTO_IDCL]()) FOR [MaCL]
GO
ALTER TABLE [dbo].[ChucVu] ADD  CONSTRAINT [IDCV]  DEFAULT ([DBO].[AUTO_IDCV]()) FOR [MaCV]
GO
ALTER TABLE [dbo].[DanhMucSP] ADD  CONSTRAINT [IDDM]  DEFAULT ([DBO].[AUTO_IDDM]()) FOR [MaDanhMuc]
GO
ALTER TABLE [dbo].[DatHang] ADD  CONSTRAINT [IDDH]  DEFAULT ([DBO].[AUTO_IDDH]()) FOR [MaDH]
GO
ALTER TABLE [dbo].[HDBanHang] ADD  CONSTRAINT [IDBH]  DEFAULT ([DBO].[AUTO_IDBH]()) FOR [MaHDBH]
GO
ALTER TABLE [dbo].[KhachHang] ADD  CONSTRAINT [IDKH]  DEFAULT ([DBO].[AUTO_IDKH]()) FOR [MaKH]
GO
ALTER TABLE [dbo].[KichCo] ADD  CONSTRAINT [IDKC]  DEFAULT ([DBO].[AUTO_IDKC]()) FOR [MaKC]
GO
ALTER TABLE [dbo].[MauSac] ADD  CONSTRAINT [IDMS]  DEFAULT ([DBO].[AUTO_IDMS]()) FOR [MaMS]
GO
ALTER TABLE [dbo].[NhaCC] ADD  CONSTRAINT [IDNCC]  DEFAULT ([DBO].[AUTO_IDNCC]()) FOR [MaNCC]
GO
ALTER TABLE [dbo].[NhanVien] ADD  CONSTRAINT [IDNV]  DEFAULT ([DBO].[AUTO_IDNV]()) FOR [MaNV]
GO
ALTER TABLE [dbo].[NhaSX] ADD  CONSTRAINT [IDNSX]  DEFAULT ([DBO].[AUTO_IDNSX]()) FOR [MaNSX]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [IDSP]  DEFAULT ([DBO].[AUTO_IDSP]()) FOR [MaSP]
GO
ALTER TABLE [dbo].[CT_DatHang]  WITH CHECK ADD FOREIGN KEY([MaDH])
REFERENCES [dbo].[DatHang] ([MaDH])
GO
ALTER TABLE [dbo].[CT_DatHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_HDBanHang]  WITH CHECK ADD FOREIGN KEY([MaHDBH])
REFERENCES [dbo].[HDBanHang] ([MaHDBH])
GO
ALTER TABLE [dbo].[CT_HDBanHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDBanHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HDBanHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCa])
REFERENCES [dbo].[CaLam] ([MaCa])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaCL])
REFERENCES [dbo].[ChatLieu] ([MaCL])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMucSP] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaKC])
REFERENCES [dbo].[KichCo] ([MaKC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaMS])
REFERENCES [dbo].[MauSac] ([MaMS])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSX] ([MaNSX])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
