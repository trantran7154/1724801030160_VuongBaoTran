USE [master]
GO
/****** Object:  Database [DataShareCode]    Script Date: 3/28/2021 4:54:05 PM ******/
CREATE DATABASE [DataShareCode]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataShareCode', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DataShareCode.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DataShareCode_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DataShareCode_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DataShareCode] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataShareCode].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataShareCode] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataShareCode] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataShareCode] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataShareCode] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataShareCode] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataShareCode] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataShareCode] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataShareCode] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataShareCode] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataShareCode] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataShareCode] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataShareCode] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataShareCode] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataShareCode] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataShareCode] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DataShareCode] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataShareCode] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataShareCode] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataShareCode] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataShareCode] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataShareCode] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataShareCode] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataShareCode] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DataShareCode] SET  MULTI_USER 
GO
ALTER DATABASE [DataShareCode] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataShareCode] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataShareCode] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataShareCode] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataShareCode] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataShareCode] SET QUERY_STORE = OFF
GO
USE [DataShareCode]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[banner_id] [int] IDENTITY(1,1) NOT NULL,
	[banner_title] [nvarchar](255) NULL,
	[banner_image] [nvarchar](max) NULL,
	[banner_link] [nvarchar](max) NULL,
	[banner_datecreate] [datetime] NULL,
	[banner_active] [bit] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[banner_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[bill_id] [int] IDENTITY(1,1) NOT NULL,
	[bill_datecreate] [datetime] NULL,
	[pakege_id] [int] NULL,
	[user_id] [int] NULL,
	[bill_active] [bit] NULL,
	[bill_dealine] [datetime] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorys]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorys](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](max) NULL,
	[category_active] [bit] NULL,
	[category_item] [int] NULL,
	[category_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categorys] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chats]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chats](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[chat_content] [nvarchar](max) NULL,
	[chat_datecreate] [datetime] NULL,
	[id_send] [int] NULL,
	[chat_key] [nvarchar](max) NULL,
 CONSTRAINT [PK_Chats] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Codes]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Codes](
	[code_id] [int] IDENTITY(1,1) NOT NULL,
	[code_title] [nvarchar](400) NULL,
	[code_coin] [int] NULL,
	[code_code] [nvarchar](100) NULL,
	[code_des] [nvarchar](2000) NULL,
	[code_info] [nvarchar](max) NULL,
	[code_setting] [nvarchar](max) NULL,
	[code_view] [int] NULL,
	[code_viewdown] [int] NULL,
	[code_linkdemo] [nvarchar](max) NULL,
	[code_linkdown] [nvarchar](max) NULL,
	[code_datecreate] [datetime] NULL,
	[code_dateupdate] [datetime] NULL,
	[code_active] [int] NULL,
	[code_option] [bit] NULL,
	[code_del] [bit] NULL,
	[code_tag] [nvarchar](max) NULL,
	[code_disk] [int] NULL,
	[code_pass] [nvarchar](max) NULL,
	[category_id] [int] NULL,
	[user_id] [int] NULL,
	[code_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Codes] PRIMARY KEY CLUSTERED 
(
	[code_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[code_id] [int] NULL,
	[comment_content] [nvarchar](max) NULL,
	[comment_datecreate] [datetime] NULL,
	[news_id] [int] NULL,
	[comment_dateupdate] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[group_id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[user_id] [int] NULL,
	[code_id] [int] NULL,
	[language_id] [int] NULL,
	[group_item] [int] NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[language_name] [nvarchar](300) NULL,
	[language_active] [int] NULL,
	[language_img] [nvarchar](max) NULL,
	[language_view] [int] NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[news_name] [nvarchar](300) NULL,
	[news_view] [int] NULL,
	[news_content] [nvarchar](max) NULL,
	[news_tag] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[news_datecreate] [datetime] NULL,
	[news_dateupdate] [datetime] NULL,
	[news_active] [int] NULL,
	[news_option] [bit] NULL,
	[news_del] [bit] NULL,
	[news_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[oder_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[id_coder] [int] NULL,
	[oder_datecreate] [datetime] NULL,
	[code_id] [int] NULL,
 CONSTRAINT [PK_Oders] PRIMARY KEY CLUSTERED 
(
	[oder_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pakages]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pakages](
	[pakege_id] [int] IDENTITY(1,1) NOT NULL,
	[pakage_coin] [int] NULL,
	[pakage_money] [nvarchar](max) NULL,
	[pakage_active] [int] NULL,
 CONSTRAINT [PK_Pakeges] PRIMARY KEY CLUSTERED 
(
	[pakege_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep](
	[rep_id] [int] IDENTITY(1,1) NOT NULL,
	[comment_id] [int] NULL,
	[user_id] [int] NULL,
	[rep_content] [nvarchar](max) NULL,
	[rep_datecreate] [datetime] NULL,
	[rep_dateupdate] [datetime] NULL,
 CONSTRAINT [PK_Rep] PRIMARY KEY CLUSTERED 
(
	[rep_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TakePrices]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TakePrices](
	[tp_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[tp_coin] [int] NULL,
	[tp_datecreate] [datetime] NULL,
	[tp_note] [nvarchar](max) NULL,
	[tp_active] [int] NULL,
	[tp_accountnumber] [varchar](50) NULL,
	[tp_customer] [nvarchar](225) NULL,
 CONSTRAINT [PK_TakePrices] PRIMARY KEY CLUSTERED 
(
	[tp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[tool_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[code_id] [int] NULL,
	[news_id] [int] NULL,
	[tool_datecreate] [datetime] NULL,
	[tool_item] [bit] NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[tool_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [varchar](300) NULL,
	[user_phone] [varchar](14) NULL,
	[user_sex] [bit] NULL,
	[user_birth] [datetime] NULL,
	[user_token] [nvarchar](max) NULL,
	[user_role] [int] NULL,
	[user_name] [nvarchar](400) NULL,
	[user_coin] [int] NULL,
	[user_datecreate] [datetime] NULL,
	[user_dateupdate] [datetime] NULL,
	[user_code] [nvarchar](100) NULL,
	[user_active] [int] NULL,
	[user_option] [bit] NULL,
	[user_del] [bit] NULL,
	[user_fa] [nvarchar](max) NULL,
	[user_none] [nvarchar](max) NULL,
	[user_view] [int] NULL,
	[user_facode] [nvarchar](max) NULL,
	[user_pass] [nvarchar](max) NULL,
	[user_img] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([banner_id], [banner_title], [banner_image], [banner_link], [banner_datecreate], [banner_active]) VALUES (1, N'TÌM VÀ CHIA SẺ SOURCE CODE NHANH NHẤT', N'comp-1_1.gif', NULL, CAST(N'2021-03-27T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Banners] ([banner_id], [banner_title], [banner_image], [banner_link], [banner_datecreate], [banner_active]) VALUES (2, N'BẢO MẬT TỐT SOURCE CODE CÁ NHÂN', N'8b35fef55fba1a201c9c7a11d3ec3d64.gif', NULL, CAST(N'2021-03-27T10:00:00.000' AS DateTime), 1)
INSERT [dbo].[Banners] ([banner_id], [banner_title], [banner_image], [banner_link], [banner_datecreate], [banner_active]) VALUES (3, N'GIAO DỊCH BUÔN BÁN SẢN PHẨM AN TOÀN', N'shot.gif', NULL, CAST(N'2021-03-27T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([bill_id], [bill_datecreate], [pakege_id], [user_id], [bill_active], [bill_dealine]) VALUES (1, CAST(N'2021-03-25T19:15:11.553' AS DateTime), 1, 1, 0, CAST(N'2021-03-25T19:15:11.553' AS DateTime))
INSERT [dbo].[Bills] ([bill_id], [bill_datecreate], [pakege_id], [user_id], [bill_active], [bill_dealine]) VALUES (2, CAST(N'2021-03-25T19:30:18.120' AS DateTime), 3, 1, 0, CAST(N'2021-04-04T19:30:18.120' AS DateTime))
INSERT [dbo].[Bills] ([bill_id], [bill_datecreate], [pakege_id], [user_id], [bill_active], [bill_dealine]) VALUES (3, CAST(N'2021-03-25T19:32:26.810' AS DateTime), 1, 1, 1, CAST(N'2021-03-25T19:32:26.810' AS DateTime))
INSERT [dbo].[Bills] ([bill_id], [bill_datecreate], [pakege_id], [user_id], [bill_active], [bill_dealine]) VALUES (4, CAST(N'2021-03-26T21:43:35.273' AS DateTime), 4, 3, 1, CAST(N'2021-03-26T21:43:35.273' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[Categorys] ON 

INSERT [dbo].[Categorys] ([category_id], [category_name], [category_active], [category_item], [category_img]) VALUES (1, N'Game', 1, 1, NULL)
INSERT [dbo].[Categorys] ([category_id], [category_name], [category_active], [category_item], [category_img]) VALUES (2, N'Website', 1, 1, NULL)
INSERT [dbo].[Categorys] ([category_id], [category_name], [category_active], [category_item], [category_img]) VALUES (3, N'Ứng dụng', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Categorys] OFF
GO
SET IDENTITY_INSERT [dbo].[Chats] ON 

INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (57, 3, N'aaa', CAST(N'2021-03-26T22:47:53.367' AS DateTime), 1, N'1key3huynvuon')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (58, 1, N'bb', CAST(N'2021-03-26T22:49:33.900' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (59, 3, N'chào cu', CAST(N'2021-03-26T22:55:17.593' AS DateTime), 1, N'1key3huynvuon')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (60, 1, N'chào gì', CAST(N'2021-03-26T22:55:22.897' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (61, 3, N'bạn tên gì', CAST(N'2021-03-26T22:56:34.003' AS DateTime), 1, N'1key3huynvuon')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (62, 1, N'ko biết', CAST(N'2021-03-26T22:56:37.713' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (63, 3, N'ok cút', CAST(N'2021-03-26T22:56:41.337' AS DateTime), 1, N'1key3huynvuon')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (64, 1, N'md', CAST(N'2021-03-26T22:56:47.480' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (65, 1, N'kk', CAST(N'2021-03-26T22:56:49.787' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (66, 1, N'haiz', CAST(N'2021-03-26T22:56:58.173' AS DateTime), 3, N'3key1vuonhuyn')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (67, 3, N'??', CAST(N'2021-03-26T22:57:03.290' AS DateTime), 1, N'1key3huynvuon')
INSERT [dbo].[Chats] ([chat_id], [user_id], [chat_content], [chat_datecreate], [id_send], [chat_key]) VALUES (68, 3, N'@@', CAST(N'2021-03-26T22:57:07.047' AS DateTime), 1, N'1key3huynvuon')
SET IDENTITY_INSERT [dbo].[Chats] OFF
GO
SET IDENTITY_INSERT [dbo].[Codes] ON 

INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (1, N'Source code website bán sách online', 1, N'CODE-1', N'Source code website bán sách online', N'Các chức năng của website:

* Chức năng cho người dùng

     - Xem thông tin sách

     - Thêm sách vào giỏ hàng

     - Thực hiện tìm kiếm sách

* Chức năng cho admin

     - Xem, chỉnh sửa, xóa tất cả các thông tin về người dùng, sách, hóa đơn, liên hệ', N'* Yêu cầu máy đã cài đặt Netbeans và SQL  Server

1. Chạy database trong thư mục database

2. Mở Netbeans và chạy project', 1, 1, N'https://www.youtube.com/watch?v=_Wah73E_JlY', N'https://sharecode.vn/source-code/source-code-website-ban-sach-online-27953.htm#Download', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1, 0, NULL, 20, N'123', 2, 1, N'52edcade-c48c-440d-91d0-29501e648b1adh2.jpg')
INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (5, N'Source code website bán sách online', 10, N'CODE-5', N'Source code website bán sách online', N'Các chức năng của website:

* Chức năng cho người dùng

     - Xem thông tin sách

     - Thêm sách vào giỏ hàng

     - Thực hiện tìm kiếm sách

* Chức năng cho admin

     - Xem, chỉnh sửa, xóa tất cả các thông tin về người dùng, sách, hóa đơn, liên hệ', N'* Yêu cầu máy đã cài đặt Netbeans và SQL  Server

1. Chạy database trong thư mục database

2. Mở Netbeans và chạy project', 1, 1, N'https://www.youtube.com/watch?v=_Wah73E_JlY', N'https://sharecode.vn/source-code/source-code-website-ban-sach-online-27953.htm#Download', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1, 0, NULL, 30, NULL, 2, 1, N'52edcade-c48c-440d-91d0-29501e648b1adh2.jpg')
INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (6, N'Source code website bán sách online', 10, N'CODE-6', N'Source code website bán sách online', N'Các chức năng của website:

* Chức năng cho người dùng

     - Xem thông tin sách

     - Thêm sách vào giỏ hàng

     - Thực hiện tìm kiếm sách

* Chức năng cho admin

     - Xem, chỉnh sửa, xóa tất cả các thông tin về người dùng, sách, hóa đơn, liên hệ', N'* Yêu cầu máy đã cài đặt Netbeans và SQL  Server

1. Chạy database trong thư mục database

2. Mở Netbeans và chạy project', 1, 1, N'https://www.youtube.com/watch?v=_Wah73E_JlY', N'https://sharecode.vn/source-code/source-code-website-ban-sach-online-27953.htm#Download', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1, 0, NULL, 40, N'123', 2, 1, N'52edcade-c48c-440d-91d0-29501e648b1adh2.jpg')
INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (7, N'Source code website bán sách online', 10, N'CODE-7', N'Source code website bán sách online', N'Các chức năng của website:

* Chức năng cho người dùng

     - Xem thông tin sách

     - Thêm sách vào giỏ hàng

     - Thực hiện tìm kiếm sách

* Chức năng cho admin

     - Xem, chỉnh sửa, xóa tất cả các thông tin về người dùng, sách, hóa đơn, liên hệ', N'* Yêu cầu máy đã cài đặt Netbeans và SQL  Server

1. Chạy database trong thư mục database

2. Mở Netbeans và chạy project', 1, 1, N'https://www.youtube.com/watch?v=_Wah73E_JlY', N'https://sharecode.vn/source-code/source-code-website-ban-sach-online-27953.htm#Download', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1, 0, NULL, 50, NULL, 2, 1, N'52edcade-c48c-440d-91d0-29501e648b1adh2.jpg')
INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (8, N'Source code website bán sách online', 10, N'CODE-8', N'Source code website bán sách online', N'Các chức năng của website:

* Chức năng cho người dùng

     - Xem thông tin sách

     - Thêm sách vào giỏ hàng

     - Thực hiện tìm kiếm sách

* Chức năng cho admin

     - Xem, chỉnh sửa, xóa tất cả các thông tin về người dùng, sách, hóa đơn, liên hệ', N'* Yêu cầu máy đã cài đặt Netbeans và SQL  Server

1. Chạy database trong thư mục database

2. Mở Netbeans và chạy project', 1, 1, N'https://www.youtube.com/watch?v=_Wah73E_JlY', N'https://sharecode.vn/source-code/source-code-website-ban-sach-online-27953.htm#Download', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2021-03-25T00:00:00.000' AS DateTime), 1, 1, 0, NULL, 60, N'123', 2, 1, N'52edcade-c48c-440d-91d0-29501e648b1adh2.jpg')
INSERT [dbo].[Codes] ([code_id], [code_title], [code_coin], [code_code], [code_des], [code_info], [code_setting], [code_view], [code_viewdown], [code_linkdemo], [code_linkdown], [code_datecreate], [code_dateupdate], [code_active], [code_option], [code_del], [code_tag], [code_disk], [code_pass], [category_id], [user_id], [code_img]) VALUES (9, N'Full code Website wordpress bán cây giống cây lâm nghiệp', 0, N'CODE-1469297270', N'<p>assfdsfzdfsdfdsfdfsdfdsfsdfsdfsdfdsfdfsdfdsasa</p>', N'dfdhhhjgdhdfhdm', N'<p>fdsfsdfsdfdsadfddddddddddddddddddddddddddddd</p>', 0, 0, N'https://sharecode.vn/source-code/website-wordpress-ban-cay-giong-cay-lam-nghiep-cay-do-thi-gia-re-chuan-seo-27972.htm', N'https://sharecode.vn/source-code/website-wordpress-ban-cay-giong-cay-lam-nghiep-cay-do-thi-gia-re-chuan-seo-27972.htm', CAST(N'2021-03-28T13:18:17.783' AS DateTime), CAST(N'2021-03-28T13:18:17.783' AS DateTime), 2, 1, 0, N'sad;asdasd;sadas;sad;asd;assd;', 25, N'fgdf', 2, 3, N'af136340-16f5-49b3-98b8-df4651831371.png')
SET IDENTITY_INSERT [dbo].[Codes] OFF
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([group_id], [category_id], [user_id], [code_id], [language_id], [group_item]) VALUES (1, NULL, NULL, 9, 1, 1)
INSERT [dbo].[Groups] ([group_id], [category_id], [user_id], [code_id], [language_id], [group_item]) VALUES (2, NULL, NULL, 9, 2, 1)
INSERT [dbo].[Groups] ([group_id], [category_id], [user_id], [code_id], [language_id], [group_item]) VALUES (3, NULL, NULL, 9, 3, 1)
INSERT [dbo].[Groups] ([group_id], [category_id], [user_id], [code_id], [language_id], [group_item]) VALUES (4, NULL, NULL, 9, 4, 1)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (1, N'Android', 1, N'android.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (2, N'IOS', 1, N'ios.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (3, N'Window Phone', 1, N'wf.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (4, N'PHP & MySQL', 1, N'sql.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (5, N'Wordpress', 1, N'w.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (6, N'Joomla', 1, N'R249ac287e648fe4de1f443da6f6632fc.png', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (7, N'Visual C#', 1, N'csharp.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (8, N'Asp / Asp.net', 1, N'asp.net_.png', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (9, N'Java / JSP', 1, N'Comentarios-header.png', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (10, N'Visual Basic', 1, N'1200px-VB.NET_Logo.svg.png', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (11, N'Unity', 1, N'unnamed.jpg', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (12, N'C++', 1, N'0_ZpjhBs0gR5oSd3Il.png', 0)
INSERT [dbo].[Languages] ([language_id], [language_name], [language_active], [language_img], [language_view]) VALUES (13, N'HTML + Template', 1, N'html-la-gi-1280x720.jpg', 0)
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([oder_id], [user_id], [id_coder], [oder_datecreate], [code_id]) VALUES (11, 3, 1, CAST(N'2021-03-26T22:21:18.087' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pakages] ON 

INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (1, 20, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (2, 50, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (3, 100, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (4, 200, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (5, 300, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (6, 400, NULL, 1)
INSERT [dbo].[Pakages] ([pakege_id], [pakage_coin], [pakage_money], [pakage_active]) VALUES (7, 500, NULL, 1)
SET IDENTITY_INSERT [dbo].[Pakages] OFF
GO
SET IDENTITY_INSERT [dbo].[TakePrices] ON 

INSERT [dbo].[TakePrices] ([tp_id], [user_id], [tp_coin], [tp_datecreate], [tp_note], [tp_active], [tp_accountnumber], [tp_customer]) VALUES (1, 1, 100, CAST(N'2021-03-27T12:25:09.917' AS DateTime), NULL, 2, NULL, NULL)
INSERT [dbo].[TakePrices] ([tp_id], [user_id], [tp_coin], [tp_datecreate], [tp_note], [tp_active], [tp_accountnumber], [tp_customer]) VALUES (3, 1, 327, CAST(N'2021-03-27T12:49:06.120' AS DateTime), NULL, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TakePrices] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [user_email], [user_phone], [user_sex], [user_birth], [user_token], [user_role], [user_name], [user_coin], [user_datecreate], [user_dateupdate], [user_code], [user_active], [user_option], [user_del], [user_fa], [user_none], [user_view], [user_facode], [user_pass], [user_img]) VALUES (1, N'huynhminhtan4019@gmail.com', N'0924404019', 0, CAST(N'2021-03-25T16:29:11.193' AS DateTime), N'338aa56e-9786-4784-9902-64ca046432e6', 2, N'Tấn huỳnh', 327, CAST(N'2021-03-25T16:29:11.193' AS DateTime), NULL, N'#Music_Admin', 1, 1, 0, NULL, NULL, 0, NULL, N'0924404019', N'c2e91d27-3660-40ad-8e8a-0e043b973399LDR6AWn.png')
INSERT [dbo].[Users] ([user_id], [user_email], [user_phone], [user_sex], [user_birth], [user_token], [user_role], [user_name], [user_coin], [user_datecreate], [user_dateupdate], [user_code], [user_active], [user_option], [user_del], [user_fa], [user_none], [user_view], [user_facode], [user_pass], [user_img]) VALUES (2, N'tran@gmail.com', NULL, 1, CAST(N'2021-03-25T16:29:11.193' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Users] ([user_id], [user_email], [user_phone], [user_sex], [user_birth], [user_token], [user_role], [user_name], [user_coin], [user_datecreate], [user_dateupdate], [user_code], [user_active], [user_option], [user_del], [user_fa], [user_none], [user_view], [user_facode], [user_pass], [user_img]) VALUES (3, N'vuongbaot1905@gmail.com', NULL, 1, CAST(N'2021-03-25T16:29:11.193' AS DateTime), N'f9558345-42c1-43f7-9cdd-38c67986ec91', 2, N'BaoTran', 68, CAST(N'2021-03-26T19:13:22.103' AS DateTime), NULL, N'#Music_Admin', 1, 1, 0, N'Tôi thích code webste', NULL, 0, NULL, N'0924404019', NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Pakeges] FOREIGN KEY([pakege_id])
REFERENCES [dbo].[Pakages] ([pakege_id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Pakeges]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Users]
GO
ALTER TABLE [dbo].[Codes]  WITH CHECK ADD  CONSTRAINT [FK_Codes_Categorys] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categorys] ([category_id])
GO
ALTER TABLE [dbo].[Codes] CHECK CONSTRAINT [FK_Codes_Categorys]
GO
ALTER TABLE [dbo].[Codes]  WITH CHECK ADD  CONSTRAINT [FK_Codes_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Codes] CHECK CONSTRAINT [FK_Codes_Users]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Codes] FOREIGN KEY([code_id])
REFERENCES [dbo].[Codes] ([code_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Codes]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_News] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_News]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Users]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Categorys] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categorys] ([category_id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Categorys]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Codes] FOREIGN KEY([code_id])
REFERENCES [dbo].[Codes] ([code_id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Codes]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Languages] FOREIGN KEY([language_id])
REFERENCES [dbo].[Languages] ([language_id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Languages]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Users]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Oders_Codes] FOREIGN KEY([code_id])
REFERENCES [dbo].[Codes] ([code_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Oders_Codes]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Oders_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Oders_Users]
GO
ALTER TABLE [dbo].[Rep]  WITH CHECK ADD  CONSTRAINT [FK_Rep_Comment] FOREIGN KEY([comment_id])
REFERENCES [dbo].[Comment] ([comment_id])
GO
ALTER TABLE [dbo].[Rep] CHECK CONSTRAINT [FK_Rep_Comment]
GO
ALTER TABLE [dbo].[Rep]  WITH CHECK ADD  CONSTRAINT [FK_Rep_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Rep] CHECK CONSTRAINT [FK_Rep_Users]
GO
ALTER TABLE [dbo].[TakePrices]  WITH CHECK ADD  CONSTRAINT [FK_TakePrices_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[TakePrices] CHECK CONSTRAINT [FK_TakePrices_Users]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Codes] FOREIGN KEY([code_id])
REFERENCES [dbo].[Codes] ([code_id])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Codes]
GO
ALTER TABLE [dbo].[Tools]  WITH CHECK ADD  CONSTRAINT [FK_Tools_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Tools] CHECK CONSTRAINT [FK_Tools_Users]
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-1c2aae70-0a3f-449a-876c-af8e53bc6738]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-1c2aae70-0a3f-449a-876c-af8e53bc6738] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738') > 0)   DROP SERVICE [SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738]; if (OBJECT_ID('SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-1c2aae70-0a3f-449a-876c-af8e53bc6738]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-1c2aae70-0a3f-449a-876c-af8e53bc6738]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-873337c4-0214-4de6-8584-e8d27a238687]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-873337c4-0214-4de6-8584-e8d27a238687] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687') > 0)   DROP SERVICE [SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687]; if (OBJECT_ID('SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-873337c4-0214-4de6-8584-e8d27a238687]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-873337c4-0214-4de6-8584-e8d27a238687]; END COMMIT TRANSACTION; END
GO
/****** Object:  StoredProcedure [dbo].[SqlQueryNotificationStoredProcedure-a277350c-b0d7-4300-9f22-0f4a0bac414b]    Script Date: 3/28/2021 4:54:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SqlQueryNotificationStoredProcedure-a277350c-b0d7-4300-9f22-0f4a0bac414b] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN if ((SELECT COUNT(*) FROM sys.services WHERE name = 'SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b') > 0)   DROP SERVICE [SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b]; if (OBJECT_ID('SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b', 'SQ') IS NOT NULL)   DROP QUEUE [SqlQueryNotificationService-a277350c-b0d7-4300-9f22-0f4a0bac414b]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-a277350c-b0d7-4300-9f22-0f4a0bac414b]; END COMMIT TRANSACTION; END
GO
USE [master]
GO
ALTER DATABASE [DataShareCode] SET  READ_WRITE 
GO
