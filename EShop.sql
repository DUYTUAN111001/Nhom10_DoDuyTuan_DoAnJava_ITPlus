USE [EShop]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Province] [nvarchar](50) NOT NULL,
	[District] [nvarchar](50) NOT NULL,
	[Ward] [nvarchar](50) NOT NULL,
	[Detail] [nvarchar](200) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[NameSearch] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](255) NOT NULL,
	[Star] [int] NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Status] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Price] [int] NOT NULL,
	[Quality] [int] NOT NULL,
	[ApplyDay] [date] NOT NULL,
	[Expiration] [date] NOT NULL,
	[MoneyLimit] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[StartDay] [date] NOT NULL,
	[Salary] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
	[User_Id] [int] NOT NULL,
	[Image] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InformationShop]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InformationShop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Active] [bit] NULL,
	[TimeOpen] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Fax] [varchar](15) NOT NULL,
	[Email] [varchar](25) NOT NULL,
	[LogoFooter] [varchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [varchar](100) NOT NULL,
	[Banner] [varchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuOne]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuOne](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTwo]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTwo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameSearch] [nvarchar](50) NOT NULL,
	[Menu1_Id] [int] NOT NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Discount_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Comment] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Point] [int] NULL,
	[Quality] [int] NOT NULL,
	[Views] [int] NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Specification] [nvarchar](max) NOT NULL,
	[Image1] [nvarchar](100) NOT NULL,
	[Image2] [nvarchar](100) NOT NULL,
	[Image3] [nvarchar](100) NOT NULL,
	[Image4] [nvarchar](100) NOT NULL,
	[Image5] [nvarchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
	[Manu_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
	[NameSearch] [varchar](50) NOT NULL,
	[Color] [nvarchar](20) NULL,
	[Memory] [nvarchar](10) NULL,
	[CreateDay] [datetime] NULL,
	[PersonCreate] [int] NOT NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[UpdateDay] [datetime] NULL,
	[PersonUpdate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/14/2022 12:10:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[FullName] [nvarchar](125) NOT NULL,
	[Point] [int] NULL,
	[Birthday] [date] NULL,
	[CreateDay] [datetime] NULL,
	[DeleteDay] [datetime] NULL,
	[PersonDelete] [int] NULL,
	[Sex] [int] NULL,
	[Subscribe] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (1, N'Khoa Phạm', N'0832977769', N'Đồng Nai', N'Long Thành', N'Cẩm Đường', N'123 quốc lộ 13, phường Hiệp Bình Phước, quận Thủ Đức, TP.Hồ Chí Minh', 3)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (62, N'Phạm Minh Tuấn', N'0922244422', N'Bình Thuận  ', N'Bắc Bình', N'Lương Sơn', N'420 ql 13, phường 123, quận Thủ Đức', 3)
INSERT [dbo].[Address] ([Id], [FullName], [Phone], [Province], [District], [Ward], [Detail], [User_Id]) VALUES (63, N'Trần Thị Nở', N'0932255222', N'Hồ Chí Minh', N'Phú Nhuận', N'5', N'550 quốc lộ 13, Phường 5, Quận Phú Nhuận, TP.HCM', 3)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (2, N'Máy tính', N'9-20x20.png', N'cat_banner-1450x300.jpg', N'Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style.', CAST(N'2021-09-20T19:09:20.993' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:56:33.610' AS DateTime), 3, N'may-tinh')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (3, N'Phụ kiện', N'5-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:17:20.360' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:57:04.683' AS DateTime), 3, N'phu-kien')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (4, N'Máy ảnh', N'2-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:18:06.043' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:56:49.137' AS DateTime), 3, N'may-anh')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (5, N'Tablet', N'6-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:19:40.737' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:57:36.573' AS DateTime), 3, N'may-tinh-bang')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (6, N'Điện thoại', N'11-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:22:23.947' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:57:48.607' AS DateTime), 3, N'dien-thoai')
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (7, N'Máy chơi game', N'4-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:24:22.287' AS DateTime), 3, CAST(N'2021-09-27T13:23:45.097' AS DateTime), 3, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (8, N'Đồng hồ', N'10-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T06:02:54.557' AS DateTime), 3, CAST(N'2021-09-27T13:41:45.147' AS DateTime), 3, CAST(N'2021-09-22T10:01:44.787' AS DateTime), 3, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (9, N'Máy in', N'10-20x20.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T06:03:43.933' AS DateTime), 3, CAST(N'2021-09-27T13:41:41.413' AS DateTime), 3, NULL, 0, NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [NameSearch]) VALUES (10, N'Sim, Thẻ cào', N'11-20x20.png', N'cat_banner-1450x300.jpg', N'Công ty cổ phần Thế Giới Di Động. GPDKKD: 0303217354 do sở KH & ĐT TP.HCM cấp ngày 02/01/2007. GPMXH: 238/GP-BTTTT do Bộ Thông Tin và Truyền Thông cấp ngày 04/06/2020.', CAST(N'2021-09-27T13:44:19.857' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T19:57:20.057' AS DateTime), 3, N'sim-the-cao')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (4, N'Điện thoại cấu hình mạnh, dùng ok', 5, 3, 18, CAST(N'2021-11-12' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (7, N'dasdada', 4, 3, 3, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (8, N'adsdasdadasdasdas', 4, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (9, N'dgfgdgfsdfsfsdfsSadasdvcdfas', 5, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (10, N'bdghjhjrytyrtyrteerete', 4, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (11, N'bcsfsferwrwerweqw', 5, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (12, N'klyuttrertwereqfsds', 4, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
INSERT [dbo].[Comments] ([Id], [Content], [Star], [User_Id], [Product_Id], [Date], [Status]) VALUES (13, N'jhtrterwerwq', 4, 3, 10, CAST(N'2021-11-13' AS Date), N'1')
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([Id], [Name], [Code], [Price], [Quality], [ApplyDay], [Expiration], [MoneyLimit], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Giảm giá nhân ngày 20/10 3', N'QTPN2010', 400000, 4, CAST(N'2021-10-20' AS Date), CAST(N'2021-10-25' AS Date), 200000, CAST(N'2021-10-20T23:02:14.327' AS DateTime), 3, NULL, 0, CAST(N'2021-10-21T06:34:05.477' AS DateTime), 3)
INSERT [dbo].[Discount] ([Id], [Name], [Code], [Price], [Quality], [ApplyDay], [Expiration], [MoneyLimit], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Giảm giá đơn hàng trên 1 triệu', N'DEMO02', 500000, 3, CAST(N'2021-10-25' AS Date), CAST(N'2021-10-28' AS Date), 1000000, CAST(N'2021-10-25T21:16:11.980' AS DateTime), 3, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (1, N'Software 4.2', N'Fresher Development', N'0123456789', CAST(N'2021-03-05' AS Date), 13000000, CAST(N'2021-09-10T10:50:18.707' AS DateTime), 0, NULL, 0, NULL, 0, 3, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (2, N'Software 3.1', N'Web Development', N'0333666111', CAST(N'2021-01-08' AS Date), 9300000, CAST(N'2021-09-10T11:14:51.997' AS DateTime), 3, NULL, 0, NULL, 0, 1, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (24, N'Software 4.5', N'Fresher Java', N'0832977777', CAST(N'2021-09-23' AS Date), 4500000, CAST(N'2021-09-16T11:52:00.997' AS DateTime), 3, NULL, 0, CAST(N'2021-09-17T18:03:33.487' AS DateTime), 3, 39, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (25, N'Software 4.2', N'Fresher Java', N'0832977767', CAST(N'2021-08-31' AS Date), 4000000, CAST(N'2021-09-16T11:53:18.593' AS DateTime), 3, CAST(N'2021-09-17T06:24:51.960' AS DateTime), 3, NULL, 0, 40, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (26, N'Team Android 5.4', N'Manager Project', N'0923456789', CAST(N'2021-09-15' AS Date), 9000000, CAST(N'2021-09-17T19:08:26.167' AS DateTime), 39, NULL, 0, NULL, 0, 41, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (27, N'Developer Website', N'Fresher C#', N'0932222222', CAST(N'2021-09-16' AS Date), 7000000, CAST(N'2021-09-17T19:13:14.837' AS DateTime), 39, NULL, 0, NULL, 0, 42, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (30, N'Software 6.2', N'Fresher 6.7', N'0922115552', CAST(N'2021-10-03' AS Date), 8900000, CAST(N'2021-09-17T19:17:31.787' AS DateTime), 39, NULL, 0, NULL, 0, 45, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (31, N'dasdadsada', N'dsadadasda', N'0577777447', CAST(N'2021-10-03' AS Date), 8300000, CAST(N'2021-09-17T19:18:08.257' AS DateTime), 39, NULL, 0, NULL, 0, 46, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (32, N'dasdasda', N'sdasdad', N'0922233154', CAST(N'2021-09-25' AS Date), 5000000, CAST(N'2021-09-17T19:18:31.427' AS DateTime), 39, CAST(N'2021-09-17T19:22:53.700' AS DateTime), 39, CAST(N'2021-09-17T19:22:43.527' AS DateTime), 39, 47, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (33, N'dasdadas', N'dasdadsds', N'0832944222', CAST(N'2021-10-01' AS Date), 70000000, CAST(N'2021-09-17T19:19:09.147' AS DateTime), 39, NULL, 0, NULL, 0, 48, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (34, N'asdasdad', N'asdsadasda', N'0922277444', CAST(N'2021-09-21' AS Date), 5000000, CAST(N'2021-09-17T19:21:32.937' AS DateTime), 39, NULL, 0, NULL, 0, 49, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (35, N'dasdada', N'efesdfsdsf', N'0967734331', CAST(N'2021-09-18' AS Date), 7800000, CAST(N'2021-09-17T19:21:57.880' AS DateTime), 39, NULL, 0, NULL, 0, 50, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (36, N'dsadadasd', N'dfsfsdfsds', N'0766222211', CAST(N'2021-09-18' AS Date), 8900000, CAST(N'2021-09-17T19:23:43.470' AS DateTime), 39, NULL, 0, NULL, 0, 51, NULL)
INSERT [dbo].[Employees] ([Id], [Department], [Position], [Phone], [StartDay], [Salary], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate], [User_Id], [Image]) VALUES (37, N'Software 7.8', N'Project Manager', N'0924455521', CAST(N'2021-10-22' AS Date), 40000000, CAST(N'2021-10-27T08:32:26.250' AS DateTime), 3, NULL, 0, NULL, 0, 1053, NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (4, 3, 5, CAST(N'2021-10-29' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (17, 3, 19, CAST(N'2021-11-01' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (25, 3, 15, CAST(N'2021-11-09' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (26, 3, 6, CAST(N'2021-11-25' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[InformationShop] ON 

INSERT [dbo].[InformationShop] ([Id], [Name], [Active], [TimeOpen], [Logo], [Phone], [Fax], [Email], [LogoFooter], [Address], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Ecart Shop', 1, N'7:00 AM đến 11:00 PM', N'logo.png', N'0923355522', N'0923456789', N'cskh@hotro.ecart.vn', N'footer-logo.png', N'778/B1 Nguyễn Kiệm, P.4, Q. Phú Nhuận, TP. Hồ Chí Minh', CAST(N'2021-09-29T15:58:27.223' AS DateTime), 3, NULL, 0, CAST(N'2021-09-30T16:48:41.937' AS DateTime), 3)
INSERT [dbo].[InformationShop] ([Id], [Name], [Active], [TimeOpen], [Logo], [Phone], [Fax], [Email], [LogoFooter], [Address], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Shop Cart', 0, N'11:00 AM đến 11:00 PM', N'logo.png', N'0912233498', N'0901230406', N'demo@gmail.com', N'footer-logo.png', N'520/3/1 quốc lộ 13, phường Hiệp Bình Phước, Thủ Đức, Tp.HCM', CAST(N'2021-09-29T15:59:52.360' AS DateTime), 3, NULL, 0, CAST(N'2021-09-30T16:40:53.460' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[InformationShop] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufactures] ON 

INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Apple', N'apple.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:08:21.840' AS DateTime), 3, NULL, 0, CAST(N'2021-11-16T10:47:38.057' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Samsung', N'2-76x40.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-21T20:10:50.670' AS DateTime), 3, NULL, 0, CAST(N'2021-11-16T10:07:42.230' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Oppo', N'oppo.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T05:32:29.543' AS DateTime), 3, NULL, 0, CAST(N'2021-11-16T10:52:17.663' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (4, N'Xiaomi', N'8-76x40.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T05:35:32.713' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (5, N'Realme', N'6-76x40.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T05:36:28.887' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (6, N'Vivo', N'5-76x40.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T05:59:01.767' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (7, N'Vsmart', N'2-76x40.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T05:59:54.977' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (8, N'Nokia', N'nokia.png', N'cat_banner-1450x300.jpg', N'Subscribe to our newsletters now and stay up to date with new collections and exclusive offers.', CAST(N'2021-09-22T06:01:33.803' AS DateTime), 3, NULL, 0, CAST(N'2021-11-16T10:49:35.657' AS DateTime), 3)
INSERT [dbo].[Manufactures] ([Id], [Name], [Logo], [Banner], [Description], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1002, N'Dell', N'dell.png', N'banner-dell.png', N'Dell là công ty công nghệ đa quốc gia của Hoa Kỳ ra đời từ năm 1984 do nhà sáng lập Micharel Dell. Hiện hãng có trụ sở tại Round Rock, Texas, Hoa Kỳ. Dell được đánh giá là công ty có thu nhập lớn thứ 28 tại Hoa Kỳ. Tên của hãng được đặt theo tên của nhà sáng lập công ty. Tiền thân của hãng là PC’s Limited. Năm 1988, hãng mới chính thức lấy tên Dell.', CAST(N'2021-11-16T10:39:23.027' AS DateTime), 3, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Manufactures] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuOne] ON 

INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Hãng sản xuất', N'hang-san-xuat', 6, CAST(N'2021-09-23T14:43:01.383' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Hãng sản xuất', N'hang-san-xuat', 2, CAST(N'2021-09-23T16:02:58.560' AS DateTime), 3, NULL, 0, CAST(N'2021-09-23T16:34:20.823' AS DateTime), 3)
INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Đồng hồ thông minh', N'dong-ho-thong-minh', 6, CAST(N'2021-09-27T13:34:44.253' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (4, N'Máy in', N'may-in', 2, CAST(N'2021-09-27T13:36:23.300' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (5, N'Phụ kiện di động', N'phu-kien-di-dong', 3, CAST(N'2021-09-27T13:48:34.030' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuOne] ([Id], [Name], [NameSearch], [Cate_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (6, N'Phụ kiện máy tính', N'phu-kien-may-tinh', 3, CAST(N'2021-09-27T13:49:03.473' AS DateTime), 3, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[MenuOne] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuTwo] ON 

INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'Apple', N'dien-thoai-apple', 1, CAST(N'2021-09-27T08:57:16.547' AS DateTime), 3, NULL, 0, CAST(N'2021-09-27T09:50:05.843' AS DateTime), 3)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (2, N'Huawei', N'dien-thoai-huawei', 1, CAST(N'2021-09-27T13:51:41.380' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'Samsung', N'dien-thoai-samsung', 1, CAST(N'2021-09-27T13:51:57.833' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (4, N'Oppo', N'dien-thoai-oppo', 1, CAST(N'2021-09-27T13:52:57.890' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (5, N'Vivo', N'dien-thoai-vivo', 1, CAST(N'2021-09-27T13:53:30.663' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (6, N'Dell', N'may-tinh-dell', 2, CAST(N'2021-09-27T13:53:49.330' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (7, N'Asus', N'may-tinh-asus', 2, CAST(N'2021-09-27T13:54:08.687' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (8, N'MSI', N'may-tinh-msi', 2, CAST(N'2021-09-27T13:54:29.927' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (9, N'Pin sạc dự phòng', N'pin-sac-du-phong', 5, CAST(N'2021-09-27T13:55:09.010' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (10, N'Ốp lưng điện thoại', N'op-lung-dien-thoai', 5, CAST(N'2021-09-27T13:55:41.077' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[MenuTwo] ([Id], [Name], [NameSearch], [Menu1_Id], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (11, N'Miếng dán màn hình', N'mieng-dan-man-hinh', 5, CAST(N'2021-09-27T13:56:11.403' AS DateTime), 3, NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[MenuTwo] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (19, N'695205', 12, 1, NULL, 1, CAST(N'2021-11-22' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (20, N'695205', 13, 1, NULL, 1, CAST(N'2021-11-22' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (21, N'695205', 15, 1, NULL, 1, CAST(N'2021-11-22' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (22, N'954604', 13, 1, NULL, 1, CAST(N'2021-11-23' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (23, N'803346', 16, 63, NULL, 1, CAST(N'2020-11-23' AS Date), N'0', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (24, N'328457', 16, 1, NULL, 1, CAST(N'2021-11-24' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (25, N'376478', 16, 1, NULL, 1, CAST(N'2021-11-25' AS Date), N'1', N'2', N'This is demo')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (26, N'764146', 17, 1, NULL, 1, CAST(N'2021-10-29' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (27, N'286745', 13, 1, NULL, 1, CAST(N'2021-11-30' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (28, N'424675', 7, 1, NULL, 1, CAST(N'2021-11-30' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (29, N'424675', 12, 1, NULL, 1, CAST(N'2021-11-30' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (30, N'424675', 15, 1, NULL, 1, CAST(N'2021-11-30' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (31, N'370935', 14, 1, NULL, 1, CAST(N'2021-12-03' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (32, N'896775', 15, 1, NULL, 1, CAST(N'2021-12-03' AS Date), N'1', N'1', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (33, N'839073', 16, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (34, N'839073', 15, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (35, N'189869', 9, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'1', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (36, N'821821', 14, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (37, N'324088', 17, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'3', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (38, N'716737', 1, 1, NULL, 1, CAST(N'2021-12-05' AS Date), N'1', N'1', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (39, N'980994', 8, 1, NULL, 2, CAST(N'2021-12-05' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (40, N'955187', 12, 1, NULL, 1, CAST(N'2020-12-05' AS Date), N'1', N'0', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (41, N'242355', 13, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (42, N'685343', 5, 1, NULL, 2, CAST(N'2021-12-06' AS Date), N'1', N'3', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (43, N'685343', 12, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'3', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (44, N'635989', 14, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (45, N'241678', 19, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'1', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (46, N'747003', 18, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'2', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (47, N'439686', 17, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'3', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (48, N'592098', 15, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'1', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (49, N'422131', 10, 1, NULL, 1, CAST(N'2021-12-06' AS Date), N'1', N'0', N'')
INSERT [dbo].[Orders] ([Id], [Code], [Product_Id], [Address_Id], [Discount_Id], [Quality], [Date], [Method], [Status], [Comment]) VALUES (50, N'581858', 16, 1, NULL, 1, CAST(N'2022-01-05' AS Date), N'1', N'0', N'')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (1, N'IPHONE12', N'Điện thoại Iphone 12 64GB', 21000000, 200, 12, 2, N'The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there''s no limit to what you can achieve.
<br>
The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it''s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'12-1000x1000.jpg', N'8-1000x1000.jpg', N'10-1000x1000.jpg', N'6-1000x1000.jpg', N'10-1000x1000.jpg', 1, 1, 6, N'iphone-12-64gb', NULL, NULL, CAST(N'2021-10-10T17:30:25.843' AS DateTime), 3, NULL, 0, CAST(N'2021-10-11T06:21:13.207' AS DateTime), 3)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (3, N'XIAONO10', N'Điện thoại Xiaomi Redmi Note 10S', 6490000, 20, 34, 7, N'Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'xiaomi-note-10s-image1.JPG', N'xiaomi-note-10s-image2.JPG', N'xiaomi-note-10s-image3.JPG', N'xiaomi-note-10s-image4.JPG', N'xiaomi-note-10s-image5.JPG', 1, 4, 6, N'xiaomi-note-10s', NULL, NULL, CAST(N'2021-10-11T17:08:37.767' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (5, N'SSGA22', N'Samsung Galaxy A22 5G', 5899000, 100, 35, 6, N'Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple''s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-a22-image1.JPG', N'samsung-galaxy-a22-image2.JPG', N'samsung-galaxy-a22-image3.JPG', N'samsung-galaxy-a22-image4.JPG', N'samsung-galaxy-a22-image5.JPG', 1, 2, 6, N'samsung-galaxy-a22', NULL, NULL, CAST(N'2021-10-11T17:14:08.300' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (6, N'OPPORENO6', N'OPPO Reno6 Z 5G', 9490000, 100, 23, 3, N'Không chỉ đưa bạn đến những trải nghiệm đầy phấn khích của mạng 5G siêu tốc, OPPO Reno6 Z 5G còn là chiếc điện thoại tuyệt vời để lưu giữ cảm xúc. Chụp ảnh và quay video chân dung chưa bao giờ thú vị đến thế với loạt tính năng chuyên nghiệp, đầy nghệ thuật.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'oppo-reno6-z-image1.JPG', N'oppo-reno6-z-image2.JPG', N'oppo-reno6-z-image3.JPG', N'oppo-reno6-z-image4.JPG', N'oppo-reno6-z-image5.JPG', 1, 3, 6, N'oppo-reno6-z-5g', NULL, NULL, CAST(N'2021-10-11T17:19:15.027' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (7, N'XIPOCOX3', N'Xiaomi POCO X3 Pro NFC 8GB-256GB', 7290000, 100, 15, 9, N'Trong mức giá tầm trung nhưng cấu hình mà Xiaomi POCO X3 Pro NFC trang bị lại là bộ vi xử lý dành cho những smartphone cao cấp của năm 2021. Bộ vi xử lý Qualcomm Snapdragon 860 mạnh mẽ hàng đầu hiện nay mang đến tốc độ tuyệt hảo, kể cả trong các tựa game đồ họa cao. Thậm chí POCO X3 Pro còn tích hợp công nghệ tản nhiệt chất lỏng, đảm bảo máy mát và hiệu năng ổn định trong suốt quá trình chơi game. Hãy tự tin vào kỹ năng của bạn, Xiaomi POCO X3 Pro NFC sẽ giúp bạn làm chủ tình hình trong mọi cuộc chơi.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'xiaomi-poco-x3-pro-image1.JPG', N'xiaomi-poco-x3-pro-image2.JPG', N'xiaomi-poco-x3-pro-image3.JPG', N'xiaomi-poco-x3-pro-image4.JPG', N'xiaomi-poco-x3-pro-image5.JPG', 1, 4, 6, N'xiaomi-poco-x3-pro', NULL, NULL, CAST(N'2021-10-11T17:22:51.280' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (8, N'SSGS20', N'Samsung Galaxy S20 FE 256GB', 11990000, 110, 28, 2, N'Trải nghiệm những tính năng cao cấp của điện thoại Samsung Galaxy S20 FE 256GB, nơi bạn được tận hưởng niềm vui bất tận với camera xuất sắc, màn hình vô cực 120Hz siêu mượt và cấu hình đủ để sử dụng thoải mái trong nhiều năm nữa.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-s20-fe-image1.JPG', N'samsung-galaxy-s20-fe-image2.JPG', N'samsung-galaxy-s20-fe-image3.JPG', N'samsung-galaxy-s20-fe-image4.JPG', N'samsung-galaxy-s20-fe-image5.JPG', 1, 2, 6, N'samsung-galaxy-s20-fe-256GB', NULL, NULL, CAST(N'2021-10-12T08:36:41.790' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (9, N'VIVOY21', N'Vivo Y21 4GB+1GB - 64GB', 4290000, 10, 22, 4, N'Điện thoại vivo Y21 có thiết kế siêu mỏng thời thượng, vân kim cương độc đáo, mang trên mình viên pin dung lượng cao 5000 mAh, sạc siêu tốc 18W và công nghệ RAM mở rộng, đem tới sự năng động, ngập tràn cảm hứng cho giới trẻ hiện đại.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'vivo-y21-image1.JPG', N'vivo-y21-image2.JPG', N'vivo-y21-image3.JPG', N'vivo-y21-image4.JPG', N'vivo-y21-image5.JPG', 1, 6, 6, N'vivo-y21', NULL, NULL, CAST(N'2021-10-12T08:43:24.690' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (10, N'OPPOA54', N'Oppo A54 4GB-128GB', 4690000, 150, 22, 5, N'Sở hữu Viên pin khủng 5000mAh, bộ nhớ lên tới 128GB, thiết kế trẻ trung với màn hình lớn, camera AI thông minh và cả khả năng chống nước, OPPO A54 đơn giản là chiếc điện thoại mang trên mình đầy đủ mọi tính năng bạn cần.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>AMOLED6.43"Full HD+</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>Android 11</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>13 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>MediaTek Helio G95</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>8GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>128GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>2 Nano SIMHỗ trợ 4G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>5000 mAh33 W</td>
											</tr>
										</tbody>
									</table>', N'oppo-a54-image1.JPG', N'oppo-a54-image2.JPG', N'oppo-a54-image3.JPG', N'oppo-a54-image4.JPG', N'oppo-a54-image5.JPG', 1, 3, 6, N'oppo-a54', NULL, NULL, CAST(N'2021-10-12T08:55:41.287' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T15:38:00.430' AS DateTime), 3)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (12, N'NOKIAC30', N'Nokia C30 3GB-32GB', 2790000, 15, 2, 4, N'Thoải mái trải nghiệm trên màn hình cực lớn và thời lượng pin lên tới 3 ngày của Nokia C30. Với thiết kế bền đẹp và thường xuyên được cập nhật phần mềm, Nokia C30 sẽ đồng hành cùng bạn trong nhiều năm tới một cách ổn định.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'nokia-c30-image1.JPG', N'nokia-c30-image2.JPG', N'nokia-c30-image3.JPG', N'nokia-c30-image4.JPG', N'nokia-c30-image1.JPG', 1, 8, 6, N'nokia-c30', NULL, NULL, CAST(N'2021-10-12T15:29:36.920' AS DateTime), 3, NULL, 0, CAST(N'2021-10-12T15:35:28.207' AS DateTime), 3)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (13, N'SSGA52S', N'Samsung Galaxy A52s 5G', 10990000, 200, 11, 6, N'Trải nghiệm kỷ nguyên 5G hoàn toàn mới, nơi là người làm chủ tốc độ và dẫn đầu cuộc chơi, Samsung Galaxy A52s 5G với kết nối 5G siêu tốc, sức mạnh hiệu năng tuyệt đỉnh cùng bộ tứ camera chống rung quang học OIS vượt trội sẽ đưa bạn đến từ bất ngờ này đến bất ngờ khác.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-a52s-image1.JPG', N'samsung-galaxy-a52s-image2.JPG', N'samsung-galaxy-a52s-image3.JPG', N'samsung-galaxy-a52s-image4.JPG', N'samsung-galaxy-a52s-image5.JPG', 1, 2, 6, N'samsung-galaxy-a52s', NULL, NULL, CAST(N'2021-10-12T16:52:49.217' AS DateTime), 3, NULL, 0, CAST(N'2021-10-27T08:34:07.567' AS DateTime), 3)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (14, N'SSS21ULTRA', N'Samsung Galaxy S21 Ultra 128GB', 25999000, 300, 27, 4, N'Samsung Galaxy S21 Ultra 5G mang đến cuộc cách mạng trong nhiếp ảnh với khả năng tạo ra kiệt tác dễ dàng hơn bao giờ hết; ngoài ra máy còn sở hữu bộ vi xử lý nhanh nhất, màn hình đẹp nhất, kết nối 5G và thời lượng pin thoải mái suốt cả ngày.
<br>
Thiết kế Samsung Galaxy S21 Ultra là sự hội tụ giữa những đường nét phá cách và giá trị nguyên bản. Nổi bật nhất chính là cụm camera kích thước cực lớn, cho thấy điểm nhấn của chiếc S21 Ultra năm nay là khả năng nhiếp ảnh. Toàn thân máy đều có màu đen mờ nguyên bản, đơn giản nhưng rất sang trọng và lịch lãm. Nếu bạn thích sự nổi bật và thời trang hơn, có thể chọn màu bạc ngẫu hứng với vẻ đẹp sắc sảo.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-s21-ultra-image1.JPG', N'samsung-galaxy-s21-ultra-image2.JPG', N'samsung-galaxy-s21-ultra-image3.JPG', N'samsung-galaxy-s21-ultra-image4.JPG', N'samsung-galaxy-s21-ultra-image5.JPG', 1, 2, 6, N'samsung-s21-ultra-128gb', NULL, NULL, CAST(N'2021-10-12T17:01:21.923' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (15, N'REALMEC21', N'Realme C21y 3GB - 32GB', 3490000, 10, 20, 7, N'Trải nghiệm mượt mà suốt cả ngày nhờ viên pin dung lượng cao 5000mAh, tận hưởng mọi nội dung trên màn hình lớn 6,5 inch cực đã, thỏa sức sáng tạo với bộ 3 camera chất lượng, realme C21Y sẽ khiến cho mỗi ngày của bạn trôi qua đầy hứng khởi.
<br>
Viên pin dung lượng lên tới 5000mAh sẽ không làm gián đoạn trải nghiệm của bạn khi có thể sử dụng trọn vẹn một ngày mà không lo hết pin. Ngay cả khi pin yếu, chế độ siêu tiết kiệm pin cũng sẽ kéo dài thời gian sử dụng lên đáng kể, đủ cho bạn liên lạc và vào các ứng dụng cần thiết. Hãy tự do khám phá và không để nỗi lo hết pin làm phiền bạn.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'realme-c21y-image1.JPG', N'realme-c21y-image2.JPG', N'realme-c21y-image3.JPG', N'realme-c21y-image4.JPG', N'realme-c21y-image5.JPG', 1, 5, 6, N'realme-c21y', NULL, NULL, CAST(N'2021-10-14T10:32:45.793' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (16, N'REALME8', N'Realme 8 8GB - 128GB', 6990000, 100, 20, 7, N'Phong cách thiết kế hoàn toàn mới lạ, 4 camera 64MP AI chuyên nghiệp cùng sức mạnh hiệu năng vượt trội, realme 8 thúc đẩy sự sáng tạo và mang đến niềm vui cho cuộc sống năng động của bạn.
Không đi theo lối mòn, realme 8 thể hiện chất riêng bằng một thiết kế độc đáo. Phần mặt lưng máy được chia làm hai phần tách biệt, trong đó một phần hoàn thiện dạng nhám đại diện cho thế giới bình thường, phần còn lại bóng bẩy đại diện cho thế giới của công nghệ. Công nghệ sẽ song hành cùng chúng ta trong cả hiện tại và tương lai. Nổi bật trên mặt lưng là dòng chữ “Dare to leap”, cho thấy thông điệp dám nhảy vọt, dám bứt phá của realme 8 series.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'realme-8-image1.JPG', N'realme-8-image2.JPG', N'realme-8-image3.JPG', N'realme-8-image4.JPG', N'realme-8-image4.JPG', 1, 5, 6, N'realme8', NULL, NULL, CAST(N'2021-10-14T12:41:42.923' AS DateTime), 3, NULL, 0, CAST(N'2021-10-14T13:31:18.393' AS DateTime), 3)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (17, N'SSGZFLIP', N'Samsung Galaxy Z Flip', 16999000, 300, 29, 3, N'Một chiếc điện thoại vừa nhỏ gọn đáng kinh ngạc, lại vừa mang đến trải nghiệm mãn nhãn trên màn hình lớn chuẩn điện ảnh 6,7 inch, những điều tưởng như nằm ngoài giới hạn đã thực sự xuất hiện trên Samsung Galaxy Z Flip với thiết kế gập độc đáo và sáng tạo chưa từng thấy.
<br>
Samsung Galaxy Z Flip chắc chắn là chiếc smartphone có kích thước nhỏ gọn nhất trên thị trường hiện nay. Thiết kế màn hình gập siêu độc giúp Galaxy Z Flip chỉ nhỏ bằng phân nửa các điện thoại khác. Bạn có thể cầm máy gọn gàng trong lòng bàn tay, bỏ vào túi quần hay túi áo một cách tiện lợi hơn bao giờ hết.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-z-flip-image1.JPG', N'samsung-galaxy-z-flip-image2.JPG', N'samsung-galaxy-z-flip-image3.JPG', N'samsung-galaxy-z-flip-image4.JPG', N'samsung-galaxy-z-flip-image2.JPG', 1, 2, 6, N'samsung-galaxy-z-flip', NULL, NULL, CAST(N'2021-10-14T13:37:18.700' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (18, N'SSGA12', N'Samsung Galaxy A12 4GB-128GB', 4299000, 30, 24, 2, N'Khả năng chụp ảnh ưu việt với 4 camera sau chất lượng, màn hình lớn và thời lượng pin thoải mái cho cả ngày là những gì đang chờ đón bạn trên Samsung Galaxy A12, chiếc điện thoại tuyệt vời dành cho giới trẻ.
<br>
Màn hình lớn tới 6,5 inch tràn viền Infinity-V của Galaxy A12 sẽ mang đến cho bạn trải nghiệm nội dung tuyệt vời, dù là ở bất cứ ứng dụng nào. Đọc báo với nhiều thông tin hơn; xem phim với màn hình rộng hơn, hay chơi game với một chiến trường lớn hơn, màn hình Galaxy A12 giúp mọi thứ trở nên sống động, chân thực trong tầm mắt của bạn.
<br>
Thiết kế của Galaxy A12 là sự pha trộn giữa nét hiện đại và tính thực dụng. Bạn sẽ có được một chiếc điện thoại kiểu dáng đơn giản và mặt lưng hoàn thiện dạng vân nhám, cầm nắm rất chắc chắn, đồng thời không bị bám bẩn, mồ hôi hay dấu vân tay. Cụm camera hình vuông tinh tế chính là điểm nhấn trong thiết kế máy. Bên cạnh đó, Samsung Galaxy A12 còn cho người dùng 3 sự lựa chọn màu sắc đầy cá tính: Đen phá cách, Trắng tâm điểm và Xanh bứt phá.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-a12-image1.JPG', N'samsung-galaxy-a12-image2.JPG', N'samsung-galaxy-a12-image3.JPG', N'samsung-galaxy-a12-image4.JPG', N'samsung-galaxy-a12-image2.JPG', 1, 2, 6, N'samsung-galaxy-a12', NULL, NULL, CAST(N'2021-10-14T13:43:01.147' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (19, N'SSGA32', N'Samsung Galaxy A32', 6699000, 100, 29, 1, N'Sở hữu màn hình 90Hz, 4 camera 64MP, pin dung lượng 5000 mAh và những thông số hàng đầu trong tầm giá, Samsung Galaxy A32 sẽ để bạn khám phá cuộc sống theo cách thú vị của riêng bạn.
<br>
Samsung Galaxy A32 mang trên mình tới 4 camera sau. Nhưng A32 không chỉ có số lượng mà chất lượng mới là điều đáng nói. Nổi bật nhất là camera chính độ phân giải lên tới 64MP, chụp ảnh sắc nét đến từng chi tiết, khả năng chụp thiếu sáng ấn tượng. Bạn có thể ghi lại những khoảnh khắc đáng nhớ thường ngày bằng các bức ảnh, đoạn video chất lượng.', N'<table class="table table-bordered">
										<thead>
											<tr>
												<td colspan="2"><strong>Thông số chi tiết</strong></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Màn hình:</td>
												<td>OLED6.1"Super Retina XDR</td>
											</tr>
											<tr>
												<td>Hệ điều hành:</td>
												<td>iOS 14</td>
											</tr>
											<tr>
												<td>Camera sau:</td>
												<td>2 camera 12 MP</td>
											</tr>
											<tr>
												<td>Camera trước:</td>
												<td>12 MP</td>
											</tr>
											<tr>
												<td>Chip:</td>
												<td>Apple A14 Bionic</td>
											</tr>
											<tr>
												<td>Ram:</td>
												<td>4GB</td>
											</tr>
											<tr>
												<td>Bộ nhớ trong:</td>
												<td>64GB</td>
											</tr>
											<tr>
												<td>SIM:</td>
												<td>1 Nano SIM &amp; 1 eSIMHỗ trợ 5G</td>
											</tr>
											<tr>
												<td>Pin, Sạc:</td>
												<td>2815 mAh20 W</td>
											</tr>
										</tbody>
									</table>', N'samsung-galaxy-a32-image1.JPG', N'samsung-galaxy-a32-image2.JPG', N'samsung-galaxy-a32-image3.JPG', N'samsung-galaxy-a32-image4.JPG', N'samsung-galaxy-a32-image2.JPG', 1, 2, 6, N'samsung-galaxy-a32', NULL, NULL, CAST(N'2021-10-14T13:49:03.253' AS DateTime), 3, NULL, 0, NULL, 0)
INSERT [dbo].[Products] ([Id], [Code], [Name], [Price], [Point], [Quality], [Views], [Description], [Specification], [Image1], [Image2], [Image3], [Image4], [Image5], [Active], [Manu_Id], [Cate_Id], [NameSearch], [Color], [Memory], [CreateDay], [PersonCreate], [DeleteDay], [PersonDelete], [UpdateDay], [PersonUpdate]) VALUES (20, N'DELLV3500', N'Laptop Dell Vostro V3500 i3 1115G4/8GB/256GB', 15599000, 300, 10, 4, N'Trải nghiệm những công nghệ mới nhất trên Dell Vostro V3500, chiếc laptop doanh nhân 15,6 inch được thiết kế nhỏ gọn, chạy bộ vi xử lý Intel thế hệ thứ 11 mới nhất và độ bền đã trở thành thương hiệu của Dell.
<br>
Dell Vostro V3500 là một trong những laptop màn hình 15,6 inch nhỏ gọn bậc nhất hiện nay. Máy có độ mỏng chỉ 2cm và trọng lượng khoảng 1,78kg, rất dễ dàng để bạn mang đi bất cứ đâu. Ngoài ra độ bền của Dell Vostro V3500 cũng hết sức ấn tượng khi có khả năng chống sốc và chống va đập tối đa, thoải mái yên tâm sử dụng trong thời gian dài.', N'<p>
										</p><p></p><table class="table table-bordered" style="font-size: 1rem;"><thead><tr><td colspan="2"><strong>Thông số chi tiết</strong></td></tr></thead><tbody><tr><td>CPU:</td><td>Intel Core i3-1115G4<br></td></tr><tr><td><span style="color: rgb(68, 75, 82);">RAM</span>:</td><td><span style="color: rgb(68, 75, 82);">8 GB, DDR4, 2666 MHz</span><br></td></tr><tr><td>Màn hình:</td><td>15.6", 1920 x 1080 Pixel, WVA, 60 Hz, 250 nits, Anti-glare LED-backlit<br></td></tr><tr><td><span style="color: rgb(68, 75, 82);">Đồ họa</span>:</td><td><span style="color: rgb(68, 75, 82);">Intel UHD Graphics</span><br></td></tr><tr><td>Ổ cứng:</td><td>SSD 256 GB<br></td></tr><tr><td><span style="color: rgb(68, 75, 82);">Hệ điều hành</span>:</td><td><span style="color: rgb(68, 75, 82);">Windows 10</span><br></td></tr><tr><td>Trọng lượng (kg):</td><td>1.98</td></tr><tr><td><span style="color: rgb(68, 75, 82);">Kích thước (mm)</span>:</td><td><span style="color: rgb(68, 75, 82);">368 x 249 x 19.9</span><br></td></tr><tr><td>Xuất xứ:</td><td>Trung Quốc</td></tr><tr><td>Năm ra mắt:</td><td>2021</td></tr></tbody></table>', N'laptop-dell-vostro-v3500-image1.JPG', N'laptop-dell-vostro-v3500-image2.JPG', N'laptop-dell-vostro-v3500-image3.JPG', N'laptop-dell-vostro-v3500-image4.JPG', N'laptop-dell-vostro-v3500-image5.JPG', 1, 1002, 2, N'dell-vostro-v3500-i3-1115g4', NULL, NULL, CAST(N'2021-11-16T05:29:48.727' AS DateTime), 3, NULL, 0, CAST(N'2021-11-16T10:39:50.777' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'ROLE_USER')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'ROLE_ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (3, N'ROLE_DIRECTOR')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role] ON 

INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1, 1, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (2, 2, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (3, 3, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1024, 39, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1025, 40, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1026, 41, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1027, 42, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1030, 45, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1031, 46, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1032, 47, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1033, 48, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1034, 49, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1035, 50, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1036, 51, 3)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1037, 1052, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (1038, 1053, 3)
SET IDENTITY_INSERT [dbo].[User_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (1, N'khoahoang00@gmail.com', N'1234567', N'Phạm Hoàng Khoa', 0, NULL, CAST(N'2021-09-09T11:52:28.310' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (2, N'khoahoang123@gmail.com', N'1234567', N'Phạm Tấn Khoa', 0, NULL, CAST(N'2021-09-09T12:04:33.607' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (3, N'khoaphps12992@fpt.edu.vn', N'12345678', N'Phạm Hoàng Khoa', 0, CAST(N'2021-10-17' AS Date), CAST(N'2021-09-10T10:14:19.630' AS DateTime), NULL, 0, 1, 1)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (39, N'khoahoang123@gmail.com', N'1234567', N'Khoa Phạm', 0, NULL, CAST(N'2021-09-16T11:52:00.997' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (40, N'khoahoang@gmail.com', N'1234567', N'Khoa Pham', 0, NULL, CAST(N'2021-09-16T11:53:18.593' AS DateTime), CAST(N'2021-09-17T06:24:51.960' AS DateTime), 3, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (41, N'tennv@gmail.com', N'1234567', N'Nguyễn Văn Tèo', 0, NULL, CAST(N'2021-09-17T19:08:26.167' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (42, N'lethimanchin123@fpt.edu.vn', N'1234567', N'Lê Thị Mận', 0, NULL, CAST(N'2021-09-17T19:13:14.837' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (45, N'america123@gmail.com', N'1234567', N'Captain America', 0, NULL, CAST(N'2021-09-17T19:17:31.787' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (46, N'dasdadas@gmail.com', N'1234567', N'asdadasda', 0, NULL, CAST(N'2021-09-17T19:18:08.257' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (47, N'123@gmail.com', N'1234567', N'dfsfsadsada123', 0, NULL, CAST(N'2021-09-17T19:18:31.427' AS DateTime), CAST(N'2021-09-17T19:22:53.700' AS DateTime), 39, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (48, N'khoahoangyah123@gmail.com', N'1234567', N'Phạm Hoàng Khoa', 0, NULL, CAST(N'2021-09-17T19:19:09.147' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (49, N'234@gmail.com', N'1234567', N'dasdada', 0, NULL, CAST(N'2021-09-17T19:21:32.937' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (50, N'khoapham@gmail.com', N'1234567', N'fytytyrtrt', 0, NULL, CAST(N'2021-09-17T19:21:57.880' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (51, N'asdasda@gmail.com', N'1234567', N'rrwerwrw', 0, NULL, CAST(N'2021-09-17T19:23:43.470' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (1052, N'cuonglvps12000@fpt.edu.vn', N'1234567', N'Lê Văn Cường', 0, NULL, CAST(N'2021-10-09T09:33:22.903' AS DateTime), NULL, 0, 0, 0)
INSERT [dbo].[Users] ([Id], [Email], [Password], [FullName], [Point], [Birthday], [CreateDay], [DeleteDay], [PersonDelete], [Sex], [Subscribe]) VALUES (1053, N'lethidan@gmail.com', N'1234567', N'Lê Thị Dần', 0, NULL, CAST(N'2021-10-27T08:32:26.250' AS DateTime), NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (NULL) FOR [NameSearch]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Discount] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[InformationShop] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Manufactures] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuOne] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[MenuTwo] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Discount_Id]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Comment]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Color]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Memory]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [UpdateDay]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [PersonUpdate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Point]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [Birthday]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreateDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [DeleteDay]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [PersonDelete]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Sex]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Subscribe]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuOne]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuTwo]  WITH CHECK ADD FOREIGN KEY([Menu1_Id])
REFERENCES [dbo].[MenuOne] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Discount_Id])
REFERENCES [dbo].[Discount] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
