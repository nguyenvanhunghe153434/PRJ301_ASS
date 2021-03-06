USE [master]
GO
/****** Object:  Database [PRJ301_Project]    Script Date: 3/19/2022 10:22:55 PM ******/
CREATE DATABASE [PRJ301_Project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_Project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_Project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_Project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PRJ301_Project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_Project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_Project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_Project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_Project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_Project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_Project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_Project] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_Project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PRJ301_Project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_Project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_Project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_Project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_Project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_Project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_Project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_Project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_Project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PRJ301_Project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_Project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_Project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_Project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_Project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_Project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_Project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_Project] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_Project] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_Project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_Project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_Project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_Project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_Project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_Project] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_Project] SET QUERY_STORE = OFF
GO
USE [PRJ301_Project]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[Cid] [int] NOT NULL,
	[Cname] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Route]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[Rid] [int] NOT NULL,
	[Rname] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Route] PRIMARY KEY CLUSTERED 
(
	[Rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[Sid] [nvarchar](200) NOT NULL,
	[Sname] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Tid] [int] NOT NULL,
	[Tname] [nvarchar](200) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/19/2022 10:22:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Name] [nvarchar](200) NOT NULL,
	[Phone] [nvarchar](11) NOT NULL,
	[Car] [nvarchar](200) NOT NULL,
	[Seat] [nvarchar](200) NOT NULL,
	[Route] [nvarchar](200) NOT NULL,
	[Time] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password]) VALUES (N'ad', N'123')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'admin', N'admin')
GO
INSERT [dbo].[Car] ([Cid], [Cname]) VALUES (1, N'Xe Thường')
INSERT [dbo].[Car] ([Cid], [Cname]) VALUES (2, N'Xe Vip (Limousine)')
GO
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (1, N'Hà Tĩnh - Hà Nội ( Nước Ngầm)')
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (2, N'Hà Tĩnh - Hà Nội ( Mỹ Đình ) ')
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (3, N'Hà Tĩnh - Phú Thọ ( Việt Trì ) ')
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (4, N'Hà Nội ( Nước Ngầm ) - Hà Tĩnh')
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (5, N'Hà Nội ( Mỹ Đình ) - Hà Tĩnh')
INSERT [dbo].[Route] ([Rid], [Rname]) VALUES (6, N'Phú Thọ ( Việt Trì ) - Hà Tĩnh')
GO
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'1', N'A-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'2', N'A-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'3', N'A-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'4', N'A-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'5', N'A-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'6', N'A-6')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'7', N'B-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'8', N'B-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'9', N'B-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'10', N'B-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'11', N'B-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'12', N'B-6')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'13', N'C-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'14', N'C-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'15', N'C-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'16', N'C-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'17', N'C-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'18', N'C-6')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'19', N'D-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'20', N'D-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'21', N'D-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'22', N'D-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'23', N'D-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'24', N'D-6')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'25', N'E-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'26', N'E-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'27', N'E-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'28', N'E-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'29', N'E-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'30', N'E-6')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'31', N'F-1')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'32', N'F-2')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'33', N'F-3')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'35', N'F-4')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'35', N'F-5')
INSERT [dbo].[Seat] ([Sid], [Sname]) VALUES (N'36', N'F-6')
GO
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (1, N'8h')
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (2, N'12h')
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (3, N'17h')
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (4, N'20h')
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (5, N'22h')
INSERT [dbo].[Time] ([Tid], [Tname]) VALUES (6, N'23h')
GO
INSERT [dbo].[User] ([Name], [Phone], [Car], [Seat], [Route], [Time]) VALUES (N'adas', N'123154', N'2', N'3', N'2', N'2')
INSERT [dbo].[User] ([Name], [Phone], [Car], [Seat], [Route], [Time]) VALUES (N'hung', N'123456', N'Xe ThÆ°á»ng', N'A-2', N'HÃ  TÄ©nh - HÃ  Ná»i ( Má»¹ ÄÃ¬nh ) ', N'12h')
INSERT [dbo].[User] ([Name], [Phone], [Car], [Seat], [Route], [Time]) VALUES (N'hùng', N'12346798', N'Xe Vip (Limousine)', N'A-4', N'Hà Tĩnh - Hà Nội ( Mỹ Đình ) ', N'17h')
INSERT [dbo].[User] ([Name], [Phone], [Car], [Seat], [Route], [Time]) VALUES (N'thai', N'89746', N'Xe Thường', N'A-5', N'Hà Tĩnh - Phú Thọ ( Việt Trì ) ', N'20h')
GO
USE [master]
GO
ALTER DATABASE [PRJ301_Project] SET  READ_WRITE 
GO
