USE [master]
GO
/****** Object:  Database [webbandienthoai]    Script Date: 06/19/2017 22:12:59 ******/
CREATE DATABASE [webbandienthoai] ON  PRIMARY 
( NAME = N'webbandienthoai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\webbandienthoai.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'webbandienthoai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\webbandienthoai_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [webbandienthoai] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webbandienthoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webbandienthoai] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [webbandienthoai] SET ANSI_NULLS OFF
GO
ALTER DATABASE [webbandienthoai] SET ANSI_PADDING OFF
GO
ALTER DATABASE [webbandienthoai] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [webbandienthoai] SET ARITHABORT OFF
GO
ALTER DATABASE [webbandienthoai] SET AUTO_CLOSE ON
GO
ALTER DATABASE [webbandienthoai] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [webbandienthoai] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [webbandienthoai] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [webbandienthoai] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [webbandienthoai] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [webbandienthoai] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [webbandienthoai] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [webbandienthoai] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [webbandienthoai] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [webbandienthoai] SET  ENABLE_BROKER
GO
ALTER DATABASE [webbandienthoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [webbandienthoai] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [webbandienthoai] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [webbandienthoai] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [webbandienthoai] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [webbandienthoai] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [webbandienthoai] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [webbandienthoai] SET  READ_WRITE
GO
ALTER DATABASE [webbandienthoai] SET RECOVERY SIMPLE
GO
ALTER DATABASE [webbandienthoai] SET  MULTI_USER
GO
ALTER DATABASE [webbandienthoai] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [webbandienthoai] SET DB_CHAINING OFF
GO
USE [webbandienthoai]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0b9baa28-65a8-4623-a489-63c907caa6b8', N'Admin')
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705020328216_InitialCreate', N'_1460650_.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA97C4488D750A676DB746E30BB24ED037832B71D742244A9128C746D12FEB433FA9BFD0A144DD78D16557DE5D17058AAC383C331C0EC9E1E8C8FFFEFDCFF89747DF331E7014BB013936F746BBA681891D382E591C9B099DBF7A6BFEF2EEFBEFC6678EFF687CCEE50E981CF424F1B1794F69786459B17D8F7D148F7CD78E823898D3911DF81672026B7F77F7676B6FCFC200610296618C3F2684BA3E4E7FC0CF49406C1CD20479978183BD983F8796698A6A5C211FC721B2F1B1994998C689E722D03EC5DEDC3410210145146C3BFA14E3298D02B29886F00079B74F2106B939F262CC6D3E2AC5BB9ABFBBCFCCB7CA8E39949DC434F07B02EE1D707F5862F7A5BC6A16FE028F9D8167E9131B75EAB563F3C2C1E9A38F81070E10151E4DBC880983630B1527717885E928EF38CA20CF2380FB16445F4655C41DA373BF9D227EF647BBECBF1D6392783489F031C1098D90B763DC2433CFB57FC74FB7C1174C8E0FF666F383B76F0E917370F81A1FBCA98E14C60A72B507F0E8260A421C816D785E8CDF34AC7A3F4BEC5874ABF4C9BC02B1044BC1342ED1E3074C16F41E16C9FE5BD338771FB1933FE1C1F589B8B072A0138D12F87995781E9A79B868B71A75B2FF3768DD7F733888D62BF4E02ED2A917F4C3C289605D7DC45EDA1ADFBB61B6BC6AF37DC7C5CEA3C067BFEBF195B5DE4D8324B2D96002ADC82D8A1698D6AD1B5B65F0760A6906357C58E7A8DB1FDACC5239BC95A26C40CBAC845CC5BA57436EEFF3EAED1C7127610893978616F34853C0DDEDBD3EDC3D7CB37B37CA8EAA91D077C7C805CAA8D9EB1A350446F37FDE04CF7CE47A03EC821DB440D23177231F17A37C1F40CC21D2DBE61B14C7B00938BFA1F8BEC174F8E700A64FB19D44109B538AFCF0D9B5DDDC07045F25FE8C85FCFA740D3635B7DF827364D3203A23ACD7CA781F02FB4B90D033E29C228A3F513B07643F6F5DBF3BC020E69CD8368EE3730866EC4C02C8A973C00B420FF67BC3B1DD69D359C8C443AEAF4E43847DF42E172D5311B584948E68C454294993A91F82854BBA999A8BEA4DCD245A4DE5627D4D6560DD2CE5927A435381563B33A9C192BC748686CFF252D8ED4FF3563BBC757B41C58D53D821F1AF98E008B631E706518A2352CE40977D6313C9423A7D4CE9B39F4DA9A6CFC84B8656B5D46A483781E157430ABBFDAB2135131E3FB80ECB4A3ADC7D726180EF24AFBE56B5AF39C1B2752F87DA30D7AD7C3D7B806EB99CC47160BBE92A5054BD78CDA26E3FE470467B01231B8D5804818141A0BBECC883273036530CAA6B728A3D4CB171626755C1098A6DE4C86E8401393D0CCB4F5485616531A46EDC4F924E88741CB14E885D826258A92EA1F2B27089ED86C86BF592D0B3E311C6C65EE8105B4E71880953D8EA892ECAD5B50F6640A1479894360F8DAD4AC43507A2266BD5CD795B0A5BCEBB5492584B4CB6E4CE9AB8E4F9DBB30466B3C7D6109CCD2EE96280B68EB78900E57795AE01205E5CB62D40851B932640794AB59600AD7B6C03015A77C98B0BD0EC8ADA75FE85FBEAB68567FDA2BCFE63BDD15D1B88CD9A3FB62C34B3DC13FA50E88123393C4F67AC113F52C5E50CECE4F7B398A7BA628830F029A6F5924D99EF2AF350AB19440CA226C032D05A40F91B4009485A503D8CCB6B798DD6F12CA2076C5E776B84E57BBF005B890119BBFA26B422A87F5F2A0667A7DB4731B2221AA420EF7459A8E0280242DCBCEA03EFE0145D5D56764C975CB84F365C19189F8C0607B564AE1A27E58319DC4B7968B67B499590F549C956F292903E69BC940F66702FF1186D77922229E89116ACE4A2FA113ED062CB2B1DC56953B48DAD8C14C51F8C2D0D7B6A7C89C2D0258B0A9B8A3F31A619956AF26ADA9F6FE46718961D2B684785B585261A4468818556500D969EBB514C4F114533C4EA3C13C797C49467AB66FBCF55568F4F7912F373209766FFCE7AF0B7F5B5F3554E4078BF731895CFB298B474AE987375778331DA90872245B57E1278894FF44995BE77F6CEAEDA3F7B22238C2DC17E2969923C24A5B67577779A0C7921AC3031459EB2FCE4E821742ECEB3CCAA937599A71E252F44555174C5A98D4D962E61699D2031FFEB3F3FAD08CFB37E38E9A40AC01FF5C4A8F01624B04A5B77D43AB5A48A596FE98E28F047AA9042530F2BAB2C919A91D586A5F0341E554B74D720F342AAE8726B77640543A40AAD685E025B61B3D8D61D554122A9022B9ABB63978C1271E3DCE2134A7B2BE975446597D5D5CE280DC6F3EC82C31C719577F255A0CAE39E58FCADBB04C69F6F6504696F6CBD2228AB4BAC16411A0CFD0E537B835DDF601A5FBBEB316BAFA56B9B78D36B793D5EBF387DD668902E69A248A1BDB8AC0997B231BF20B57FF722DD983211D3C8DD0807F8534CB13F6202A3E9576FE2B9986DD7B9C02522EE1CC734A3629870A17B2B7C46B33D9FB45871EC788A0BA6EEBB96FA9CAD8155451E5064DFA348E638ACF0D947092A958F2F88831F8FCD3FD35E47692582FD2B7DBC635CC49F88FB358186DB28C1C65F326773181A7CF3056A4B3F5AE8EED58B3FEEB2AE3BC675042BE6C8D8157CB9CC0CD73F65E8654DD675056B96FEC0E1E52EA8DA27044A5461412CFFC5C0CCA5837C2D905BF9838F1E7FEC6B9AF28B80951015ACFFA1F00671A18ED5BF0C9696D1EFC04F9A32FAFB0D56CDF05FC6342DBBDF25FDC1446E7FF76D28EFB9C1A346710F5AC79694FAB9951BBD125172D3679344A15E69A1CB34E91E702B50A197888C17C6221EEC7454908407C3DE64683F3B33785BC8C0254D63B31CE075D27E1B5EF9FCAFD8BE5BC04F53F06D36CFE95D77ACE96AB75B4E8CECC7DCDDB260E32CACCDF373D71D6CBA32EF96075B2F16EE96C5DAA6CECF0D475AE72374E39C5A991EA47907A3AA05B77166B3C239DCF0670104419651669F3AAA495A4D04D31685A5885EA99E1D262A96168EA457926856DB6FACFCC06F1C2C976956ABE15436E9E6FB7FA36E2ED3AC5BC354DC04DB57C9155431B05BF6B12682D34B62F7D646D242266FCB591B5FA8BF2432EF204EA9AD1ECD3BE297C3DD1DC425432E9D1E5C5DF9752F9C9D953F8608E777EC2E4A08F6A71109B66BA766217341E6417E780B16E5224285E61253E4C0917A1251778E6C0ACDACC69C7EAB9DD6EDD89B8E19762EC87542C384C290B13FF36A052F960434E94F09C9759BC7D761FA674786180298E9B2DAFC35799FB89E53D87DAEA80969205876C12BBA6C2E29ABEC2E9E0AA4AB807404E2EE2B92A25BEC871E80C5D7648A1EF032B641F87DC00B643F9515401D48FB44D4DD3E3E75D122427ECC31CAFEF01362D8F11FDFFD07FF94D3C713540000, N'6.1.3-40302')
/****** Object:  Table [dbo].[nhasx]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhasx](
	[ID] [int] NOT NULL,
	[TenNSX] [varchar](100) NOT NULL,
	[HinhAnh] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (1, N'Apple', N'images/ima/logo/apple-logo_318-40184.jpg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (2, N'SamSung', N'images/ima/logo/samsung-logo.jpg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (3, N'HTC', N'images/ima/logo/HTC-Logo.jpg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (4, N'LG', N'images/ima/logo/LG_LOGO_NEW.jpg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (5, N'Sony', N'images/ima/logo/sony-logo.jpg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (6, N'Nokia', N'images/ima/logo/Nokia_logo-3.jpeg')
INSERT [dbo].[nhasx] ([ID], [TenNSX], [HinhAnh]) VALUES (7, N'Blackberry', N'images/ima/logo/Blackberry_logo-2.jpg')
/****** Object:  Table [dbo].[loaisp]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loaisp](
	[ID] [int] NOT NULL,
	[TenLoai] [varchar](100) NOT NULL,
	[hinhanh] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (1, N'iPhone', N'img/brand1.png')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (2, N'SamSung Galaxy', N'img/brand3.png')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (3, N'HTC', N'img/brand5.png')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (4, N'LG', N'img/brand6.png')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (5, N'Sony Xperia', N'images/ima/logo/sony-logo.jpg')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (6, N'Nokia Lumia', N'images/ima/logo/Nokia_logo-3.jpeg')
INSERT [dbo].[loaisp] ([ID], [TenLoai], [hinhanh]) VALUES (7, N'Blackberry', N'images/ima/logo/Blackberry_logo-2.jpg')
/****** Object:  Table [dbo].[hoadon]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[MaDH] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayGiao] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[hoadon] ([MaDH], [TongTien], [NgayGiao]) VALUES (1, 222900000, CAST(0x473C0B00 AS Date))
INSERT [dbo].[hoadon] ([MaDH], [TongTien], [NgayGiao]) VALUES (2, 34950000, CAST(0x483C0B00 AS Date))
INSERT [dbo].[hoadon] ([MaDH], [TongTien], [NgayGiao]) VALUES (3, 119800000, CAST(0x453C0B00 AS Date))
INSERT [dbo].[hoadon] ([MaDH], [TongTien], [NgayGiao]) VALUES (4, 238200000, CAST(0x483C0B00 AS Date))
/****** Object:  Table [dbo].[GioHang2]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_GioHang2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioHang2] ON
INSERT [dbo].[GioHang2] ([id], [MaTaiKhoan], [MaSanPham], [TenSanPham], [SoLuong], [Gia], [TongTien]) VALUES (7, N'71a2c273-4395-46be-b71c-9e014633ead0', 24, NULL, 12, NULL, NULL)
SET IDENTITY_INSERT [dbo].[GioHang2] OFF
/****** Object:  Table [dbo].[giohang]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[giohang](
	[Username] [varchar](100) NOT NULL,
	[MaSP] [int] NULL,
	[DonGia] [int] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[giohang] ([Username], [MaSP], [DonGia], [SoLuong]) VALUES (N'admin@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[giohang] ([Username], [MaSP], [DonGia], [SoLuong]) VALUES (N'user1@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[giohang] ([Username], [MaSP], [DonGia], [SoLuong]) VALUES (N'user2@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[giohang] ([Username], [MaSP], [DonGia], [SoLuong]) VALUES (N'user3@gmail.com', NULL, NULL, NULL)
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [HoTen], [DiaChi]) VALUES (N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', 0, N'APjVC4VyPEC1DRH+Kfe2K0NRlmoBrbNmy1FeedajgwrdfbL/QVchCch0J2idYOmBkQ==', N'da575660-3ec1-42b7-8632-465b23d7b9cb', NULL, 0, 0, NULL, 1, 0, N'myngoc1234@gmail.com', N'Lưu Mỹ Ngọc', N'TPHCM')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [HoTen], [DiaChi]) VALUES (N'ad1bb43d-a3d4-4c76-9d48-fef34b5bc90d', N'myngoc@gmail.com', 0, N'AN9DjPQxakUeNNWgV48Cq/edx2sc1OYjyMuAT+UnQrmKDU2nHJP2b6XN/RjjY8e4aA==', N'b3d6f454-877d-4546-bc77-578cbab6309d', NULL, 0, 0, NULL, 0, 0, N'myngoc@gmail.com', N'Vũ Thị Mỹ Trinh', N'TPHCM')
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ad1bb43d-a3d4-4c76-9d48-fef34b5bc90d', N'0b9baa28-65a8-4623-a489-63c907caa6b8')
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taikhoan](
	[Username] [varchar](100) NOT NULL,
	[Pass] [varchar](100) NOT NULL,
	[HoTen] [varchar](100) NULL,
	[DiaChi] [varchar](250) NULL,
	[SDT] [varchar](20) NULL,
	[Level] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[taikhoan] ([Username], [Pass], [HoTen], [DiaChi], [SDT], [Level]) VALUES (N'admin@gmail.com', N'123', N'User4', N'TP.HCM', N'123456789', N'admin')
INSERT [dbo].[taikhoan] ([Username], [Pass], [HoTen], [DiaChi], [SDT], [Level]) VALUES (N'user1@gmail.com', N'123', N'User1', N'TP.HCM', N'012267816320', N'user')
INSERT [dbo].[taikhoan] ([Username], [Pass], [HoTen], [DiaChi], [SDT], [Level]) VALUES (N'user2@gmail.com', N'123', N'User2', N'H?i Phòng', N'0909851378', N'user')
INSERT [dbo].[taikhoan] ([Username], [Pass], [HoTen], [DiaChi], [SDT], [Level]) VALUES (N'user3@gmail.com', N'123', N'User3', N'Hà N?i', N'08461216785', N'user')
/****** Object:  Table [dbo].[sanpham]    Script Date: 06/19/2017 22:13:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sanpham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [varchar](100) NOT NULL,
	[hinhanh] [varchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[MaLoai] [int] NOT NULL,
	[NhaSX] [int] NOT NULL,
	[SoLuongTon] [int] NOT NULL,
	[MoTa] [nvarchar](50) NOT NULL,
	[BiXoa] [int] NOT NULL,
 CONSTRAINT [PK__sanpham__FAC7442D0EA330E9] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[sanpham] ON
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (1, N'iPhone SE 16GB', N'/images/ima/iphone-se-16gb-2-190x190.jpg', 89900000, 1, 1, 100, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (2, N'IPHONE 5S 16GB', N'/images/ima/iphone-5s-16gb-13-200x200.jpg', 6990000, 1, 1, 20, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (3, N'iPhone ', N'/images/ima/Iphone.jpg', 7990000, 1, 1, 50, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (4, N'iPhone 7 Plus 128GB', N'/images/ima/iphone-7-plus-13-200x200.jpg', 25190000, 1, 1, 50, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (5, N'iPhone 7', N'/images/ima/iphone-7-9-200x200.jpg', 22290000, 1, 1, 100, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (6, N'Samsung Galaxy A9 Pro', N'/images/ima/samsung-galaxy-a9-pro-300-190x190.jpg', 10990000, 2, 2, 60, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (7, N'SamSung Galaxy J5', N'/images/ima/samsung-galaxy-j5-prime-1-190x190.jpg', 6290000, 2, 2, 30, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (8, N'Samsung Galaxy J7', N'/images/ima/samsung-galaxy-j7-15-300x300.jpg', 8990000, 2, 2, 50, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (9, N'SamSung Galaxy S7', N'/images/ima/samsung-galaxy-s7-edge-blue-coral-edition-200x200.jpg', 14990000, 2, 2, 55, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (10, N'SamSung Galaxy J2', N'/images/ima/samsung-galaxy-j2-7-200x200.jpg', 2690000, 2, 2, 70, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (11, N'HTC desire 826', N'/images/ima/htc-desire-826-selfie-2-300x300.jpg', 14990000, 3, 3, 20, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (12, N'HTC Desire 626', N'/images/ima/htc-desire-626g-300x300.jpg', 4392000, 3, 3, 60, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (13, N'HTC 628', N'/images/ima/htc-desire-628-12-300x300.jpg', 3832000, 3, 3, 40, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (14, N'HTC 10 ', N'/images/ima/htc-desire-10-pro-300x300.jpg', 8990000, 3, 3, 50, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (15, N'LG G3- F400', N'/images/ima/lg-g3-chinh-hang-720x500.jpg', 2200000, 4, 4, 20, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (16, N'LG G5', N'/images/ima/dt-lg-g5-720x500.jpg', 5990000, 4, 4, 40, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (17, N'LG LTE 2', N'/images/ima/lg-lte2.jpg', 1250000, 4, 4, 10, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (18, N'LG G PRO 2', N'/images/ima/lg-g-pro-2.jpg', 2400000, 4, 4, 42, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (19, N'LG G4- F500', N'/images/ima/lg_G4_02.jpg', 3000000, 4, 4, 35, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (20, N'Blackberry Bold 9900 Likenew', N'/images/ima/blackberry-bold-9900.jpg', 1390000, 7, 7, 34, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (21, N'Blackberry Z10 ', N'/images/ima/blackberry-shop-blackberry-z10-trang-1.jpg', 2190000, 7, 7, 20, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (22, N'Blackberry Classic Q20', N'/images/ima/blackberry-classic-q20.jpg', 49000000, 7, 7, 24, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (23, N'Blackberry Passport', N'/images/ima/blackberry-passport-den.jpg', 4590000, 7, 7, 16, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (24, N'Blackberry Z30', N'/images/ima/blackberry-z30-635.jpg', 3790000, 7, 7, 34, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (25, N'Blackberry Q10', N'/images/ima/BlackBerry-Q10-trang-den-chinh-hang-dau-den-526x275.jpg', 2090000, 7, 7, 18, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (26, N'Sony Xperia XA', N'/images/ima/b1-2.jpg', 25000000, 5, 5, 30, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (27, N'Sony Xperia M5 (Single SIM)', N'/images/ima/m5-1.jpg', 6990000, 5, 5, 45, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (28, N'Sony Xperia XA Ultra', N'/images/ima/xperia-xa-ultra.jpg', 7490000, 5, 5, 35, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (29, N'Sony Xperia X', N'/images/ima/sony-xperia-x-300x300.jpg', 9990000, 5, 5, 37, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (30, N'Nokia Lumia 730 Dual SIM', N'/images/ima/thiet-ke-nokia-lumia-730-dual-sim.jpg', 2290000, 6, 6, 20, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (31, N'Nokia Lumia 1020', N'/images/ima/5383031480_nokia-lumia-1020-.jpg', 4490000, 6, 6, 23, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (32, N'Nokia Lumia 930', N'/images/ima/Nokia-Lumia-930-Apps.jpg', 4999000, 6, 6, 30, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (33, N'Nokia Lumia 630', N'/images/ima/Nokia-Lumia-630-4.jpg', 1290000, 6, 6, 5, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (34, N'Nokia Lumia 830', N'/images/ima/nokia-limia-830.jpg', 2990000, 6, 6, 15, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (35, N'Nokia Lumia 925', N'/images/ima/nokia-lumia-925-id20297.jpg', 1990000, 6, 6, 36, N'thiết kế rẻ đẹp', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (36, N'Nokia', N'/images/d3ed8dae-7c10-416c-bfd8-a0e30c22d722.jpg', 5400000, 1, 1, 23, N'<p>Dep re&nbsp;</p>
', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (37, N'Iphone Telephone', N'/images/ce2ddd07-d5ff-48ec-98c5-539e77548d5a.jpg', 250000, 1, 1, 30, N'<p>thiet ke dep qua</p>
', 1)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (40, N'Iphone Telephone', N'/images/bf90f9ef-59a5-489c-b86a-976f63f581a8.jpg', 4500000, 2, 2, 24, N'<p>abcdef</p>
', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (41, N'IPhone 5s', N'/images/caf982cd-7c86-494a-bc6f-94c11623cb7e.jpg', 7500000, 3, 3, 36, N'<p>Thiet ke re dep</p>
', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (42, N'Iphone 3', N'/images/e14da898-6270-43e0-828e-74512f3bb12b.jpg', 23000000, 1, 1, 45, N'<p>Thiet ke re dep</p>
', 0)
INSERT [dbo].[sanpham] ([MaSanPham], [TenSanPham], [hinhanh], [Gia], [MaLoai], [NhaSX], [SoLuongTon], [MoTa], [BiXoa]) VALUES (43, N'Nokia 3', N'/images/caf3c315-a244-437c-a1e6-3fef4ab774ec.jpg', 5000000, 3, 3, 56, N'<p>Re dep&nbsp;</p>
', 0)
SET IDENTITY_INSERT [dbo].[sanpham] OFF
/****** Object:  View [dbo].[v_GioHang]    Script Date: 06/19/2017 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GioHang]
AS
SELECT     dbo.GioHang2.*, dbo.sanpham.TenSanPham
FROM         dbo.GioHang2 INNER JOIN
                      dbo.sanpham ON dbo.GioHang2.MaSanPham = dbo.sanpham.MaSanPham
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang2"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sanpham"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 125
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 06/19/2017 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NOT NULL,
	[TenTaiKhoan] [nvarchar](1024) NOT NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[Ngay] [datetime] NOT NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BinhLuan] ON
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (1, 1, N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', N'dep qua ', 1, CAST(0x0000A76C00E82855 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (2, 4, N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', N'dep qua ', 1, CAST(0x0000A76C00E89F61 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (3, 1, N'ad1bb43d-a3d4-4c76-9d48-fef34b5bc90d', N'myngoc@gmail.com', N'dep thiet', 1, CAST(0x0000A78A01261BC8 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (4, 1, N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', N'Thiet ke qua dep', 1, CAST(0x0000A78B01669186 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (5, 3, N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', N'dep qua', 1, CAST(0x0000A79601167229 AS DateTime))
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaSanPham], [MaTaiKhoan], [TenTaiKhoan], [NoiDung], [TinhTrang], [Ngay]) VALUES (6, 18, N'71a2c273-4395-46be-b71c-9e014633ead0', N'myngoc1234@gmail.com', N'quá đẹp luôn', 1, CAST(0x0000A79701617C57 AS DateTime))
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
/****** Object:  Table [dbo].[donhang]    Script Date: 06/19/2017 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[donhang](
	[ID] [int] NOT NULL,
	[MaKH] [varchar](100) NOT NULL,
	[NgayDat] [date] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[GhiChu] [varchar](250) NOT NULL,
 CONSTRAINT [PK__donhang__3214EC27145C0A3F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[donhang] ([ID], [MaKH], [NgayDat], [TinhTrang], [GhiChu]) VALUES (1, N'user1@gmail.com', CAST(0x443C0B00 AS Date), N'Đã hoàn tất', N'')
INSERT [dbo].[donhang] ([ID], [MaKH], [NgayDat], [TinhTrang], [GhiChu]) VALUES (2, N'user2@gmail.com', CAST(0x453C0B00 AS Date), N'Chưa hoàn tất', N'30-12 ph?i có hàng')
INSERT [dbo].[donhang] ([ID], [MaKH], [NgayDat], [TinhTrang], [GhiChu]) VALUES (3, N'user3@gmail.com', CAST(0x423C0B00 AS Date), N'Đã hoàn tất', N'')
INSERT [dbo].[donhang] ([ID], [MaKH], [NgayDat], [TinhTrang], [GhiChu]) VALUES (4, N'admin@gmail.com', CAST(0x463C0B00 AS Date), N'Đã hoàn tất', N'')
/****** Object:  Table [dbo].[ctdonhang]    Script Date: 06/19/2017 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctdonhang](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK__ctdonhan__F557D6E0182C9B23] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ctdonhang] ([MaDH], [MaSP], [DonGia], [SoLuong]) VALUES (1, 5, 22290000, 10)
INSERT [dbo].[ctdonhang] ([MaDH], [MaSP], [DonGia], [SoLuong]) VALUES (2, 2, 6990000, 5)
INSERT [dbo].[ctdonhang] ([MaDH], [MaSP], [DonGia], [SoLuong]) VALUES (3, 16, 5990000, 20)
INSERT [dbo].[ctdonhang] ([MaDH], [MaSP], [DonGia], [SoLuong]) VALUES (4, 8, 8990000, 25)
INSERT [dbo].[ctdonhang] ([MaDH], [MaSP], [DonGia], [SoLuong]) VALUES (4, 10, 2690000, 5)
/****** Object:  Default [DF__giohang__MaSP__1A14E395]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[giohang] ADD  DEFAULT (NULL) FOR [MaSP]
GO
/****** Object:  Default [DF__giohang__DonGia__1B0907CE]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[giohang] ADD  DEFAULT (NULL) FOR [DonGia]
GO
/****** Object:  Default [DF__giohang__SoLuong__1BFD2C07]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[giohang] ADD  DEFAULT (NULL) FOR [SoLuong]
GO
/****** Object:  Default [DF_BinhLuan_TinhTrang]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((1)) FOR [TinhTrang]
GO
/****** Object:  Default [DF_BinhLuan_Ngay]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[BinhLuan] ADD  CONSTRAINT [DF_BinhLuan_Ngay]  DEFAULT (getdate()) FOR [Ngay]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_taikhoan_giohang]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[taikhoan]  WITH CHECK ADD  CONSTRAINT [FK_taikhoan_giohang] FOREIGN KEY([Username])
REFERENCES [dbo].[giohang] ([Username])
GO
ALTER TABLE [dbo].[taikhoan] CHECK CONSTRAINT [FK_taikhoan_giohang]
GO
/****** Object:  ForeignKey [FK_sanpham_loaisp]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_loaisp] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[loaisp] ([ID])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_loaisp]
GO
/****** Object:  ForeignKey [FK_sanpham_nhasx]    Script Date: 06/19/2017 22:13:01 ******/
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_nhasx] FOREIGN KEY([NhaSX])
REFERENCES [dbo].[nhasx] ([ID])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_nhasx]
GO
/****** Object:  ForeignKey [FK_BinhLuan_AspNetUsers]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
/****** Object:  ForeignKey [FK_BinhLuan_sanpham]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_sanpham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[sanpham] ([MaSanPham])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_sanpham]
GO
/****** Object:  ForeignKey [FK_donhang_taikhoan]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[donhang]  WITH CHECK ADD  CONSTRAINT [FK_donhang_taikhoan] FOREIGN KEY([MaKH])
REFERENCES [dbo].[taikhoan] ([Username])
GO
ALTER TABLE [dbo].[donhang] CHECK CONSTRAINT [FK_donhang_taikhoan]
GO
/****** Object:  ForeignKey [FK_ctdonhang_donhang]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[ctdonhang]  WITH CHECK ADD  CONSTRAINT [FK_ctdonhang_donhang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[donhang] ([ID])
GO
ALTER TABLE [dbo].[ctdonhang] CHECK CONSTRAINT [FK_ctdonhang_donhang]
GO
/****** Object:  ForeignKey [FK_ctdonhang_sanpham]    Script Date: 06/19/2017 22:13:06 ******/
ALTER TABLE [dbo].[ctdonhang]  WITH CHECK ADD  CONSTRAINT [FK_ctdonhang_sanpham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[sanpham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ctdonhang] CHECK CONSTRAINT [FK_ctdonhang_sanpham]
GO
