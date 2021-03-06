USE [master]
GO
/****** Object:  Database [MadeToMeasure]    Script Date: 12/2/2016 11:36:26 AM ******/
CREATE DATABASE [MadeToMeasure]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MadeToMeasure', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MadeToMeasure.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MadeToMeasure_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MadeToMeasure_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MadeToMeasure] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MadeToMeasure].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MadeToMeasure] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MadeToMeasure] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MadeToMeasure] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MadeToMeasure] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MadeToMeasure] SET ARITHABORT OFF 
GO
ALTER DATABASE [MadeToMeasure] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MadeToMeasure] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MadeToMeasure] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MadeToMeasure] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MadeToMeasure] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MadeToMeasure] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MadeToMeasure] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MadeToMeasure] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MadeToMeasure] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MadeToMeasure] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MadeToMeasure] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MadeToMeasure] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MadeToMeasure] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MadeToMeasure] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MadeToMeasure] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MadeToMeasure] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MadeToMeasure] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MadeToMeasure] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MadeToMeasure] SET  MULTI_USER 
GO
ALTER DATABASE [MadeToMeasure] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MadeToMeasure] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MadeToMeasure] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MadeToMeasure] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MadeToMeasure] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MadeToMeasure]
GO
/****** Object:  Table [dbo].[BlazerMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlazerMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Chest] [float] NOT NULL,
	[Shoulder] [float] NOT NULL,
	[Sleeve] [float] NOT NULL,
	[Bicep] [float] NOT NULL,
	[Wrist] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessEntity]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntity](
	[EntityCode] [int] IDENTITY(1,1) NOT NULL,
	[EntityType] [int] NOT NULL,
	[Entity_Address] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[EntityCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessEntityType]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Entity Name] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentType]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] NOT NULL,
	[ShopCode] [int] NOT NULL,
	[SalesPersonId] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[AdvanceReceived] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[InvoiceId] [int] NOT NULL,
	[StitchingJobId] [int] NOT NULL,
	[Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC,
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Item](
	[ItemCode] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseCode] [int] NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
	[VendorName] [nvarchar](max) NOT NULL,
	[UnitofMeasure] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitCostPrice] [float] NOT NULL,
	[PercentageProfit] [float] NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JobType]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KurtaMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KurtaMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Chest] [float] NOT NULL,
	[Shoulder] [float] NOT NULL,
	[Sleeve] [float] NOT NULL,
	[Collar] [float] NOT NULL,
	[Daman] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderfromVendor]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderfromVendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[WarehouseManager] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
	[VendorName] [nvarchar](max) NOT NULL,
	[UnitofMeasure] [varchar](10) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Color] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PantMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PantMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Waist] [float] NOT NULL,
	[Hip] [float] NOT NULL,
	[Thigh] [float] NOT NULL,
	[OutSeam] [float] NOT NULL,
	[Inseam] [float] NOT NULL,
	[Crotch] [float] NOT NULL,
	[Knee] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductionActivity]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionActivity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StitchingJobId] [int] NOT NULL,
	[StitchingUnitEmployeeId] [int] NOT NULL,
	[TimeStamp] [datetime] NOT NULL,
	[ProgressStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptID] [int] NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShalwarMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShalwarMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Waist] [float] NOT NULL,
	[Bottom] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShirtMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShirtMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Chest] [float] NOT NULL,
	[Shoulder] [float] NOT NULL,
	[Sleeve] [float] NOT NULL,
	[Collar] [float] NOT NULL,
	[HalfBack] [float] NOT NULL,
	[FullBack] [float] NOT NULL,
	[Bicep] [float] NOT NULL,
	[Wrist] [float] NOT NULL,
	[Waist] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shop]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[ShopCode] [int] NOT NULL,
	[AssociatedWarehouseCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ShopCode] ASC,
	[AssociatedWarehouseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShopOrder]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShopCode] [int] NOT NULL,
	[ItemCode] [int] NULL,
	[Quantity] [int] NOT NULL,
	[WarehouseStatus] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StitchingJob]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StitchingJob](
	[JobId] [int] NOT NULL,
	[JobTypeId] [int] NULL,
	[CustomerId] [int] NULL,
	[ShopCode] [int] NULL,
	[WarehouseStatus] [int] NOT NULL,
	[CurrentStatus] [int] NULL,
	[FabricfromCustomer] [int] NOT NULL,
	[ExpectedDate] [date] NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StitchingJobDetails]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StitchingJobDetails](
	[JobId] [int] NOT NULL,
	[ItemCode] [int] NOT NULL,
	[Quantity] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[ItemCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StitchingUnitDepartmentHead]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StitchingUnitDepartmentHead](
	[Id] [int] NOT NULL,
	[AssociatedDepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AssociatedDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StitchingUnitEmployee]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StitchingUnitEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[WarehouseId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuitMeasurements]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuitMeasurements](
	[StitchingJobId] [int] NOT NULL,
	[Length] [float] NOT NULL,
	[Chest] [float] NOT NULL,
	[Shoulder] [float] NOT NULL,
	[Sleeve] [float] NOT NULL,
	[Collar] [float] NOT NULL,
	[HalfBack] [float] NOT NULL,
	[FullBack] [float] NOT NULL,
	[Bicep] [float] NOT NULL,
	[Wrist] [float] NOT NULL,
	[Waist] [float] NOT NULL,
	[Hip] [float] NOT NULL,
	[Thigh] [float] NOT NULL,
	[OutSeam] [float] NOT NULL,
	[Inseam] [float] NOT NULL,
	[Crotch] [float] NOT NULL,
	[Knee] [float] NOT NULL,
	[Other_Details] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StitchingJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[UserType] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[JoiningDate] [date] NOT NULL,
	[WorksAt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 12/2/2016 11:36:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[WarehouseCode] [int] NOT NULL,
	[AssociatedStitchingUnitCode] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WarehouseCode] ASC,
	[AssociatedStitchingUnitCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[BusinessEntity] ON 

INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (1, 1, N'Shop#343 ,Johar Town, Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (2, 1, N'Shop#55 Akbar Town, Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (3, 1, N'Shop#11 ,Walton , Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (4, 2, N'Garden Town, Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (5, 2, N'Nabeel Chowk, Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (6, 3, N'Cantt. , Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (7, 3, N'Pak-Arab Society, Lahore')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (8, 1, N'New Shop Address')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (9, 2, N'new Warehouse')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (10, 3, N'new Stitching Unit')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (11, 1, N'sultan ki new shop')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (12, 1, N'10 krim block')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (13, 2, N'karim warehouse')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (14, 3, N'karim stitching')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (15, 3, N'arslan stitching unit')
INSERT [dbo].[BusinessEntity] ([EntityCode], [EntityType], [Entity_Address]) VALUES (16, 1, N'new shops')
SET IDENTITY_INSERT [dbo].[BusinessEntity] OFF
SET IDENTITY_INSERT [dbo].[BusinessEntityType] ON 

INSERT [dbo].[BusinessEntityType] ([Id], [Entity Name]) VALUES (1, N'Shop')
INSERT [dbo].[BusinessEntityType] ([Id], [Entity Name]) VALUES (2, N'Warehouse')
INSERT [dbo].[BusinessEntityType] ([Id], [Entity Name]) VALUES (3, N'Stitching Unit')
SET IDENTITY_INSERT [dbo].[BusinessEntityType] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Fabric')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Accessory ')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Latha')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (4, N'Cotton')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (5, N'Silk')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (6, N'Washing Ware')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (7, N'J Category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (8, N'M Category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (9, N'G Categpry')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (10, N'L Category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (11, N'K category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (12, N'O category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (13, N'Y Category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (14, N'T category')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (15, N'Z Category')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[DepartmentType] ON 

INSERT [dbo].[DepartmentType] ([Id], [DepartmentName]) VALUES (1, N'Cutting')
INSERT [dbo].[DepartmentType] ([Id], [DepartmentName]) VALUES (2, N'Embroidary')
INSERT [dbo].[DepartmentType] ([Id], [DepartmentName]) VALUES (3, N'Stitching')
INSERT [dbo].[DepartmentType] ([Id], [DepartmentName]) VALUES (4, N'Quality Assurance')
INSERT [dbo].[DepartmentType] ([Id], [DepartmentName]) VALUES (5, N'Packing')
SET IDENTITY_INSERT [dbo].[DepartmentType] OFF
INSERT [dbo].[Invoice] ([InvoiceId], [ShopCode], [SalesPersonId], [Date], [TotalAmount], [AdvanceReceived]) VALUES (1, 1, 6, CAST(N'2012-02-02' AS Date), 1000, 200)
INSERT [dbo].[InvoiceDetails] ([InvoiceId], [StitchingJobId], [Price]) VALUES (1, 1, 1000)
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (0, 4, 2, 9, N'jobhiho', N'nahipta', N'Units', 1000, 12, 10, N'green')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (1, 4, 1, 1, N'Zara Men', N'Ali Amir', N'Meters', 900, 800, 5, N'Black')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (2, 4, 1, 2, N'Outfitters', N'Saad Ajmal', N'Meters', 400, 900, 10, N'Blue')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (3, 4, 1, 1, N'Nayaab', N'Jamshed Shahid', N'Meters', 1000, 100, 10, N'Brown')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (4, 5, 1, 2, N'Fazal', N'Ali Mueen', N'Meters', 20000, 900, 10, N'Green')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (6, 1, 1, 1, N'asa', N'as', N'as', 22, 22, 22, N'asas')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (7, 1, 1, 1, N'as', N'as', N'as', 2, 2, 2, N'as')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (8, 4, 1, 1, N'New Brand', N'New Vendor', N'Meters', 1212, 1212, 1212, N'New Color')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (9, 4, 1, 2, N'well', N'well', N'Meters', 11, 111, 111, N'well')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (10, 4, 1, 2, N'adsasdasd', N'asdasdasdasd', N'Meters', 1212, 121212, 1212, N'asdasdasdasdad')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (11, 4, 1, 1, N'Gul Ahmed', N'Gul Ahmed', N'Meters', 100, 1000, 15, N'white')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (12, 4, 1, 1, N'Gul Ahmed', N'Gul Ahmed', N'Meters', 50, 500, 5, N'white')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (13, 4, 1, 1, N'Gul Ahmed', N'Gul Ahmed', N'Meters', 12, 500, 5, N'white')
INSERT [dbo].[Item] ([ItemCode], [WarehouseCode], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [UnitCostPrice], [PercentageProfit], [Color]) VALUES (14, 4, 2, 9, N'Mr Button', N'Mr Button', N'Units', 1099, 300, 10, N'white')
SET IDENTITY_INSERT [dbo].[Item] OFF
SET IDENTITY_INSERT [dbo].[JobType] ON 

INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (1, N'Suit')
INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (2, N'Pant')
INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (3, N'Shirt')
INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (4, N'Blazer')
INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (5, N'Shalwar')
INSERT [dbo].[JobType] ([Id], [JobName]) VALUES (6, N'Kurta')
SET IDENTITY_INSERT [dbo].[JobType] OFF
SET IDENTITY_INSERT [dbo].[OrderfromVendor] ON 

INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (2, 1, 1, 1, 1, N'Nishat', N'Ahmad', N'Meters', 120, N'Black')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (3, 1, 1, 2, 1, N'Ashfaq Accessories', N'Ali', N'Packets', 100, N'Brown')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (4, 1, 1, 1, 2, N'Zara Men', N'Jamshed', N'Meters', 110, N'Blue')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (5, 1, 1, 1, 1, N'Bandook', N'Bandook Khan', N'Meters', 1000, N'Black')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (7, 1, 1, 1, 2, N'HSYn', N'Jamil Khan', N'Meters', 2000, N'Green')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (11, 1, 1, 1, 2, N'Hunt', N'Ali Khan', N'Meters', 100, N'lemon')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (12, 1, 1, 1, 1, N'askaksmkas', N'Jaakkk', N'Meters', 1000, N'akskakskasas')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (14, 0, 1, 3, 12, N'HHSS', N'HHamza', N'Meters', 12, N'Blue')
INSERT [dbo].[OrderfromVendor] ([Id], [Status], [WarehouseManager], [CategoryId], [SubCategoryId], [BrandName], [VendorName], [UnitofMeasure], [Quantity], [Color]) VALUES (15, 0, 1, 1, 2, N'RRRa', N'ASasas', N'Meters', 1212, N'asasas')
SET IDENTITY_INSERT [dbo].[OrderfromVendor] OFF
SET IDENTITY_INSERT [dbo].[ProductionActivity] ON 

INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (3, 1, 4, CAST(N'2016-12-01 18:10:51.007' AS DateTime), 6)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (4, 1, 2, CAST(N'2016-12-01 18:40:22.277' AS DateTime), 6)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (5, 1, 2, CAST(N'2016-12-01 18:49:55.870' AS DateTime), 6)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (6, 1, 2, CAST(N'2016-12-01 19:15:18.027' AS DateTime), 1)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (7, 1, 2, CAST(N'2016-12-01 19:26:46.847' AS DateTime), 1)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (8, 1, 2, CAST(N'2016-12-01 19:27:03.227' AS DateTime), 1)
INSERT [dbo].[ProductionActivity] ([Id], [StitchingJobId], [StitchingUnitEmployeeId], [TimeStamp], [ProgressStatus]) VALUES (9, 1, 4, CAST(N'2016-12-01 19:27:43.147' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ProductionActivity] OFF
INSERT [dbo].[Receipt] ([ReceiptID], [InvoiceId], [Amount], [Date]) VALUES (89954, 1, 1000, CAST(N'2016-12-02' AS Date))
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (1, 4)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (2, 4)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (3, 5)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (8, 4)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (11, 4)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (12, 4)
INSERT [dbo].[Shop] ([ShopCode], [AssociatedWarehouseCode]) VALUES (16, 9)
SET IDENTITY_INSERT [dbo].[ShopOrder] ON 

INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (1, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (2, 2, 2, 200, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (3, 1, 1, 20, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (4, 2, 2, 900, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (5, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (6, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (7, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (8, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (9, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (10, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (11, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (12, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (13, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (14, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (15, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (16, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (17, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (18, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (19, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (20, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (21, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (22, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (23, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (24, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (25, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (26, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (27, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (28, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (29, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (30, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (31, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (32, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (33, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (34, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (35, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (36, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (37, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (38, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (39, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (40, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (41, 1, 1, 100, 0)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (42, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (43, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (44, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (45, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (46, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (47, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (48, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (49, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (50, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (51, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (52, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (53, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (54, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (55, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (56, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (57, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (58, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (59, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (60, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (61, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (62, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (63, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (64, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (65, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (66, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (67, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (68, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (69, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (70, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (71, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (72, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (73, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (74, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (75, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (76, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (77, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (78, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (79, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (80, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (81, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (82, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (83, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (84, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (85, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (86, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (87, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (88, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (89, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (90, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (91, 1, 1, 100, 1)
INSERT [dbo].[ShopOrder] ([Id], [ShopCode], [ItemCode], [Quantity], [WarehouseStatus]) VALUES (92, 1, 1, 50, 1)
SET IDENTITY_INSERT [dbo].[ShopOrder] OFF
INSERT [dbo].[StitchingJob] ([JobId], [JobTypeId], [CustomerId], [ShopCode], [WarehouseStatus], [CurrentStatus], [FabricfromCustomer], [ExpectedDate], [OrderDate]) VALUES (1, 1, 11, 1, 0, 0, 1, CAST(N'2016-12-02' AS Date), CAST(N'2016-11-20' AS Date))
INSERT [dbo].[StitchingJob] ([JobId], [JobTypeId], [CustomerId], [ShopCode], [WarehouseStatus], [CurrentStatus], [FabricfromCustomer], [ExpectedDate], [OrderDate]) VALUES (2, 2, 4, 2, 0, 0, 0, CAST(N'2016-12-22' AS Date), CAST(N'2016-11-21' AS Date))
INSERT [dbo].[StitchingJob] ([JobId], [JobTypeId], [CustomerId], [ShopCode], [WarehouseStatus], [CurrentStatus], [FabricfromCustomer], [ExpectedDate], [OrderDate]) VALUES (3, 3, 3, 1, 0, 0, 0, CAST(N'2016-12-20' AS Date), CAST(N'2016-11-23' AS Date))
INSERT [dbo].[StitchingJobDetails] ([JobId], [ItemCode], [Quantity]) VALUES (1, 1, N'10')
INSERT [dbo].[StitchingJobDetails] ([JobId], [ItemCode], [Quantity]) VALUES (2, 2, N'10')
INSERT [dbo].[StitchingJobDetails] ([JobId], [ItemCode], [Quantity]) VALUES (3, 1, N'12')
INSERT [dbo].[StitchingUnitDepartmentHead] ([Id], [AssociatedDepartmentId]) VALUES (8, 1)
INSERT [dbo].[StitchingUnitDepartmentHead] ([Id], [AssociatedDepartmentId]) VALUES (9, 3)
SET IDENTITY_INSERT [dbo].[StitchingUnitEmployee] ON 

INSERT [dbo].[StitchingUnitEmployee] ([Id], [Name], [WarehouseId], [DepartmentId]) VALUES (1, N'New St Employee', 10, 4)
INSERT [dbo].[StitchingUnitEmployee] ([Id], [Name], [WarehouseId], [DepartmentId]) VALUES (2, N'ST Emp 1', 10, 1)
INSERT [dbo].[StitchingUnitEmployee] ([Id], [Name], [WarehouseId], [DepartmentId]) VALUES (3, N'St2', 10, 3)
INSERT [dbo].[StitchingUnitEmployee] ([Id], [Name], [WarehouseId], [DepartmentId]) VALUES (4, N'ST3', 10, 1)
INSERT [dbo].[StitchingUnitEmployee] ([Id], [Name], [WarehouseId], [DepartmentId]) VALUES (5, N'arslan', 10, 2)
SET IDENTITY_INSERT [dbo].[StitchingUnitEmployee] OFF
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (1, 1, N'Latha')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (2, 1, N'Cotton')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (7, 1, N'WashingWare')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (9, 2, N'Button')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (11, 2, N'Embroidary')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (12, 3, N'Karandi')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (13, 6, N'Smoth')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (14, 8, N'New SubCategory')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (15, 10, N'M SubCategory')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (16, 11, N'Ny subcategry')
INSERT [dbo].[SubCategory] ([SubCategoryId], [CategoryId], [SubCategoryName]) VALUES (17, 1, N'Smooth')
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (1, N'hamzasaleem@gmail.com', N'123456', 3, N'Hamza Saleem', CAST(N'2002-04-01' AS Date), 4)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (2, N'mohsinjavaid@gmail.com', N'123456', 3, N'Mohsin Javaid', CAST(N'2006-02-01' AS Date), 5)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (3, N'03023839058', N'123456', 1, N'Ali Ahmad', CAST(N'2005-03-04' AS Date), NULL)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (4, N'03164388758', N'123456', 1, N'Zeeshan Bukhari', CAST(N'2010-03-12' AS Date), NULL)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (5, N'admin@gmail.com', N'123456', 7, N'Khizar Iqbal', CAST(N'2014-04-03' AS Date), NULL)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (6, N'newshopkeeper@gmail.com', N'123456', 2, N'wdwd', CAST(N'2016-11-30' AS Date), 8)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (7, N'03347373101', N'123456', 1, N'Juni ', CAST(N'2016-12-01' AS Date), NULL)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (8, N'cuttinghead@gmail.com', N'123456', 5, N'Sultan Rind', CAST(N'2015-11-21' AS Date), 10)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (9, N'stitchinghead@gmail.com', N'123456', 5, N'Sultan Khan', CAST(N'2015-12-01' AS Date), 10)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (10, N'k@gmail.com', N'123456', 2, N'Khizar', CAST(N'2038-02-08' AS Date), 12)
INSERT [dbo].[Users] ([Id], [UserId], [Password], [UserType], [Name], [JoiningDate], [WorksAt]) VALUES (11, N'03104792948', N'123456', 1, N'Sultan', CAST(N'2016-12-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (1, N'Customer')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (2, N'Shopkeeper')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (3, N'Warehouse Manager')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (4, N'Stitching Unit Manager')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (5, N'Stitching Unit Department Head')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (6, N'Stitching Unit Employee')
INSERT [dbo].[UserType] ([Id], [Type]) VALUES (7, N'Admin')
INSERT [dbo].[Warehouse] ([WarehouseCode], [AssociatedStitchingUnitCode]) VALUES (4, 6)
INSERT [dbo].[Warehouse] ([WarehouseCode], [AssociatedStitchingUnitCode]) VALUES (5, 7)
INSERT [dbo].[Warehouse] ([WarehouseCode], [AssociatedStitchingUnitCode]) VALUES (9, 10)
INSERT [dbo].[Warehouse] ([WarehouseCode], [AssociatedStitchingUnitCode]) VALUES (13, 14)
ALTER TABLE [dbo].[BlazerMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[BusinessEntity]  WITH CHECK ADD FOREIGN KEY([EntityType])
REFERENCES [dbo].[BusinessEntityType] ([Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([SalesPersonId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([ShopCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD FOREIGN KEY([WarehouseCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[KurtaMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[OrderfromVendor]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[OrderfromVendor]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO
ALTER TABLE [dbo].[OrderfromVendor]  WITH CHECK ADD FOREIGN KEY([WarehouseManager])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[PantMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[ProductionActivity]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[ProductionActivity]  WITH CHECK ADD FOREIGN KEY([StitchingUnitEmployeeId])
REFERENCES [dbo].[StitchingUnitEmployee] ([Id])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[ShalwarMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[ShirtMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD FOREIGN KEY([AssociatedWarehouseCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD FOREIGN KEY([ShopCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[ShopOrder]  WITH CHECK ADD FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Item] ([ItemCode])
GO
ALTER TABLE [dbo].[ShopOrder]  WITH CHECK ADD FOREIGN KEY([ShopCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[StitchingJob]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[StitchingJob]  WITH CHECK ADD FOREIGN KEY([JobTypeId])
REFERENCES [dbo].[JobType] ([Id])
GO
ALTER TABLE [dbo].[StitchingJob]  WITH CHECK ADD FOREIGN KEY([ShopCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[StitchingJobDetails]  WITH CHECK ADD FOREIGN KEY([ItemCode])
REFERENCES [dbo].[Item] ([ItemCode])
GO
ALTER TABLE [dbo].[StitchingUnitDepartmentHead]  WITH CHECK ADD FOREIGN KEY([AssociatedDepartmentId])
REFERENCES [dbo].[DepartmentType] ([Id])
GO
ALTER TABLE [dbo].[StitchingUnitDepartmentHead]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[StitchingUnitEmployee]  WITH CHECK ADD FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DepartmentType] ([Id])
GO
ALTER TABLE [dbo].[StitchingUnitEmployee]  WITH CHECK ADD FOREIGN KEY([WarehouseId])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[SuitMeasurements]  WITH CHECK ADD FOREIGN KEY([StitchingJobId])
REFERENCES [dbo].[StitchingJob] ([JobId])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserType])
REFERENCES [dbo].[UserType] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([WorksAt])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([AssociatedStitchingUnitCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([WarehouseCode])
REFERENCES [dbo].[BusinessEntity] ([EntityCode])
GO
USE [master]
GO
ALTER DATABASE [MadeToMeasure] SET  READ_WRITE 
GO
