USE [master]
GO
/****** Object:  Database [PRJ301_HoangVA_FA23]    Script Date: 3/1/2024 11:26:37 PM ******/
CREATE DATABASE [PRJ301_HoangVA_FA23]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_HoangVA_FA23', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRJ301_HoangVA_FA23.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_HoangVA_FA23_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRJ301_HoangVA_FA23_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_HoangVA_FA23].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET RECOVERY FULL 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PRJ301_HoangVA_FA23', N'ON'
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET QUERY_STORE = ON
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PRJ301_HoangVA_FA23]
GO
/****** Object:  Table [dbo].[category]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](50) NOT NULL,
	[category_img] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [nvarchar](30) NULL,
	[username] [nvarchar](20) NOT NULL,
	[password] [nvarchar](20) NOT NULL,
	[phone_number] [nvarchar](12) NULL,
	[address] [nvarchar](12) NULL,
	[role] [int] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_customer_1] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [date] NOT NULL,
	[customer_id] [int] NOT NULL,
	[total_money] [float] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](256) NULL,
	[image] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[insert_date] [date] NULL,
	[cate_id] [int] NOT NULL,
	[rate] [int] NULL,
 CONSTRAINT [PK_product_1] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[review]    Script Date: 3/1/2024 11:26:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[review](
	[pro_id] [int] NOT NULL,
	[cus_id] [int] NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
	[comment_date] [date] NULL,
	[review_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_review] PRIMARY KEY CLUSTERED 
(
	[review_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (1, N'Dresses', N'images/cate1.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (2, N'Shoes', N'images/cate2.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (3, N'Watches', N'images/cate3.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (4, N'Cosmetics', N'images/cate4.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (5, N'Hand Bag', N'images/cate5.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (6, N'Technology', N'images/cate6.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (7, N'Hat', N'images/cate7.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (8, N'Glasses', N'images/cate8.png')
INSERT [dbo].[category] ([category_id], [category_name], [category_img]) VALUES (9, N'Perfume', N'images/cate9.png')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (1, N'Nguyễn Công Phượng', N'phuongnc1', N'123456', N'0123456789', N'Hà Nam', 1, N'datloan1408@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (2, N'Nguyễn Thế Đạt', N'tuannt2', N'12', N'12323234', N'Thái Bình', 1, N'datntdev211003@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (3, N'Trần Đình Dương', N'duongtd', N'123456', N'0123456789', N'Nghệ An', 1, N'datnthe172223@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (4, N'Đặng Hồng Thái', N'thaidh4', N'123456', N'0123456789', N'Nam Định ', 1, N'test1@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (5, N'Hoàng Thái Minh', N'minhth5', N'123456', N'0123456789', N'Hải Phòng', 1, N'test2@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (6, N'Nguyễn Thế Đạt', N'datnt6', N'123456', N'0123456789', N'Bắc Ninh', 1, N'test3@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (7, N'Võ Anh Hoàng ', N'hoangva7', N'123456', N'0123456789', N'Sơn Tây', 1, N'test4@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (8, N'Ngô Minh Trâm ', N'tramnm8', N'123456', N'0123456789', N'Đông Anh ', 1, N'test5@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (9, N'Đỗ Anh Vũ ', N'vuda9', N'123456', N'0123456789', N'Đông Anh', 1, N'test6@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (10, N'Đoàn Tùng', N'tungta', N'123456', N'0123456789', N'Hà Nội', 1, N'test7@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (11, N'Nguyen Trung Kien', N'KienNT11', N'123456', N'0123456789', N'Binh Dinh', 1, N'test10@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (12, N'Nguyen Trung Kien', N'', N'123456', N'0123456789', N'', 1, N'test10@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (13, N'Nguyen Trung thuc', N'ThucNT', N'12345', N'0123456789', N'Hai Duong
', 1, N'test11@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (14, N'Truong Gia Binh', N'kienNT2', N'12345', N'0123456789', N'', 1, N'test10@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (15, N'Nguyen Trung Truc', N'TrucKT1', N'123456', N'0123456789', N'Ha Noi', 1, N'test14@gmail.com')
INSERT [dbo].[customer] ([customer_id], [full_name], [username], [password], [phone_number], [address], [role], [email]) VALUES (16, N'Nguyen Trung Truc', N'TrucKT', N'12345', N'0123456789', N'Ha Noi', 1, N'test1@gmail.com')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (2, CAST(N'2023-10-19' AS Date), 1, 290)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (3, CAST(N'2023-10-19' AS Date), 2, 194)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (4, CAST(N'2023-10-19' AS Date), 1, 239.79999923706055)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (5, CAST(N'2023-10-19' AS Date), 1, 36)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (6, CAST(N'2023-10-19' AS Date), 1, 36)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (7, CAST(N'2023-10-19' AS Date), 1, 210)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (8, CAST(N'2023-10-20' AS Date), 1, 704)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (9, CAST(N'2023-10-23' AS Date), 5, 2030)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (10, CAST(N'2023-10-23' AS Date), 3, 56.700000762939453)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (11, CAST(N'2023-10-23' AS Date), 1, 24.399999618530273)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (12, CAST(N'2023-10-23' AS Date), 1, 17.5)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (13, CAST(N'2023-10-23' AS Date), 1, 24.399999618530273)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (14, CAST(N'2023-10-24' AS Date), 4, 369.70001220703125)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (15, CAST(N'2023-10-24' AS Date), 4, 1748)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (16, CAST(N'2023-10-24' AS Date), 6, 149)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (17, CAST(N'2023-10-24' AS Date), 7, 23.5)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (18, CAST(N'2023-10-24' AS Date), 8, 167.5)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (19, CAST(N'2023-10-24' AS Date), 9, 302.5)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (20, CAST(N'2023-10-24' AS Date), 10, 1195)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (21, CAST(N'2023-10-25' AS Date), 8, 156)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (22, CAST(N'2023-10-25' AS Date), 1, 36)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (23, CAST(N'2023-10-26' AS Date), 5, 16.700000762939453)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (1022, CAST(N'2023-10-28' AS Date), 1, 18)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (1023, CAST(N'2023-11-02' AS Date), 7, 532.20001220703125)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (1024, CAST(N'2023-11-06' AS Date), 2, 315)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (1025, CAST(N'2023-11-06' AS Date), 2, 210)
INSERT [dbo].[order] ([id], [order_date], [customer_id], [total_money]) VALUES (1026, CAST(N'2023-11-06' AS Date), 2, 19.899999618530273)
SET IDENTITY_INSERT [dbo].[order] OFF
GO
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (2, 13, 1, 210)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (2, 32, 2, 40)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (3, 54, 1, 194)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (4, 5, 1, 39.799999237060547)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (4, 14, 1, 200)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (5, 1, 1, 36)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (7, 13, 1, 210)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (8, 1, 3, 36)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (8, 24, 1, 596)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (12, 3, 1, 17.5)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (13, 34, 1, 24.399999618530273)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (15, 29, 1, 348)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (15, 52, 1, 1400)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (18, 63, 1, 35.5)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (18, 55, 1, 99)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (18, 1, 1, 18)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (18, 2, 1, 15)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (20, 46, 1, 1195)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (21, 54, 1, 97)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (21, 59, 1, 59)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (22, 1, 2, 18)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (23, 37, 1, 16.700000762939453)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1022, 1, 1, 18)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (6, 1, 1, 36)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (14, 2, 1, 15)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (14, 37, 1, 16.700000762939453)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (14, 32, 1, 20)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (14, 58, 6, 53)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (9, 47, 1, 1000)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (9, 50, 1, 843)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (9, 54, 1, 97)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (9, 56, 1, 90)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (10, 8, 1, 29)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (10, 9, 1, 27.700000762939453)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (11, 34, 1, 24.399999618530273)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (16, 4, 1, 20)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (16, 8, 1, 29)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (16, 14, 1, 100)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (19, 3, 1, 17.5)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (19, 28, 1, 285)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (17, 43, 1, 23.5)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1023, 13, 1, 105)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1023, 38, 8, 24.899999618530273)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1023, 22, 1, 228)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1024, 13, 3, 105)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1025, 13, 2, 105)
INSERT [dbo].[orderdetail] ([order_id], [product_id], [quantity], [price]) VALUES (1026, 5, 1, 19.899999618530273)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (1, N'Polo Sport Promax-S1', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/1_1.png', 18, CAST(N'2023-01-14' AS Date), 1, 25)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (2, N'Tanktop', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/2_1.png', 15, CAST(N'2022-02-12' AS Date), 1, 59)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (3, N'Polo Pique Cotton
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/3_1.png', 17.5, CAST(N'2023-09-10' AS Date), 1, 93)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (4, N'Jogging T-Shirt Special', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/4_1.png', 20, CAST(N'2023-09-14' AS Date), 1, 14)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (5, N'Essential running shorts', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/5_1.png', 19.9, CAST(N'2023-10-01' AS Date), 1, 23)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (6, N'Powerfit Gym Underwear', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/6_1.png', 13, CAST(N'2023-10-01' AS Date), 1, 59)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (7, N'Short-sleeve Shirt ', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/7_1.png', 22, CAST(N'2023-08-08' AS Date), 1, 93)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (8, N'BDG Victor Crew Neck Sweater
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/8_1.png', 29, CAST(N'2023-05-10' AS Date), 1, 24)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (9, N'BDG Vintage Flannel Shirt
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/9_1.png', 27.7, CAST(N'2023-03-10' AS Date), 1, 95)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (10, N'Chevrolet Camaro Vintage Ad Tee
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/10_1.png', 25.2, CAST(N'2023-04-01' AS Date), 1, 142)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (11, N'Standard Cloth Crew Neck Sweatshirt
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/11_1.png', 29.2, CAST(N'2023-01-01' AS Date), 1, 94)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (12, N'Embroidered Big Logo Hoodie Sweatshirt', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/12_1.png', 30.4, CAST(N'2023-03-02' AS Date), 1, 68)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (13, N'Air Jordan 1 Low
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/13_2.png', 105, CAST(N'2023-10-14' AS Date), 2, 104)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (14, N'Air Jordan 1 Mid SE
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/14_2.png', 100, CAST(N'2023-01-13' AS Date), 2, 204)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (15, N'Air Jordan 1 Zoom CMFT 2
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/15_2.png', 129, CAST(N'2023-01-01' AS Date), 2, 402)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (16, N'Jordan 1 Low Alt SE
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/16_2.png', 142, CAST(N'2022-01-03' AS Date), 2, 203)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (17, N'Air Jordan 1 Mid
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/17_2.png', 80, CAST(N'2023-01-04' AS Date), 2, 204)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (18, N'Air Jordan 1 Low SE
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/18_2.png', 200, CAST(N'2023-12-01' AS Date), 2, 200)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (19, N'Converse chuck 70 vintage', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/19_2.png', 123, CAST(N'2023-01-01' AS Date), 2, 200)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (20, N'Biti''s Hunter Street Bloomin'' Central', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/20_2.png', 76, CAST(N'2023-12-01' AS Date), 2, 241)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (21, N'Biti''s Hunter Football', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/21_2.png', 89, CAST(N'2023-01-01' AS Date), 2, 100)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (22, N'Calvin Klein 38mm Women', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/22_3.png', 228, CAST(N'2023-01-09' AS Date), 3, 23)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (23, N'Calvin Klein K3N23121 ', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/23_3.png', 258, CAST(N'2023-02-03' AS Date), 3, 20)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (24, N'Olym Pianus OP990-45ADGS', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/24_3.png', 298, CAST(N'2022-01-01' AS Date), 3, 23)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (25, N'Orient RA-AA0B02R19B ', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/25_3.png', 301, CAST(N'2023-01-01' AS Date), 3, 29)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (26, N'Citizen BI1054-12E', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/26_3.png', 300, CAST(N'2023-04-02' AS Date), 3, 45)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (27, N'Olym Pianus OP990-45DGS-GL-T ', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/27_3.png', 199, CAST(N'2023-03-02' AS Date), 3, 34)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (28, N'Bentley BL1831-25MKNN', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/28_3.png', 285, CAST(N'2023-05-09' AS Date), 3, 23)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (29, N'Movado T0607314', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/29_3.png', 348, CAST(N'2023-01-01' AS Date), 3, 58)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (30, N'Bentley  BL1684-15001', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/30_3.png', 283, CAST(N'2023-01-01' AS Date), 3, 49)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (31, N'Mascara  Mi Kiss Me Volume UP 6g', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/31_4.png', 19, CAST(N'2023-01-05' AS Date), 4, 13)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (32, N'Payot Express Cleanser For Sensitive Skin', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/32_4.png', 20, CAST(N'2023-09-09' AS Date), 4, 2)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (33, N'Maybelline Sensational Ultimatte', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/33_4.png', 23, CAST(N'2023-09-10' AS Date), 4, 19)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (34, N'3CE Matte Lip Color', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/34_4.png', 24.4, CAST(N'2023-12-05' AS Date), 4, 23)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (35, N' Ariul 7 Days Plus Mask Coconut', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/35_4.png', 12.4, CAST(N'2023-08-27' AS Date), 4, 5)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (36, N'Laneige Cica Sleeping Mask', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/36_4.png', 23.3, CAST(N'2023-02-04' AS Date), 4, 12)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (37, N'Real Snail Skin Barrier Care Mask', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/37_4.png', 16.7, CAST(N'2023-08-30' AS Date), 4, 14)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (38, N'Calvin Klein Reyna Novelty Triple Compartment', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/38_5.png', 24.9, CAST(N'2023-07-12' AS Date), 5, 87)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (39, N'Michael Kors Pocket Chain', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/39_5.png', 29.8, CAST(N'2023-05-02' AS Date), 5, 59)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (40, N'Floto Tavani Women''s Handbag Leather Bag', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/40_5.png', 35.4, CAST(N'2023-01-01' AS Date), 5, 39)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (41, N'Karl Lagerfeld Paris Womens Karoline', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/41_5.png', 39, CAST(N'2023-04-12' AS Date), 5, 43)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (42, N'Baggallini Take Two RFID Bryant Crossbody', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/42_5.png', 25.6, CAST(N'2023-05-01' AS Date), 5, 24)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (43, N'Beyoncé Merch On Air Icon Tote Bag', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/43_5.png', 23.5, CAST(N'2023-07-07' AS Date), 5, 24)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (44, N'Vera Bradley Satchel Purse', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/44_5.png', 25.3, CAST(N'2023-01-13' AS Date), 5, 25)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (45, N'Calvin Klein Women''s Bucket Shoulder Bag', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/45_5.png', 36.6, CAST(N'2023-05-19' AS Date), 5, 36)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (46, N'iPhone 15 Pro Max
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/46_6.png', 1195, CAST(N'2023-09-12' AS Date), 6, 112)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (47, N'iPhone 13', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/47_6.png', 1000, CAST(N'2023-05-05' AS Date), 6, 134)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (48, N'iPhone 14 Pro Max 128GB', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/48_6.png', 1108, CAST(N'2022-04-05' AS Date), 6, 123)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (49, N'iPhone 15 512GB', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/49_6.png', 1150, CAST(N'2023-09-30' AS Date), 6, 101)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (50, N'MacBook Air M1 2020 (8GB RAM | 256GB SSD)', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/50_6.png', 843, CAST(N'2023-04-03' AS Date), 6, 123)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (51, N'MacBook Pro 16 inch M2 Pro (16GB| 1TB)', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/51_6.png', 2134, CAST(N'2023-04-12' AS Date), 6, 204)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (52, N'iPad Pro M2 12.9 inch WiFi 128GB', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/52_6.png', 1400, CAST(N'2022-12-31' AS Date), 6, 111)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (53, N'iPad mini 6
', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/53_6.png', 560, CAST(N'2020-02-04' AS Date), 6, 134)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (54, N'DIOR Sauvage', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/54_7.png', 97, CAST(N'2023-01-01' AS Date), 9, 233)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (55, N'YVES SAINT LAURENT', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/55_7.png', 99, CAST(N'2023-04-16' AS Date), 9, 200)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (56, N'Stronger With You', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/56_7.png', 90, CAST(N'2023-06-16' AS Date), 9, 210)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (57, N'Purple Ruby', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/57_7.png', 104.2, CAST(N'2023-01-14' AS Date), 9, 210)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (58, N'La Vie Est Belle', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/58_7.png', 53, CAST(N'2023-02-19' AS Date), 9, 322)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (59, N'Black Opium', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/59_7.png', 59, CAST(N'2023-04-28' AS Date), 9, 111)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (60, N'GUCCI Bamboo', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/60_7.png', 66.6, CAST(N'2023-01-05' AS Date), 9, 123)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (61, N'COCO MADEMOISELLE', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/61_7.png', 24.6, CAST(N'2022-12-04' AS Date), 9, 233)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (62, N'Eau des Merveilles', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/62_7.png', 67.9, CAST(N'2023-05-20' AS Date), 9, 231)
INSERT [dbo].[product] ([product_id], [product_name], [description], [image], [price], [insert_date], [cate_id], [rate]) VALUES (63, N'Diorella', N'Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc ipsum et, labore clita lorem magna duo dolor no sea Nonumy

', N'images/63_7.png', 35.5, CAST(N'2023-05-03' AS Date), 9, 123)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[review] ON 

INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (1, 1, N'Good product!!!', CAST(N'2023-10-23' AS Date), 1)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (1, 8, N'Very beautiful. Next time I will buy again.', CAST(N'2023-10-23' AS Date), 2)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (2, 4, N'The shop take care me very careful.', CAST(N'2023-10-23' AS Date), 3)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (2, 8, N'Observed with the money I give.', CAST(N'2023-10-23' AS Date), 4)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (3, 1, N'Nice and very beautiful.', CAST(N'2023-10-23' AS Date), 5)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (3, 9, N'Big size and very large. ', CAST(N'2023-10-23' AS Date), 6)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (4, 6, N'Great shopping experiment for me. ', CAST(N'2023-10-23' AS Date), 7)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (13, 1, N'My whole experience has been amazing', CAST(N'2023-10-23' AS Date), 8)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (9, 3, N'dep trai lam dat', CAST(N'2023-10-24' AS Date), 19)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (32, 1, N'Good for your skin
', CAST(N'2023-10-24' AS Date), 20)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (63, 8, N'It is expensive
', CAST(N'2023-10-25' AS Date), 21)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (34, 1, N'Nice color', CAST(N'2023-10-25' AS Date), 22)
INSERT [dbo].[review] ([pro_id], [cus_id], [comment], [comment_date], [review_id]) VALUES (37, 5, N'Good product!!!', CAST(N'2023-10-26' AS Date), 23)
SET IDENTITY_INSERT [dbo].[review] OFF
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_customer]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_order]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FK_review_customer] FOREIGN KEY([cus_id])
REFERENCES [dbo].[customer] ([customer_id])
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FK_review_customer]
GO
ALTER TABLE [dbo].[review]  WITH CHECK ADD  CONSTRAINT [FK_review_product] FOREIGN KEY([pro_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[review] CHECK CONSTRAINT [FK_review_product]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_HoangVA_FA23] SET  READ_WRITE 
GO
