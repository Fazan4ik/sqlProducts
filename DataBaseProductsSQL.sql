USE [master]
GO
/****** Object:  Database [HW19.07.2023]    Script Date: 20.07.2023 16:37:08 ******/
CREATE DATABASE [HW19.07.2023]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HW19.07.2023', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HW19.07.2023.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HW19.07.2023_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\HW19.07.2023_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HW19.07.2023] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HW19.07.2023].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HW19.07.2023] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HW19.07.2023] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HW19.07.2023] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HW19.07.2023] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HW19.07.2023] SET ARITHABORT OFF 
GO
ALTER DATABASE [HW19.07.2023] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HW19.07.2023] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HW19.07.2023] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HW19.07.2023] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HW19.07.2023] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HW19.07.2023] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HW19.07.2023] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HW19.07.2023] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HW19.07.2023] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HW19.07.2023] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HW19.07.2023] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HW19.07.2023] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HW19.07.2023] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HW19.07.2023] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HW19.07.2023] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HW19.07.2023] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HW19.07.2023] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HW19.07.2023] SET RECOVERY FULL 
GO
ALTER DATABASE [HW19.07.2023] SET  MULTI_USER 
GO
ALTER DATABASE [HW19.07.2023] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HW19.07.2023] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HW19.07.2023] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HW19.07.2023] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HW19.07.2023] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HW19.07.2023] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HW19.07.2023', N'ON'
GO
ALTER DATABASE [HW19.07.2023] SET QUERY_STORE = ON
GO
ALTER DATABASE [HW19.07.2023] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HW19.07.2023]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 20.07.2023 16:37:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[id] [int] NOT NULL,
	[street] [nchar](25) NULL,
	[id_city] [int] NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[id_region] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[id] [int] NOT NULL,
	[id_product] [int] NULL,
	[id_supplier] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[date_of_delivery] [date] NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Markup]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markup](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[percent] [int] NULL,
 CONSTRAINT [PK_Markup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measurement]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurement](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[description] [nchar](25) NULL,
 CONSTRAINT [PK_Measurement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[id_adress] [int] NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[id_category] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[id_producer] [int] NULL,
	[id_measurement] [int] NULL,
	[id_markup] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[id_country] [int] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[id] [int] NOT NULL,
	[id_product] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[date_of_sale] [date] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 20.07.2023 16:37:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[id] [int] NOT NULL,
	[name] [nchar](25) NULL,
	[id_adress] [int] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adress] ([id], [street], [id_city]) VALUES (1, N'Odesa street             ', 1)
INSERT [dbo].[Adress] ([id], [street], [id_city]) VALUES (2, N'Polska street            ', 2)
INSERT [dbo].[Adress] ([id], [street], [id_city]) VALUES (3, N'Berlin plaza             ', 3)
INSERT [dbo].[Adress] ([id], [street], [id_city]) VALUES (4, N'Napoleon street          ', 4)
INSERT [dbo].[Adress] ([id], [street], [id_city]) VALUES (5, N'Slovakia street          ', 5)
GO
INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'American Products        ')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Poland Products          ')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Germany Products         ')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Paris Products           ')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Slovakia Products        ')
GO
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (1, N'Dallas                   ', 1)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (2, N'Krakow                   ', 2)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (3, N'Berlin                   ', 3)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (4, N'Paris                    ', 4)
INSERT [dbo].[City] ([id], [name], [id_region]) VALUES (5, N'Bratislava               ', 5)
GO
INSERT [dbo].[Country] ([id], [name]) VALUES (1, N'USA                      ')
INSERT [dbo].[Country] ([id], [name]) VALUES (2, N'Poland                   ')
INSERT [dbo].[Country] ([id], [name]) VALUES (3, N'Germany                  ')
INSERT [dbo].[Country] ([id], [name]) VALUES (4, N'France                   ')
INSERT [dbo].[Country] ([id], [name]) VALUES (5, N'Slovakia                 ')
GO
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quantity], [date_of_delivery]) VALUES (1, 1, 1, 50, 100, CAST(N'2023-07-16' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quantity], [date_of_delivery]) VALUES (2, 2, 2, 10, 30, CAST(N'2023-07-10' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quantity], [date_of_delivery]) VALUES (3, 3, 3, 10, 50, CAST(N'2023-06-10' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quantity], [date_of_delivery]) VALUES (4, 4, 4, 20, 199, CAST(N'2023-07-20' AS Date))
INSERT [dbo].[Delivery] ([id], [id_product], [id_supplier], [price], [quantity], [date_of_delivery]) VALUES (5, 5, 5, 9, 125, CAST(N'2023-07-19' AS Date))
GO
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (1, N'American                 ', 25)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (2, N'Poland                   ', 20)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (3, N'Germany                  ', 10)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (4, N'Paris                    ', 0)
INSERT [dbo].[Markup] ([id], [name], [percent]) VALUES (5, N'Slovakia                 ', 15)
GO
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (1, N'American                 ', N'ft                       ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (2, N'Poland                   ', N'kg                       ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (3, N'Germany                  ', N'kg                       ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (4, N'France                   ', N'kg                       ')
INSERT [dbo].[Measurement] ([id], [name], [description]) VALUES (5, N'Slovakia                 ', N'kg                       ')
GO
INSERT [dbo].[Producer] ([id], [name], [id_adress]) VALUES (1, N'TexasProducts            ', 1)
INSERT [dbo].[Producer] ([id], [name], [id_adress]) VALUES (2, N'krakowProducts           ', 2)
INSERT [dbo].[Producer] ([id], [name], [id_adress]) VALUES (3, N'BerlinBeer               ', 3)
INSERT [dbo].[Producer] ([id], [name], [id_adress]) VALUES (4, N'ParisBaget               ', 4)
INSERT [dbo].[Producer] ([id], [name], [id_adress]) VALUES (5, N'BratislavaFood           ', 5)
GO
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quantity], [id_producer], [id_measurement], [id_markup]) VALUES (1, N'American Beer            ', 1, 100, 125, 1, 1, 1)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quantity], [id_producer], [id_measurement], [id_markup]) VALUES (2, N'Poland Bread             ', 2, 75, 100, 2, 2, 2)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quantity], [id_producer], [id_measurement], [id_markup]) VALUES (3, N'Berlin Kvas              ', 3, 199, 125, 3, 3, 3)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quantity], [id_producer], [id_measurement], [id_markup]) VALUES (4, N'France Baget             ', 4, 200, 50, 4, 4, 4)
INSERT [dbo].[Product] ([id], [name], [id_category], [price], [quantity], [id_producer], [id_measurement], [id_markup]) VALUES (5, N'Slovakian Borovichka     ', 5, 50, 75, 5, 5, 5)
GO
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (1, N'Texas                    ', 1)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (2, N'Małopolskie województwo  ', 2)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (3, N'Brandenburg
            ', 3)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (4, N'Île-de-France            ', 4)
INSERT [dbo].[Region] ([id], [name], [id_country]) VALUES (5, N'Bratislava               ', 5)
GO
INSERT [dbo].[Sale] ([id], [id_product], [price], [quantity], [date_of_sale]) VALUES (1, 1, 123, 15, CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Sale] ([id], [id_product], [price], [quantity], [date_of_sale]) VALUES (2, 2, 126, 25, CAST(N'2023-07-16' AS Date))
INSERT [dbo].[Sale] ([id], [id_product], [price], [quantity], [date_of_sale]) VALUES (3, 3, 129, 30, CAST(N'2023-06-29' AS Date))
INSERT [dbo].[Sale] ([id], [id_product], [price], [quantity], [date_of_sale]) VALUES (4, 4, 100, 10, CAST(N'2023-06-28' AS Date))
INSERT [dbo].[Sale] ([id], [id_product], [price], [quantity], [date_of_sale]) VALUES (5, 5, 156, 29, CAST(N'2023-07-05' AS Date))
GO
INSERT [dbo].[Supplier] ([id], [name], [id_adress]) VALUES (1, N'AmericanPost             ', 1)
INSERT [dbo].[Supplier] ([id], [name], [id_adress]) VALUES (2, N'PolandPost               ', 2)
INSERT [dbo].[Supplier] ([id], [name], [id_adress]) VALUES (3, N'GermanyPost              ', 3)
INSERT [dbo].[Supplier] ([id], [name], [id_adress]) VALUES (4, N'FrancePost               ', 4)
INSERT [dbo].[Supplier] ([id], [name], [id_adress]) VALUES (5, N'SlovakiaPost             ', 5)
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_City1] FOREIGN KEY([id_city])
REFERENCES [dbo].[City] ([id])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_City1]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Region] FOREIGN KEY([id_region])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Region]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Product]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Supplier] FOREIGN KEY([id_supplier])
REFERENCES [dbo].[Supplier] ([id])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Supplier]
GO
ALTER TABLE [dbo].[Producer]  WITH CHECK ADD  CONSTRAINT [FK_Producer_Adress] FOREIGN KEY([id_adress])
REFERENCES [dbo].[Adress] ([id])
GO
ALTER TABLE [dbo].[Producer] CHECK CONSTRAINT [FK_Producer_Adress]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([id_category])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Markup] FOREIGN KEY([id_markup])
REFERENCES [dbo].[Markup] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Markup]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Measurement] FOREIGN KEY([id_measurement])
REFERENCES [dbo].[Measurement] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Measurement]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([id_producer])
REFERENCES [dbo].[Producer] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([id_country])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_Product] FOREIGN KEY([id_product])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_Product]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Adress] FOREIGN KEY([id_adress])
REFERENCES [dbo].[Adress] ([id])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Adress]
GO
USE [master]
GO
ALTER DATABASE [HW19.07.2023] SET  READ_WRITE 
GO
