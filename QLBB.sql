USE [QLBB]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 04/24/2017 13:07:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[GrowNumber10]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Table [dbo].[NCC_Audit]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  UserDefinedFunction [dbo].[mancc]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  UserDefinedFunction [dbo].[mamh]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  UserDefinedFunction [dbo].[mahd]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[HOADONNHAP_Audit]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[MATHANG_Audit]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[CTHDB]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[BAN]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[HOADONBAN_Audit]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[HOADONBAN]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[NCC]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDBT]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETECTHDBT]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETEBAN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDBT]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHILH]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTBAN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHISoCTHDBT]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TAIKHOAN]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_COUNTBAN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMSoCTHDBT]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATECTHDBT]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATEHDB]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMNCC]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATENCC]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTNCC]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMHDB]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NCC_Report]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHINCC]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETEHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HDB_Report]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETENCC]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  Table [dbo].[MATHANG]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[HOADONNHAP]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Trigger [AuditInsertHDB]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Trigger [AuditInsertNCC]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Trigger [AuditUpdateHDN]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Trigger [AuditInsertMH]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Trigger [AuditInsertHDN]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Trigger [AuditDeleteHDN]    Script Date: 04/24/2017 13:07:42 ******/
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
/****** Object:  Table [dbo].[CHITIETHDN]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[CHITIETHDB]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  Table [dbo].[CHITIETDDH]    Script Date: 04/24/2017 13:07:39 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETEMH]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETEHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HDN_Report]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIGOIMON]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIMH]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHIHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_MH_Report]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTMH]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATEMH]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATEHDN]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMMH]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_TIMKIEMHDN]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_UPDATECTHDB]    Script Date: 04/24/2017 13:07:35 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_INSERTCTHDB]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_HIENTHICTHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DELETECTHDN]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CTHDN_Report]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_CTHDB_Report]    Script Date: 04/24/2017 13:07:34 ******/
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
/****** Object:  ForeignKey [FK_CHITIETDDH_DONDATHANG]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[CHITIETDDH]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDDH_DONDATHANG] FOREIGN KEY([SoDDH])
REFERENCES [dbo].[DONDATHANG] ([SoDDH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETDDH] CHECK CONSTRAINT [FK_CHITIETDDH_DONDATHANG]
GO
/****** Object:  ForeignKey [FK_CHITIETHDB_HOADONBAN]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[CHITIETHDB]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIETHDB_HOADONBAN] FOREIGN KEY([SoHDB])
REFERENCES [dbo].[HOADONBAN] ([SoHDB])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDB] CHECK CONSTRAINT [FK_CHITIETHDB_HOADONBAN]
GO
/****** Object:  ForeignKey [FK_CHITIETHDB_MATHANG1]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[CHITIETHDB]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHDB_MATHANG1] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MATHANG] ([MaMH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDB] CHECK CONSTRAINT [FK_CHITIETHDB_MATHANG1]
GO
/****** Object:  ForeignKey [FK_CHITIETHDN_HOADONNHAP]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[CHITIETHDN]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHDN_HOADONNHAP] FOREIGN KEY([SoHDN])
REFERENCES [dbo].[HOADONNHAP] ([SoHDN])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CHITIETHDN] CHECK CONSTRAINT [FK_CHITIETHDN_HOADONNHAP]
GO
/****** Object:  ForeignKey [FK_DONDATHANG_NCC]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_NCC]
GO
/****** Object:  ForeignKey [FK_HOADONNHAP_NCC]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[HOADONNHAP]  WITH CHECK ADD  CONSTRAINT [FK_HOADONNHAP_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOADONNHAP] CHECK CONSTRAINT [FK_HOADONNHAP_NCC]
GO
/****** Object:  ForeignKey [FK_MATHANG_LOAIHANG]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_LOAIHANG] FOREIGN KEY([TenLH])
REFERENCES [dbo].[LOAIHANG] ([TenLH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_LOAIHANG]
GO
/****** Object:  ForeignKey [FK_MATHANG_NCC]    Script Date: 04/24/2017 13:07:39 ******/
ALTER TABLE [dbo].[MATHANG]  WITH CHECK ADD  CONSTRAINT [FK_MATHANG_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NCC] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MATHANG] CHECK CONSTRAINT [FK_MATHANG_NCC]
GO
