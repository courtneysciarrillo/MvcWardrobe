USE [master]
GO
/****** Object:  Database [MvcWardrobeDb1]    Script Date: 7/30/2018 7:40:58 AM ******/
CREATE DATABASE [MvcWardrobeDb1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MvcWardrobeDb1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MvcWardrobeDb1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MvcWardrobeDb1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MvcWardrobeDb1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MvcWardrobeDb1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MvcWardrobeDb1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MvcWardrobeDb1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET ARITHABORT OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MvcWardrobeDb1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MvcWardrobeDb1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MvcWardrobeDb1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MvcWardrobeDb1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MvcWardrobeDb1] SET  MULTI_USER 
GO
ALTER DATABASE [MvcWardrobeDb1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MvcWardrobeDb1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MvcWardrobeDb1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MvcWardrobeDb1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MvcWardrobeDb1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MvcWardrobeDb1]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 7/30/2018 7:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 7/30/2018 7:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 7/30/2018 7:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 7/30/2018 7:40:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[Season] [nvarchar](50) NULL,
	[Occasion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoryId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Baseball Hat', N'~/Images/baseball-hat.jpg', N'Hat', N'Black', N'All', N'Casual')
INSERT [dbo].[Accessories] ([AccessoryId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Fedora Hat', N'~/Images/fedora-hat.jpg', N'Hat', N'Beige', N'All', N'Cocktail')
INSERT [dbo].[Accessories] ([AccessoryId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Sun Hat', N'~/Images/sun-hat.jpg', N'Hat', N'Ivory', N'All', N'Casual')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'Blue Jeans', N'~/Images/blue-jean.jpg', N'Pants', N'Denim', N'All', N'Casual')
INSERT [dbo].[Bottoms] ([BottomId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Light Denim', N'~/Images/light-denim.jpg', N'Pants', N'Denim', N'All', N'Casual')
INSERT [dbo].[Bottoms] ([BottomId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Relaxed Fit Jeans', N'~/Images/relaxed-fit.jpg', N'Pants', N'Black', N'All', N'Casual')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'High Heels', N'~/Images/heels.jpg', N'Heels', N'Blue', N'Summer', N'Multi')
INSERT [dbo].[Shoes] ([ShoeId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Winter Boots', N'~/Images/boots.jpg', N'Boots', N'Blue', N'Winter', N'Casual')
INSERT [dbo].[Shoes] ([ShoeId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Kicks', N'~/Images/sneakers.jpg', N'Tennis Shoes', N'Blue', N'All', N'Casual')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (1, N'100% Cotton T-shirt', N'~/Images/gray-tshirt.jpg', N'Shirt', N'Gray', N'All', N'Casual')
INSERT [dbo].[Tops] ([TopId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (2, N'Cotton Cami', N'~/Images/cotton-cami.jpg', N'Shirt', N'Various', N'Summer', N'Casual')
INSERT [dbo].[Tops] ([TopId], [Name], [Photo], [Type], [Color], [Season], [Occasion]) VALUES (3, N'Knit Sweater', N'~/Images/sweater.jpg', N'Sweater', N'Multi', N'Winter', N'Casual')
SET IDENTITY_INSERT [dbo].[Tops] OFF
USE [master]
GO
ALTER DATABASE [MvcWardrobeDb1] SET  READ_WRITE 
GO
