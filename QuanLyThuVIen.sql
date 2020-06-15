USE [DBQuanLyThuVien]
GO
/****** Object:  Table [dbo].[BANGCAP]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANGCAP](
	[MaBangCap] [int] IDENTITY(1,1) NOT NULL,
	[TenBangCap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBangCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETPHIEUMUON]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUMUON](
	[MaSach] [int] NOT NULL,
	[MaPhieuMuon] [int] NOT NULL,
	[NgayTra] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC,
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[MaDocGia] [int] IDENTITY(1,1) NOT NULL,
	[HoTenDocGia] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [char](50) NULL,
	[NgayLapThe] [date] NULL,
	[NgayHetHan] [date] NULL,
	[TienNo] [int] NULL,
	[isActive] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[HoTenNhanVien] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](11) NULL,
	[MaBangCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUMUONSACH]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUMUONSACH](
	[MaPhieuMuon] [int] IDENTITY(1,1) NOT NULL,
	[NgayMuon] [date] NULL,
	[MaDocGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuMuon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUTHUTIEN]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTHUTIEN](
	[MaPhieuThuTien] [int] IDENTITY(1,1) NOT NULL,
	[SoTienNo] [int] NULL,
	[SoTienThu] [int] NULL,
	[MaDocGia] [int] NULL,
	[MaNhanVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuThuTien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SACH]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SACH](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](50) NULL,
	[TacGia] [nvarchar](50) NULL,
	[NamXuatBan] [date] NULL,
	[NhaXuatBan] [nvarchar](50) NULL,
	[TriGia] [nvarchar](20) NULL,
	[NgayNhap] [date] NULL,
	[isActive] [tinyint] NULL,
 CONSTRAINT [PK__SACH__B235742D39BD5353] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Fullname] [nvarchar](50) NULL,
	[Username] [nchar](20) NOT NULL,
	[Password] [nchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DOCGIA] ADD  CONSTRAINT [DF_DOCGIA_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[SACH] ADD  CONSTRAINT [DF_SACH_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON]  WITH CHECK ADD FOREIGN KEY([MaPhieuMuon])
REFERENCES [dbo].[PHIEUMUONSACH] ([MaPhieuMuon])
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK__CHITIETPH__MaSac__33D4B598] FOREIGN KEY([MaSach])
REFERENCES [dbo].[SACH] ([MaSach])
GO
ALTER TABLE [dbo].[CHITIETPHIEUMUON] CHECK CONSTRAINT [FK__CHITIETPH__MaSac__33D4B598]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN] FOREIGN KEY([MaBangCap])
REFERENCES [dbo].[BANGCAP] ([MaBangCap])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUMUONSACH]  WITH CHECK ADD FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUTHUTIEN]  WITH CHECK ADD FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DOCGIA] ([MaDocGia])
GO
ALTER TABLE [dbo].[PHIEUTHUTIEN]  WITH CHECK ADD FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NHANVIEN] ([MaNhanVien])
GO
/****** Object:  StoredProcedure [dbo].[GETMAXPHIEUMUON]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GETMAXPHIEUMUON]
AS
	SELECT TOP 1 MaPhieuMuon
	FROM PHIEUMUONSACH
	ORDER BY MaPhieuMuon DESC
GO
/****** Object:  StoredProcedure [dbo].[NewSelectCommand]    Script Date: 06/15/2020 8:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NewSelectCommand]
AS
	SET NOCOUNT ON;
EXEC GETMAXPHIEUMUON
GO
