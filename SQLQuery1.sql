USE [QLBB]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 03/16/2017 18:39:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TAIKHOAN] ([TenDN], [MatKhau]) VALUES (N'admin', N'admin')
/****** Object:  UserDefinedFunction [dbo].[GrowNumber10]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================



 CREATE FUNCTION [dbo].[GrowNumber10] (@IDIN CHAR(2))
    RETURNS VARCHAR(2)
    AS BEGIN
     
        DECLARE @OUT VARCHAR(2)
        SET @IDIN = @IDIN + 1
     
        IF @IDIN IS NULL SET @OUT = '01'
        ELSE SET @OUT = LEFT('00',2-LEN(@IDIN)) + @IDIN
     
        RETURN @OUT
    END
GO
/****** Object:  Table [dbo].[NCC_Audit]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC_Audit](
	[MaNCC] [nchar](10) NULL,
	[TenNCC] [nvarchar](50) NULL,
	[SDT] [nvarchar](15) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Audit_Type] [nchar](10) NULL,
	[Date_Time_Stamp] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC01     ', N'A', N'0123456789', N'123 ABC', N'A@gmail.com', N'I         ', CAST(0x0000A60B0001CF91 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC02     ', N'B', N'0123654951', N'159 XYZ', N'B@gmail.com', N'I         ', CAST(0x0000A60B000364FA AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC03     ', N'C', N'01597536526', N'125 HB', N'C@gmail.com', N'I         ', CAST(0x0000A60B000D1B65 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC04     ', N'D', N'01548325658', N'563 DHM', N'D@gmail.com', N'I         ', CAST(0x0000A60B000D3200 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC05     ', N'A', N'0123456789', N'1234 ABC', N'A@gmail.com', N'I         ', CAST(0x0000A60B011FF493 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC06     ', N'A', N'0123456789', N'1234 ABC', N'A@gmail.com', N'I         ', CAST(0x0000A60B0125FB45 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC07     ', N'A', N'012345678', N'1234 ABC', N'A@gmail.com', N'I         ', CAST(0x0000A60B01261A1A AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC08     ', N'jhn', N'lkjnl', N'jnl', N'ljkn', N'I         ', CAST(0x0000A60B013A1459 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC09     ', N'khb', N'N', N'JNK', N'JNKN', N'I         ', CAST(0x0000A60B013A262A AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC10     ', N'E', N'0236526263', N'1656 fds', N'E@gmail.com', N'I         ', CAST(0x0000A60E000B4AE8 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC11     ', N'E', N'212514', N'24 f', N'E@gmail.com', N'I         ', CAST(0x0000A60E000B74C5 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC12     ', N'E', N'35415', N'25', N'53521', N'I         ', CAST(0x0000A60E000BFC4D AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC13     ', N'f', N'd', N'D', N'df', N'I         ', CAST(0x0000A60E000C1329 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC14     ', N'fd', N'cd', N'fcsw', N'cs', N'I         ', CAST(0x0000A60E000D6A1C AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC15     ', N'Pon', N'84', N'Huê', N'ponpun@xxx.com', N'I         ', CAST(0x0000A63200419A04 AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC16     ', N'D', N'1', N'X', N'2', N'I         ', CAST(0x0000A6320041D70D AS DateTime))
INSERT [dbo].[NCC_Audit] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email], [Audit_Type], [Date_Time_Stamp]) VALUES (N'NCC17     ', N'bu', N'3', N'Fr', N'no', N'I         ', CAST(0x0000A6320044A2BE AS DateTime))
/****** Object:  UserDefinedFunction [dbo].[mancc]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================



CREATE FUNCTION [dbo].[mancc] (@IDIN CHAR(2))
    RETURNS VARCHAR(2)
    AS BEGIN
     
        DECLARE @OUT VARCHAR(2)
        SET @IDIN = @IDIN + 1
     
        IF @IDIN IS NULL SET @OUT = '01'
        ELSE SET @OUT = LEFT('00',2-LEN(@IDIN)) + @IDIN
     
        RETURN @OUT
    END
GO
/****** Object:  UserDefinedFunction [dbo].[mamh]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[mamh] (@IDIN CHAR(5))
    RETURNS VARCHAR(5)
    AS BEGIN
     
        DECLARE @OUT VARCHAR(5)
        SET @IDIN = @IDIN + 1
     
        IF @IDIN IS NULL SET @OUT = '00001'
        ELSE SET @OUT = LEFT('00000',5-LEN(@IDIN)) + @IDIN
     
        RETURN @OUT
    END
GO
/****** Object:  UserDefinedFunction [dbo].[mahd]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[mahd] (@IDIN CHAR(7))
    RETURNS VARCHAR(7)
    AS BEGIN
     
        DECLARE @OUT VARCHAR(7)
        SET @IDIN = @IDIN + 1
     
        IF @IDIN IS NULL SET @OUT = '0000001'
        ELSE SET @OUT = LEFT('0000000',7-LEN(@IDIN)) + @IDIN
     
        RETURN @OUT
    END
GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[TenLH] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LOAIHANG] PRIMARY KEY CLUSTERED 
(
	[TenLH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAIHANG] ([TenLH]) VALUES (N'Bánh')
INSERT [dbo].[LOAIHANG] ([TenLH]) VALUES (N'Nước')
/****** Object:  Table [dbo].[HOADONNHAP_Audit]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONNHAP_Audit](
	[SoHDN] [nchar](10) NULL,
	[MaNCC] [nchar](10) NULL,
	[NgayNhap] [smalldatetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
	[TongTien] [float] NULL,
	[Audit_Type] [nchar](10) NULL,
	[Date_Time_Stamp] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000001', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C0015E305 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000002', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 75000, N'I         ', CAST(0x0000A61C00166894 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000003', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C0018442F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000004', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 15000, N'I         ', CAST(0x0000A61C001FB7EE AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000005', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 162762, N'I         ', CAST(0x0000A61C002161F0 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000012', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4, N'I         ', CAST(0x0000A61C003518AF AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000015', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4, N'I         ', CAST(0x0000A61C00352086 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000023', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C00407BAD AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000032', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 1635000, N'I         ', CAST(0x0000A61C0108D089 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000033', N'NCC01     ', CAST(0xA6240000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A62400B8547F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000034', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A630002685D3 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000035', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A630002CA686 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000036', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A6300128EDAD AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000037', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A630013110A6 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000038', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A6300132DB7F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000039', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A630013372C7 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000040', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A630013437CB AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000041', N'NCC01     ', CAST(0xA6310000 AS SmallDateTime), N'', 32550, N'I         ', CAST(0x0000A6310083E8A2 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000042', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002B42B5 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000043', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002C7225 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000044', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002D33BF AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000045', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002DE567 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000046', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002E3AE4 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000047', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002F9117 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000006', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C00220A20 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000007', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C00234A0B AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000008', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C00283689 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000009', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C0028D67F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000010', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C00326BB8 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000011', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4, N'I         ', CAST(0x0000A61C00340C3F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000013', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4, N'I         ', CAST(0x0000A61C00351AFA AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000016', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003C5335 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000017', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003CA91D AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000018', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003D8860 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000019', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003DCB6C AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000020', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003DEFA5 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000021', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C003F0201 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000022', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C004066DC AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000024', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A61C0040D01C AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000025', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 2695790, N'I         ', CAST(0x0000A61C0044089B AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000026', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 4400000, N'I         ', CAST(0x0000A61C0046837B AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000027', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 40320, N'I         ', CAST(0x0000A61C0049C0B5 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000028', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 487200, N'I         ', CAST(0x0000A61C004ABD67 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000029', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 33000, N'I         ', CAST(0x0000A61C004AFCD7 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000030', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 240000, N'I         ', CAST(0x0000A61C00508739 AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000031', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 1544000, N'I         ', CAST(0x0000A61C005B721C AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000014', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4, N'I         ', CAST(0x0000A61C00351D8F AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000049', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 6, N'I         ', CAST(0x0000A632004DD1EA AS DateTime))
INSERT [dbo].[HOADONNHAP_Audit] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDN0000048', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0, N'I         ', CAST(0x0000A632002FAE5B AS DateTime))
/****** Object:  Table [dbo].[MATHANG_Audit]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG_Audit](
	[MaMH] [nchar](10) NULL,
	[TenMH] [nvarchar](50) NULL,
	[DonGia] [int] NULL,
	[TenLH] [nvarchar](50) NULL,
	[MaNCC] [nchar](10) NULL,
	[Audit_Type] [nchar](10) NULL,
	[Date_Time_Stamp] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHN00001  ', N'CocaCola', 15000, N'Nước', N'NCC01     ', N'I         ', CAST(0x0000A60D001A1C23 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHN00002  ', N'7up', 15, N'Nước', N'NCC01     ', N'I         ', CAST(0x0000A60D001A607D AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00003  ', N'bánh1', 20000, N'Bánh', N'NCC02     ', N'I         ', CAST(0x0000A60D00203C42 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00004  ', N'Tiramisu', 30000, N'Bánh', N'NCC03     ', N'I         ', CAST(0x0000A60D002B855D AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00005  ', N'bánh2', 15000, N'Bánh', N'NCC02     ', N'I         ', CAST(0x0000A63200297BFE AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00006  ', N'g', 0, N'Bánh', N'NCC01     ', N'I         ', CAST(0x0000A6320043B51B AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHN00007  ', N'Trái tim', 0, N'Nước', N'NCC16     ', N'I         ', CAST(0x0000A6320043F477 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00008  ', N'd', 0, N'Bánh', N'NCC17     ', N'I         ', CAST(0x0000A63200464949 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00010  ', N'bánh 1', 10000, N'Bánh', N'NCC01     ', N'I         ', CAST(0x0000A63200A1AFDA AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00011  ', N'Bánh 2', 15000, N'Bánh', N'NCC01     ', N'I         ', CAST(0x0000A63200A1BDDA AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHN00012  ', N'nước 1', 20000, N'Nước', N'NCC01     ', N'I         ', CAST(0x0000A63200A1CC26 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00013  ', N'bánh 3', 15000, N'Bánh', N'NCC02     ', N'I         ', CAST(0x0000A63200A1DFEF AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00015  ', N'm', 10000, N'Bánh', N'NCC01     ', N'I         ', CAST(0x0000A73800030E59 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00009  ', N'dsw', 0, N'Bánh', N'NCC17     ', N'I         ', CAST(0x0000A63200465415 AS DateTime))
INSERT [dbo].[MATHANG_Audit] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC], [Audit_Type], [Date_Time_Stamp]) VALUES (N'MHB00014  ', N'bánh 4', 20000, N'Bánh', N'NCC02     ', N'I         ', CAST(0x0000A63200A1F4DE AS DateTime))
/****** Object:  Table [dbo].[CTHDB]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDB](
	[SoBan] [nchar](50) NULL,
	[MaMH] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[SoBan] [int] NOT NULL,
 CONSTRAINT [PK_BAN] PRIMARY KEY CLUSTERED 
(
	[SoBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAN] ([SoBan]) VALUES (17)
/****** Object:  Table [dbo].[HOADONBAN_Audit]    Script Date: 03/16/2017 18:40:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBAN_Audit](
	[SoHDB] [nchar](10) NULL,
	[Ngay] [smalldatetime] NULL,
	[TongTien] [float] NULL,
	[Audit_Type] [nchar](10) NULL,
	[Date_Time_Stamp] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000001', CAST(0xA6310000 AS SmallDateTime), 190000, N'I         ', CAST(0x0000A631005FAEFB AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000002', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A6310062B797 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000003', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A63100636061 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000004', CAST(0xA6310000 AS SmallDateTime), 65000, N'I         ', CAST(0x0000A6310063A807 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000005', CAST(0xA6310000 AS SmallDateTime), 120000, N'I         ', CAST(0x0000A6310064A1AB AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000006', CAST(0xA6310000 AS SmallDateTime), 36000, N'I         ', CAST(0x0000A631006718C2 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000007', CAST(0xA6310000 AS SmallDateTime), 90000, N'I         ', CAST(0x0000A6310067EDBD AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000008', CAST(0xA6310000 AS SmallDateTime), 75000, N'I         ', CAST(0x0000A63100789E37 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000019', CAST(0xA6320000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A63200021621 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000025', CAST(0xA6320000 AS SmallDateTime), 65000, N'I         ', CAST(0x0000A6320007434A AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000027', CAST(0xA6320000 AS SmallDateTime), 150000, N'I         ', CAST(0x0000A6320019845B AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000028', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A632001A64C6 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000029', CAST(0xA6320000 AS SmallDateTime), 15000, N'I         ', CAST(0x0000A632001AF0B9 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000030', CAST(0xA6320000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A632001B2465 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000031', CAST(0xA6320000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A632001B6498 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000032', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A632001BBD20 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000033', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A632001C0E3D AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000034', CAST(0xA6320000 AS SmallDateTime), 15000, N'I         ', CAST(0x0000A632001E8D9A AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000035', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A632001F3A07 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000036', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A6320020460A AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000038', CAST(0xA6320000 AS SmallDateTime), 115000, N'I         ', CAST(0x0000A63200509FF9 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000039', CAST(0xA6320000 AS SmallDateTime), 30000, N'I         ', CAST(0x0000A63200A514E5 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000040', CAST(0xA6320000 AS SmallDateTime), 10000, N'I         ', CAST(0x0000A63200A863E6 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000009', CAST(0xA6310000 AS SmallDateTime), 80000, N'I         ', CAST(0x0000A631007940B6 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000010', CAST(0xA6310000 AS SmallDateTime), 45000, N'I         ', CAST(0x0000A6310079D4E1 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000011', CAST(0xA6310000 AS SmallDateTime), 40000, N'I         ', CAST(0x0000A631007ACF99 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000012', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A631007B6BBA AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000013', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A631007CEE88 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000014', CAST(0xA6310000 AS SmallDateTime), 60000, N'I         ', CAST(0x0000A631007FC05A AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000015', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A6310080E6CF AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000016', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A631008140E2 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000017', CAST(0xA6310000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A63100817F33 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000018', CAST(0xA6320000 AS SmallDateTime), 0, N'I         ', CAST(0x0000A6320001FEA1 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000020', CAST(0xA6320000 AS SmallDateTime), 50000, N'I         ', CAST(0x0000A63200022919 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000021', CAST(0xA6320000 AS SmallDateTime), 80000, N'I         ', CAST(0x0000A6320002475E AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000022', CAST(0xA6320000 AS SmallDateTime), 20000, N'I         ', CAST(0x0000A6320004E375 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000023', CAST(0xA6320000 AS SmallDateTime), 60000, N'I         ', CAST(0x0000A632000627A7 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000024', CAST(0xA6320000 AS SmallDateTime), 260000, N'I         ', CAST(0x0000A632000645B0 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000026', CAST(0xA6320000 AS SmallDateTime), 90000, N'I         ', CAST(0x0000A632000895D4 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000037', CAST(0xA6320000 AS SmallDateTime), 60000, N'I         ', CAST(0x0000A6320021E9B7 AS DateTime))
INSERT [dbo].[HOADONBAN_Audit] ([SoHDB], [Ngay], [TongTien], [Audit_Type], [Date_Time_Stamp]) VALUES (N'HDB0000041', CAST(0xA6320000 AS SmallDateTime), 15000, N'I         ', CAST(0x0000A63200A887E2 AS DateTime))
/****** Object:  Table [dbo].[HOADONBAN]    Script Date: 03/16/2017 18:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBAN](
	[SoHDB] [nchar](10) NOT NULL,
	[Ngay] [smalldatetime] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HOADONBAN] PRIMARY KEY CLUSTERED 
(
	[SoHDB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000005', CAST(0xA6310000 AS SmallDateTime), 140000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000006', CAST(0xA6310000 AS SmallDateTime), 36000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000007', CAST(0xA6310000 AS SmallDateTime), 90000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000008', CAST(0xA6310000 AS SmallDateTime), 75000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000009', CAST(0xA6310000 AS SmallDateTime), 80000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000010', CAST(0xA6310000 AS SmallDateTime), 45000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000011', CAST(0xA6310000 AS SmallDateTime), 40000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000012', CAST(0xA6310000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000013', CAST(0xA6310000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000014', CAST(0xA6310000 AS SmallDateTime), 60000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000015', CAST(0xA6310000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000016', CAST(0xA6310000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000018', CAST(0xA6320000 AS SmallDateTime), 0)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000019', CAST(0xA6320000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000020', CAST(0xA6320000 AS SmallDateTime), 50000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000021', CAST(0xA6320000 AS SmallDateTime), 80000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000022', CAST(0xA6320000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000023', CAST(0xA6320000 AS SmallDateTime), 60000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000024', CAST(0xA6320000 AS SmallDateTime), 260000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000025', CAST(0xA6320000 AS SmallDateTime), 65000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000026', CAST(0xA6320000 AS SmallDateTime), 90000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000027', CAST(0xA6320000 AS SmallDateTime), 150000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000028', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000029', CAST(0xA6320000 AS SmallDateTime), 15000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000030', CAST(0xA6320000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000031', CAST(0xA6320000 AS SmallDateTime), 20000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000032', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000033', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000034', CAST(0xA6320000 AS SmallDateTime), 15000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000035', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000036', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000037', CAST(0xA6320000 AS SmallDateTime), 60000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000038', CAST(0xA6320000 AS SmallDateTime), 115000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000039', CAST(0xA6320000 AS SmallDateTime), 30000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000040', CAST(0xA6320000 AS SmallDateTime), 10000)
INSERT [dbo].[HOADONBAN] ([SoHDB], [Ngay], [TongTien]) VALUES (N'HDB0000041', CAST(0xA6320000 AS SmallDateTime), 15000)
/****** Object:  Table [dbo].[NCC]    Script Date: 03/16/2017 18:40:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCC](
	[MaNCC] [nchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NCC] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email]) VALUES (N'NCC01     ', N'A', N'0123456789', N'1234 ABC', N'A@gmail.com')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email]) VALUES (N'NCC02     ', N'B', N'0123654951', N'159 XYZ', N'B@gmail.com')
INSERT [dbo].[NCC] ([MaNCC], [TenNCC], [SDT], [DiaChi], [Email]) VALUES (N'NCC03     ', N'C', N'01597536526', N'125 HB', N'C@gmail.com')
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHICTHDBT] 
	@SoBan nchar(50)
AS
BEGIN
	SELECT * FROM CTHDB WHERE SoBan=@SoBan
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETECTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETECTHDBT] 
	@SoBan nchar(50),@MaMH nchar(10)
AS
BEGIN
if(@SoBan='0' and @MaMH='0')
begin
DELETE FROM CTHDB
	
	end
	else
	DELETE FROM CTHDB
	WHERE SoBan = @SoBan and MaMH=@MaMH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETEBAN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETEBAN] 
AS
BEGIN

	UPDATE BAN
	SET SoBan=SoBan-1;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTCTHDBT] 
	@SoBan nchar(50),
	@MaMH nchar(10),
	@SoLuong int,
	@DonGia float
AS
BEGIN
	if(@MaMH='no')
	begin
	INSERT INTO CTHDB (SoBan)
	values (@SoBan)
	 
	end
	else
	begin
INSERT INTO CTHDB
	values (@SoBan,@MaMH,@SoLuong,@DonGia)

	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHILH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHILH] 
	
AS
BEGIN
	SELECT * FROM LOAIHANG
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTBAN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTBAN] 
AS
BEGIN

	UPDATE BAN
	SET SoBan=SoBan+1;

END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHISoHDN] 
AS
BEGIN
	DECLARE @SoHDN nchar(10)
	SELECT @SoHDN = MAX(RIGHT(RTRIM(SoHDN),7)) FROM HOADONNHAP_Audit WHERE Audit_Type='I'
	SET @SoHDN = 'HDN'+ dbo.mahd(@SoHDN)
	SELECT @SoHDN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHISoHDB] 
AS
BEGIN
	DECLARE @SoHDB nchar(10)
	SELECT @SoHDB = MAX(RIGHT(RTRIM(SoHDB),7)) FROM HOADONBAN_Audit WHERE Audit_Type='I'
	SET @SoHDB = 'HDB'+ dbo.mahd(@SoHDB)
	SELECT @SoHDB
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoCTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHISoCTHDBT] 
AS
BEGIN
	SELECT distinct SoBan FROM CTHDB
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TAIKHOAN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TAIKHOAN] 
	@TenND nvarchar(50),
	@MatKhau nvarchar(50)
AS
BEGIN
	--if (EXISTS(select * from TAIKHOAN where TenDN=@TenND and MatKhau=@MatKhau))
	--begin
	--print -1
	-- return -1
	-- end
	-- else  
	-- begin
	-- print 0 
	-- return 0
	-- end
	select * from TAIKHOAN where TenDN=@TenND and MatKhau=@MatKhau
END
GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTBAN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_COUNTBAN] 
AS
BEGIN

	SELECT SoBan
	FROM BAN

END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMSoCTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_TIMKIEMSoCTHDBT] 
      @SoBan nchar(10)
AS
BEGIN
	SELECT distinct SoBan FROM CTHDB WHERE RTRIM(SoBan) like RTRIM(@SoBan)+'+'+'%' 
	or RTRIM(SoBan) like '%'+'+'+RTRIM(@SoBan) 
	or RTRIM(SoBan) like '%'+'+'+RTRIM(@SoBan) +'+'+'%' 
	or RTRIM(SoBan)=RTRIM(@SoBan)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATECTHDBT]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATECTHDBT] 
	@SoBan nchar(50),
	@MaMH nchar(10),
	@SoLuong int,
	@DonGia float
AS
BEGIN

	UPDATE CTHDB
	SET   SoLuong=@SoLuong, DonGia=@DonGia
	WHERE SoBan=@SoBan and MaMH=@MaMH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATEHDB] 
	@SoHDB nchar(10),
	@Ngay smalldatetime,
	 @TongTien float	
AS
BEGIN

	
	UPDATE HOADONBAN
	SET Ngay=@Ngay,TongTien=@TongTien
	WHERE SoHDB=@SoHDB

END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMNCC]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TIMKIEMNCC] 
	@MaNCC nchar(10),
	@TenNCC nvarchar (50),
	@SDT nvarchar (15),
	@DiaChi nvarchar(50),
	@Email nvarchar(50)
AS
BEGIN
	SELECT * FROM NCC 
	WHERE MaNCC = @MaNCC
	or TenNCC like '%'+@TenNCC+'%'
	or SDT like @SDT+'%'
	or DiaChi like '%'+@DiaChi+'%'
	or Email like @Email+'%'	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATENCC]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATENCC] 
	@MaNCC nchar(10),
	@TenNCC nvarchar (50),
	@SDT nvarchar (15),
	@DiaChi nvarchar(50),
	@Email nvarchar(50)
AS
BEGIN

	UPDATE NCC
	SET TenNCC = @TenNCC, SDT = @SDT, DiaChi = @DiaChi, Email = @Email 
	WHERE MaNCC = @MaNCC

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTHDB] 
	@Ngay smalldatetime,
	 @TongTien float	
AS
BEGIN
	DECLARE @SoHDB nchar(10)
	SELECT @SoHDB = MAX(RIGHT(RTRIM(SoHDB),7)) FROM HOADONBAN_Audit WHERE Audit_Type='I'
	SET @SoHDB = 'HDB'+ dbo.mahd(@SoHDB)
	
	--DECLARE @TongTien float
	--SELECT @TongTien = SUM(SoLuong*DonGia) FROM CHITIETHDN WHERE CHITIETHDN.SoHDN=@SoHDN
	
	INSERT INTO HOADONBAN
	values (@SoHDB,@Ngay,@TongTien)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTNCC]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTNCC] 
	
	@TenNCC nvarchar (50),
	@SDT nvarchar (15),
	@DiaChi nvarchar(50),
	@Email nvarchar(50)
AS
BEGIN
	DECLARE @MaNCC nchar(10)
	SELECT @MaNCC = MAX(RIGHT(RTRIM(MaNCC),2)) FROM NCC_Audit WHERE Audit_Type='I'
	SET @MaNCC = 'NCC' + dbo.mancc(@MaNCC)
	INSERT INTO NCC(MaNCC, TenNCC, SDT, DiaChi, Email) 
	values (@MaNCC, @TenNCC, @SDT, @DiaChi, @Email)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TIMKIEMHDB] 
	@SoHDB nchar(10),
	@NgayNhap1 nvarchar(50),
	@NgayNhap2 nvarchar(50)
AS
BEGIN
DECLARE @ngay1 smalldatetime, @ngay2 smalldatetime
if (@NgayNhap1<>'null' and @NgayNhap2<>'null') 
	begin	
	SET @ngay1= CONVERT(smalldatetime,@NgayNhap1)
	SET @ngay2= CONVERT(smalldatetime,@NgayNhap2)
	print 1
	end
	else print 2
	SELECT SoHDB as "Số phiếu", Ngay as "Ngày bán", TongTien as "Tổng tiền"
	FROM HOADONBAN
	WHERE SoHDB=@SoHDB
	or Ngay between @ngay1 and @ngay2
END
GO
/****** Object:  StoredProcedure [dbo].[SP_NCC_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_NCC_Report] 
	@MaNCC nchar(10)
AS
BEGIN
	SELECT * FROM NCC 
	WHERE MaNCC = @MaNCC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHINCC]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHINCC] 
	
AS
BEGIN
	SELECT * FROM NCC
END
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoDDH] [nchar](10) NOT NULL,
	[MaNCC] [nchar](10) NULL,
	[SDT] [nvarchar](15) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[NgayDat] [smalldatetime] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[SoDDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETEHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETEHDB] 
	@SoHDB nchar(10)
AS
BEGIN
	DELETE FROM HOADONBAN
	WHERE SoHDB = @SoHDB

END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHIHDB] 
	
AS
BEGIN
	SELECT SoHDB as "Số phiếu", Ngay as "Ngày bán", TongTien as "Tổng tiền"
	FROM HOADONBAN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HDB_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HDB_Report] 
	@SoHDB nchar(10)
AS
BEGIN
	SELECT SoHDB,  Ngay, TongTien 
	FROM HOADONBAN
	WHERE  SoHDB=@SoHDB
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETENCC]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETENCC] 
	@MaNCC nchar(10)
AS
BEGIN

	DELETE FROM NCC
	WHERE MaNCC = @MaNCC

END
GO
/****** Object:  Table [dbo].[MATHANG]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATHANG](
	[MaMH] [nchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[TenLH] [nvarchar](50) NULL,
	[MaNCC] [nchar](10) NULL,
 CONSTRAINT [PK_MATHANG] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHB00010  ', N'bánh 1', 10000, N'Bánh', N'NCC01     ')
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHB00011  ', N'Bánh 2', 15000, N'Bánh', N'NCC01     ')
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHB00013  ', N'bánh 3', 15000, N'Bánh', N'NCC02     ')
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHB00014  ', N'bánh 4', 20000, N'Bánh', N'NCC02     ')
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHB00015  ', N'm', 10000, N'Bánh', N'NCC01     ')
INSERT [dbo].[MATHANG] ([MaMH], [TenMH], [DonGia], [TenLH], [MaNCC]) VALUES (N'MHN00012  ', N'nước 1', 20000, N'Nước', N'NCC01     ')
/****** Object:  Table [dbo].[HOADONNHAP]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONNHAP](
	[SoHDN] [nchar](10) NOT NULL,
	[MaNCC] [nchar](10) NULL,
	[NgayNhap] [smalldatetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HOADONNHAP] PRIMARY KEY CLUSTERED 
(
	[SoHDN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000001', N'NCC03     ', CAST(0xA61D0000 AS SmallDateTime), N'test', 322000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000002', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 75000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000004', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 15000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000006', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000007', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000008', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000009', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000010', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000011', N'NCC02     ', CAST(0xA6270000 AS SmallDateTime), N'bsgbdrh dfbhdr', 235206.4)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000018', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000019', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000020', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000021', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000022', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000023', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000024', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000025', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 2695790)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000026', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 4400000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000027', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 40320)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000028', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 487200)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000029', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 33000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000030', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 240000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000031', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 1544000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000032', N'NCC01     ', CAST(0xA61C0000 AS SmallDateTime), N'', 1635000)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000033', N'NCC01     ', CAST(0xA6240000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000034', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000035', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000036', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000037', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000038', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000039', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000040', N'NCC01     ', CAST(0xA6300000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000041', N'NCC01     ', CAST(0xA6310000 AS SmallDateTime), N'', 32550)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000042', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000043', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000044', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000045', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000046', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000047', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000048', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 0)
INSERT [dbo].[HOADONNHAP] ([SoHDN], [MaNCC], [NgayNhap], [GhiChu], [TongTien]) VALUES (N'HDN0000049', N'NCC01     ', CAST(0xA6320000 AS SmallDateTime), N'', 6)
/****** Object:  Trigger [AuditInsertHDB]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AuditInsertHDB] 
   ON  [dbo].[HOADONBAN]
   AFTER INSERT
AS 
BEGIN
	insert into HOADONBAN_Audit select *, 'I', GETDATE() FROM inserted

END
GO
/****** Object:  Trigger [AuditInsertNCC]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertNCC]
ON [dbo].[NCC]
FOR Insert
AS
insert into NCC_Audit select *, 'I', GETDATE() FROM inserted
GO
/****** Object:  Trigger [AuditUpdateHDN]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AuditUpdateHDN] 
   ON  [dbo].[HOADONNHAP]
   AFTER UPDATE
AS 
BEGIN
	insert into HOADONNHAP_Audit select *, 'U', GETDATE() from inserted

END
GO
/****** Object:  Trigger [AuditInsertMH]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[AuditInsertMH]
ON [dbo].[MATHANG]
FOR Insert
AS
insert into MATHANG_Audit select *, 'I', GETDATE() FROM inserted
GO
/****** Object:  Trigger [AuditInsertHDN]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AuditInsertHDN] 
   ON  [dbo].[HOADONNHAP]
   AFTER INSERT
AS 
BEGIN
	insert into HOADONNHAP_Audit select *, 'I', GETDATE() FROM inserted

END
GO
/****** Object:  Trigger [AuditDeleteHDN]    Script Date: 03/16/2017 18:40:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[AuditDeleteHDN] 
   ON  [dbo].[HOADONNHAP]
   AFTER DELETE
AS 
BEGIN
	insert into HOADONNHAP_Audit select *, 'D', GETDATE() FROM deleted

END
GO
/****** Object:  Table [dbo].[CHITIETHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHDN](
	[SoHDN] [nchar](10) NULL,
	[MaMH] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[Thue] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000001', N'MHN00002  ', 20, 15000, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000037', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000002', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000002', N'MHB00004  ', 3, 25000, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000041', N'MHB00003  ', 2, 15500, 5)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000004', N'MHB00004  ', 3, 5000, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000042', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000009', N'MHN00001  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHN00001  ', 4, 53456, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHN00001  ', 4, 53456, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHN00001  ', 4, 53456, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHN00001  ', 4, 53456, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000022', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000025', N'MHB00004  ', 2, 10000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000026', N'MHB00004  ', 4, 1000000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000027', N'MHN00001  ', 3, 12000, 12)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000028', N'MHN00001  ', 3, 145000, 12)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000030', N'MHB00004  ', 2, 10000, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000031', N'MHB00004  ', 4, 10000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000032', N'MHB00003  ', 2, 50000, 5)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000032', N'MHN00001  ', 100, 15000, 2)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000033', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000033', N'MHB00004  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000033', N'MHN00001  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000034', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000036', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000036', N'MHB00004  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000038', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000039', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000040', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000043', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000044', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000045', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000045', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000045', N'MHB00004  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000047', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000048', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000004', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000006', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000007', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000008', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000009', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000010', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHN00001  ', 4, 53456, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000011', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000024', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000025', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000025', N'MHN00001  ', 5, 534758, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000026', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000027', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000028', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000029', N'MHB00003  ', 3, 10000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000030', N'MHB00003  ', 2, 100000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000031', N'MHB00003  ', 1, 1000000, 50)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000037', N'MHB00004  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000038', N'MHN00001  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000001', N'MHB00004  ', 2, 10000, 10)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000001', N'MHB00003  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000048', N'MHB00005  ', 1, 0, 0)
INSERT [dbo].[CHITIETHDN] ([SoHDN], [MaMH], [SoLuong], [DonGia], [Thue]) VALUES (N'HDN0000049', N'MHN00007  ', 2, 1, 200)
/****** Object:  Table [dbo].[CHITIETHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHDB](
	[SoHDB] [nchar](10) NULL,
	[MaMH] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CHITIETHDB] ([SoHDB], [MaMH], [SoLuong], [DonGia]) VALUES (N'HDB0000039', N'MHB00011  ', 2, 15000)
INSERT [dbo].[CHITIETHDB] ([SoHDB], [MaMH], [SoLuong], [DonGia]) VALUES (N'HDB0000040', N'MHB00010  ', 1, 10000)
INSERT [dbo].[CHITIETHDB] ([SoHDB], [MaMH], [SoLuong], [DonGia]) VALUES (N'HDB0000041', N'MHB00011  ', 1, 15000)
/****** Object:  Table [dbo].[CHITIETDDH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDDH](
	[SoDDH] [nchar](10) NULL,
	[MaMH] [nchar](10) NULL,
	[SoLuong] [int] NULL,
	[NgayNhan] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETEMH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETEMH] 
	@MaMH nchar(10)
AS
BEGIN

	DELETE FROM MATHANG
	WHERE MaMH = @MaMH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETEHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETEHDN] 
	@SoHDN nchar(10)
AS
BEGIN
	DELETE FROM HOADONNHAP
	WHERE SoHDN = @SoHDN

END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHICTHDB] 
	@SoLuong int
AS
BEGIN
	SELECT TenMH,SoLuong=@SoLuong,DonGia FROM MATHANG
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HDN_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HDN_Report] 
	@SoHDN nchar(10)
AS
BEGIN
	SELECT SoHDN, TenNCC ,SDT ,DiaChi ,Email,  NgayNhap, TongTien, GhiChu 
	FROM HOADONNHAP, NCC
	WHERE HOADONNHAP.MaNCC=NCC.MaNCC AND SoHDN=@SoHDN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIGOIMON]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHIGOIMON] 
	@MaMH nchar(10),
	@SoLuong int
AS
BEGIN
	SELECT TenMH,SoLuong=@SoLuong,DonGia FROM MATHANG
	where MaMH=@MaMH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIMH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHIMH] 
	
AS
BEGIN
	SELECT MaMH,TenMH,TenLH,DonGia,TenNCC FROM MATHANG, NCC
	WHERE MATHANG.MaNCC=NCC.MaNCC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHIHDN] 
	
AS
BEGIN
	SELECT SoHDN as "Số phiếu", TenNCC as "Tên NCC", NgayNhap as "Ngày nhập", TongTien as "Tổng tiền", GhiChu as "Ghi chú" 
	FROM HOADONNHAP,NCC
	WHERE HOADONNHAP.MaNCC=NCC.MaNCC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MH_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_MH_Report] 
	@MaMH nchar(10)
AS
BEGIN
	SELECT MaMH,TenMH,TenLH,DonGia,TenNCC FROM MATHANG, NCC
	WHERE MATHANG.MaNCC=NCC.MaNCC AND MaMH = @MaMH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTMH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTMH] 
	
	@TenMH nvarchar(50),
	@DonGia float,
	@TenLH nvarchar(50),
	@MaNCC nchar(10)
AS
BEGIN
	DECLARE @MaMH nchar(10)
	SELECT @MaMH = MAX(RIGHT(RTRIM(MaMH),5)) FROM MATHANG_Audit WHERE Audit_Type='I'
	SET @MaMH = 'MH' +LEFT(RTRIM(@TenLH),1)+ dbo.mamh(@MaMH)
	INSERT INTO MATHANG
	values (@MaMH,@TenMH,@DonGia,@TenLH,@MaNCC)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTHDN] 
	@MaNCC nchar(10),
	@NgayNhap smalldatetime,
	@GhiChu nvarchar(500),
	 @TongTien float	
AS
BEGIN
	DECLARE @SoHDN nchar(10)
	SELECT @SoHDN = MAX(RIGHT(RTRIM(SoHDN),7)) FROM HOADONNHAP_Audit WHERE Audit_Type='I'
	SET @SoHDN = 'HDN'+ dbo.mahd(@SoHDN)
	
	--DECLARE @TongTien float
	--SELECT @TongTien = SUM(SoLuong*DonGia) FROM CHITIETHDN WHERE CHITIETHDN.SoHDN=@SoHDN
	
	INSERT INTO HOADONNHAP
	values (@SoHDN,@MaNCC,@NgayNhap,@GhiChu,@TongTien)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEMH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATEMH] 
	@MaMH nchar(10),
	@TenMH nvarchar (50),
	@DonGia float,
	@TenLH nvarchar(50),
	@MaNCC nchar(10)
AS
BEGIN

	UPDATE MATHANG
	SET TenMH = @TenMH, DonGia=@DonGia, TenLH=@TenLH, MaNCC=@MaNCC
	WHERE MaMH=@MaMH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATEHDN] 
	@SoHDN nchar(10),
	@MaNCC nchar(10),
	@NgayNhap smalldatetime,
	@GhiChu nvarchar(500),
	 @TongTien float	
AS
BEGIN

	UPDATE HOADONNHAP
	SET MaNCC = @MaNCC, NgayNhap=@NgayNhap, GhiChu=@GhiChu, TongTien=@TongTien
	WHERE SoHDN=@SoHDN

END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMMH]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TIMKIEMMH] 
	@MaMH nchar(10),
	@TenMH nvarchar (50),
	@TenLH nvarchar(50),
	@TenNCC nchar(10)
AS
BEGIN
	SELECT MaMH,TenMH,TenLH,DonGia,TenNCC FROM MATHANG, NCC
	WHERE MATHANG.MaNCC=NCC.MaNCC
	AND( TenNCC = @TenNCC 
	or MaMH= @MaMH
	or TenMH like   @TenMH+'%'
	or TenLH like @TenLH+'%')
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TIMKIEMHDN] 
	@SoHDN nchar(10),
	@TenNCC nvarchar(50),
	@NgayNhap1 nvarchar(50),
	@NgayNhap2 nvarchar(50),
	@GhiChu nvarchar(500)
AS
BEGIN
DECLARE @ngay1 smalldatetime, @ngay2 smalldatetime
if (@NgayNhap1<>'null' and @NgayNhap2<>'null') 
	begin	
	SET @ngay1= CONVERT(smalldatetime,@NgayNhap1)
	SET @ngay2= CONVERT(smalldatetime,@NgayNhap2)
	print 1
	end
	else print 2
	SELECT SoHDN as "Số phiếu", TenNCC as "Tên NCC", NgayNhap as "Ngày nhập", TongTien as "Tổng tiền", GhiChu as "Ghi chú" 
	FROM HOADONNHAP,NCC
	WHERE HOADONNHAP.MaNCC=NCC.MaNCC
	AND( SoHDN=@SoHDN
	or TenNCC like '%'+  @TenNCC +'%'
	or GhiChu like '%'+ @GhiChu +'%'
	or NgayNhap between @ngay1 and @ngay2)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATECTHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATECTHDB] 
	@SoHDB nchar(10),
	@MaMH nchar(10),
	@SoLuong int,
	@DonGia float
AS
BEGIN
	UPDATE CHITIETHDB
	SET   SoLuong=@SoLuong, DonGia=@DonGia
	WHERE SoHDB=@SoHDB and MaMH=@MaMH

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTCTHDN] 
	@SoHDN nchar(10),
	@MaMH nchar(10),
	@SoLuong int,
	@DonGia float,
	@Thue float	
AS
BEGIN
	
	INSERT INTO CHITIETHDN
	values (@SoHDN,@MaMH,@SoLuong,@DonGia,@Thue)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDB]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INSERTCTHDB] 
	@SoHDB nchar(10),
	@MaMH nchar(10),
	@SoLuong int,
	@DonGia float
AS
BEGIN
	
	INSERT INTO CHITIETHDB
	values (@SoHDB,@MaMH,@SoLuong,@DonGia)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_HIENTHICTHDN] 
	
AS
BEGIN
	SELECT MATHANG.MaMH as "Mã mặt hàng", TenMH as "Tên mặt hàng", MATHANG.TenLH as "Loại", SoLuong as "Số lượng", CHITIETHDN.DonGia as "Đơn giá", Thue as "Thuế" 
	FROM CHITIETHDN,MATHANG
	WHERE CHITIETHDN.MaMH=MATHANG.MaMH
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DELETECTHDN]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DELETECTHDN] 
	@SoHDN nchar(10)
AS
BEGIN
	DELETE FROM CHITIETHDN
	WHERE SoHDN = @SoHDN

END
GO
/****** Object:  StoredProcedure [dbo].[SP_CTHDN_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CTHDN_Report] 
	@SoHDN nchar(10)
AS
BEGIN
	SELECT SoHDN , MATHANG.MaMH , TenMH , MATHANG.TenLH , SoLuong, CHITIETHDN.DonGia , Thue 
	FROM CHITIETHDN,MATHANG
	WHERE CHITIETHDN.MaMH=MATHANG.MaMH AND SoHDN=@SoHDN
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CTHDB_Report]    Script Date: 03/16/2017 18:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CTHDB_Report] 
	@SoHDB nchar(10)
AS
BEGIN
	SELECT SoHDB , MATHANG.MaMH , TenMH , SoLuong, CHITIETHDB.DonGia
	FROM CHITIETHDB,MATHANG
	WHERE CHITIETHDB.MaMH=MATHANG.MaMH AND SoHDB=@SoHDB
END
GO
/****** Object:  ForeignKey [FK_DONDATHANG_NCC]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_NCC]
GO
/****** Object:  ForeignKey [FK_MATHANG_LOAIHANG]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_LOAIHANG] FOREIGN KEY([TenLH])
REFERENCES [dbo].[LOAIHANG] ([TenLH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_LOAIHANG]
GO
/****** Object:  ForeignKey [FK_MATHANG_NCC]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_NCC]
GO
/****** Object:  ForeignKey [FK_HOADONNHAP_NCC]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_HOADONNHAP_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADONNHAP] CHECK CONSTRAINT [FK_HOADONNHAP_NCC]
GO
/****** Object:  ForeignKey [FK_CHITIETHDN_HOADONNHAP]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[CHITIETHDN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHDN_HOADONNHAP] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[HOADONNHAP] ([SoHDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDN] CHECK CONSTRAINT [FK_CHITIETHDN_HOADONNHAP]
GO
/****** Object:  ForeignKey [FK_CHITIETHDB_HOADONBAN]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[CHITIETHDB]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIETHDB_HOADONBAN] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[HOADONBAN] ([SoHDB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDB] CHECK CONSTRAINT [FK_CHITIETHDB_HOADONBAN]
GO
/****** Object:  ForeignKey [FK_CHITIETHDB_MATHANG1]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[CHITIETHDB]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHDB_MATHANG1] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MATHANG] ([MaMH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDB] CHECK CONSTRAINT [FK_CHITIETHDB_MATHANG1]
GO
/****** Object:  ForeignKey [FK_CHITIETDDH_DONDATHANG]    Script Date: 03/16/2017 18:40:21 ******/
ALTER TABLE [dbo].[CHITIETDDH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDDH_DONDATHANG] FOREIGN KEY([SoDDH])
REFERENCES [dbo].[DONDATHANG] ([SoDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDDH] CHECK CONSTRAINT [FK_CHITIETDDH_DONDATHANG]
GO
