USE [master]
GO

/****** Object:  Database [ContenedoresEcologicosBD]    Script Date: 6/09/2022 09:52:14 ******/
CREATE DATABASE [ContenedoresEcologicosBD] ON  PRIMARY 
( NAME = N'ContenedoresEcologicosBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ContenedoresEcologicosBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ContenedoresEcologicosBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ContenedoresEcologicosBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ContenedoresEcologicosBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET RECOVERY FULL 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET  MULTI_USER 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ContenedoresEcologicosBD', N'ON'
GO
ALTER DATABASE [ContenedoresEcologicosBD] SET QUERY_STORE = OFF
GO
USE [ContenedoresEcologicosBD]
GO
SET NOCOUNT ON

/****** Object:  Table [dbo].[ControlCalidad]    Script Date: 6/09/2022 09:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ControlCalidad](
	[IDContenedor] [int] IDENTITY(1,1) NOT NULL,
	[Modelo] [varchar](255) NOT NULL,
	[Certificado] [varchar](255) NOT NULL,
	[Observaciones] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContenedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ControlCalidad] ON 
INSERT [dbo].[ControlCalidad] ([IDContenedor], [Modelo], [Certificado], [Observaciones]) VALUES (1, N'7F-120', N'ISO9001eISO1400', N'Problemas con las bisagras')
INSERT [dbo].[ControlCalidad] ([IDContenedor], [Modelo], [Certificado], [Observaciones]) VALUES (2, N'7F-660', N'ISO9001eISO1400', N'Nninguno')
INSERT [dbo].[ControlCalidad] ([IDContenedor], [Modelo], [Certificado], [Observaciones]) VALUES (3, N'c-110', N'ISO9001', N'Problemas con el freno ')
INSERT [dbo].[ControlCalidad] ([IDContenedor], [Modelo], [Certificado], [Observaciones]) VALUES (4, N'op-933', N'ISO9001eISO1400', N'Problemas con la tapa')
INSERT [dbo].[ControlCalidad] ([IDContenedor], [Modelo], [Certificado], [Observaciones]) VALUES (5, N'09-22F', N'ISO1400', N'Ninguno')
SET IDENTITY_INSERT [dbo].[ControlCalidad] OFF


/****** Object:  Table [dbo].[Distribucion]    Script Date: 6/09/2022 09:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Distribucion](
	[IDContenedor] [int] IDENTITY(1,1) NOT NULL,
	[Destino] [varchar](255) NOT NULL,
	[Origen] [varchar](255) NOT NULL,
	[Cantidad] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContenedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Distribucion] ON 
INSERT [dbo].[Distribucion] ([IDContenedor], [Destino], [Origen], [Cantidad]) VALUES (1, N'Peru', N'Alemania', N'157')
INSERT [dbo].[Distribucion] ([IDContenedor], [Destino], [Origen], [Cantidad]) VALUES (2, N'Peru', N'Peru', N'320')
INSERT [dbo].[Distribucion] ([IDContenedor], [Destino], [Origen], [Cantidad]) VALUES (3, N'Francia', N'Peru', N'246')
SET IDENTITY_INSERT [dbo].[Distribucion] OFF


/****** Object:  Table [dbo].[Producto]    Script Date: 6/09/2022 09:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[IDContenedor] [int] IDENTITY(1,1) NOT NULL,
	[Material] [varchar](255) NOT NULL,
	[Capacidad] [varchar](255) NOT NULL,
	[Carga Max(kg)] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContenedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (1, N'HDPE', N'60 Lts', N'45')
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (2, N'HDPE', N'120 Lts', N'70')
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (3, N'HDPE', N'660 LT', N'350')
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (4, N'HDPE', N'1100 LT', N'450')
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (5, N'PEAD', N'370 L', N'170')
INSERT [dbo].[Producto] ([IDContenedor], [Material], [Capacidad], [Carga Max(kg)]) VALUES (6, N'PEAD', N'240 L', N'110')
SET IDENTITY_INSERT [dbo].[Producto] OFF


/****** Object:  Table [dbo].[Proveedores]    Script Date: 6/09/2022 09:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[IDContenedor] [int] IDENTITY(1,1) NOT NULL,
	[Compañia] [varchar](255) NOT NULL,
	[Modelo] [varchar](255) NOT NULL,
	[Certficado] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDContenedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 
INSERT [dbo].[Proveedores] ([IDContenedor], [Compañia], [Modelo], [Certficado]) VALUES (1, N'xxxxx', N'7f-250', N'ISO9001e ISO14001')
INSERT [dbo].[Proveedores] ([IDContenedor], [Compañia], [Modelo], [Certficado]) VALUES (2, N'yyyy', N'6q-7', N'ISO9001e ISO14001')
INSERT [dbo].[Proveedores] ([IDContenedor], [Compañia], [Modelo], [Certficado]) VALUES (3, N'zzz', N'96-542', N'ISO9001')
INSERT [dbo].[Proveedores] ([IDContenedor], [Compañia], [Modelo], [Certficado]) VALUES (4, N'kkk', N'6q-999', N'Ninguna')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF


/****** Object:  Table [dbo].[Sucursales]    Script Date: 6/09/2022 09:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursales](
	[IDAucursal] [int] IDENTITY(1,1) NOT NULL,
	[Stock] [varchar](255) NOT NULL,
	[Ubicacion] [varchar](255) NOT NULL,
	[RUC] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sucursales] ON 
INSERT [dbo].[Sucursales] ([IDAucursal], [Stock], [Ubicacion], [RUC]) VALUES (1, N'153', N'Peru', N'10164090588')
INSERT [dbo].[Sucursales] ([IDAucursal], [Stock], [Ubicacion], [RUC]) VALUES (2, N'245', N'Francia', N'10164120517')
INSERT [dbo].[Sucursales] ([IDAucursal], [Stock], [Ubicacion], [RUC]) VALUES (3, N'359', N'Peru', N'10164860513')
INSERT [dbo].[Sucursales] ([IDAucursal], [Stock], [Ubicacion], [RUC]) VALUES (4, N'169', N'Peru', N'10164121611')
INSERT [dbo].[Sucursales] ([IDAucursal], [Stock], [Ubicacion], [RUC]) VALUES (5, N'333', N'Peru', N'10164121714')
SET IDENTITY_INSERT [dbo].[Sucursales] OFF

