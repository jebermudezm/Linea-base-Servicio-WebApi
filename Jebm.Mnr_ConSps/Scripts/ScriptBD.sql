USE [master]
GO
/****** Object:  Database [LiquidationMNR]    Script Date: 2020-11-16 11:07:43 AM ******/
CREATE DATABASE [LiquidationMNR]
GO
USE [LiquidationMNR]
GO
/****** Object:  Schema [MNR]    Script Date: 2020-11-16 11:07:43 AM ******/
CREATE SCHEMA [MNR]
GO
/****** Object:  Table [MNR].[City]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[PopulationCenterCode] [varchar](10) NULL,
	[PopulationCenterName] [varchar](150) NULL,
	[Type] [varchar](10) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[Country]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_tblPais] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[Customer]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[InternalId] [varchar](10) NULL,
	[Nit] [varchar](50) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[CityId] [int] NOT NULL,
	[CIIU] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[Department]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Depatment] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[EnergyMeter]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[EnergyMeter](
	[EnergyMeterId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[ParentCode] [varchar](10) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[VoltageLevel] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[EventDate] [datetime] NOT NULL,
	[State] [varchar](50) NULL,
	[InstallationAddress] [varchar](150) NULL,
	[CityId] [int] NULL,
	[RegionalTransmissionSystemId] [int] NULL,
	[DistributionAreaId] [int] NULL,
	[NetworkOperatorId] [int] NULL,
	[Substation] [varchar](50) NULL,
	[Circuit] [varchar](50) NULL,
	[Stratum] [int] NULL,
	[Group] [varchar](50) NULL,
	[NetworkType] [varchar](50) NULL,
	[MainMeterBrand] [varchar](150) NULL,
	[MainMeterseries] [varchar](150) NULL,
	[MainMeterFactor] [float] NULL,
	[BackingMeterBrand] [varchar](150) NULL,
	[BackingMeterSeries] [varchar](150) NULL,
	[BackingMeterFactor] [float] NULL,
	[Rate] [varchar](50) NULL,
	[ServiceClass] [varchar](50) NULL,
	[ContratedCharge] [float] NULL,
	[CorrespondenceAddress] [varchar](150) NULL,
	[CityCorrespondenceId] [int] NULL,
	[PhoneNumberCorrespondence] [varchar](20) NULL,
	[PayContribution?] [varchar](2) NULL,
	[NIU] [varchar](150) NULL,
	[QualityGroupId] [int] NULL,
	[LocationId] [int] NULL,
	[SectorId] [int] NULL,
	[RateTypeId] [int] NULL,
	[ReadingTypeId] [int] NULL,
	[ContributingSectorId] [int] NULL,
	[IdInvestmentCharge] [int] NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EnergyMeter] PRIMARY KEY CLUSTERED 
(
	[EnergyMeterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[Profile]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[Profile](
	[ProfileId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[User]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](150) NOT NULL,
	[LastName] [varchar](150) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Password] [varchar](1000) NOT NULL,
	[DateFrom] [datetime] NOT NULL,
	[DateTo] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MNR].[UserProfile]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MNR].[UserProfile](
	[UserId] [int] NOT NULL,
	[ProfileId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreationBy] [varchar](150) NOT NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [MNR].[City] ON 

INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1, 1, N'001', N'MEDELLIN', N'05001000', N'MEDELLÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (2, 1, N'002', N'ABEJORRAL', N'05002000', N'ABEJORRAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (3, 1, N'004', N'ABRIAQUI', N'05004000', N'ABRIAQUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (4, 1, N'021', N'ALEJANDRIA', N'05021000', N'ALEJANDRÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (5, 1, N'030', N'AMAGA', N'05030000', N'AMAGÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (6, 1, N'031', N'AMALFI', N'05031000', N'AMALFI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (7, 1, N'034', N'ANDES', N'05034000', N'ANDES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (8, 1, N'036', N'ANGELOPOLIS', N'05036000', N'ANGELÓPOLIS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (9, 1, N'038', N'ANGOSTURA', N'05038000', N'ANGOSTURA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (10, 1, N'040', N'ANORI', N'05040000', N'ANORÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (11, 1, N'042', N'SANTAFE DE ANTIOQUIA', N'05042000', N'SANTA FÉ DE ANTIOQUIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (12, 1, N'044', N'ANZA', N'05044000', N'ANZÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (13, 1, N'045', N'APARTADO', N'05045000', N'APARTADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (14, 1, N'051', N'ARBOLETES', N'05051000', N'ARBOLETES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (15, 1, N'055', N'ARGELIA', N'05055000', N'ARGELIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (16, 1, N'059', N'ARMENIA', N'05059000', N'ARMENIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (17, 1, N'079', N'BARBOSA', N'05079000', N'BARBOSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (18, 1, N'086', N'BELMIRA', N'05086000', N'BELMIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (19, 1, N'088', N'BELLO', N'05088000', N'BELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (20, 1, N'091', N'BETANIA', N'05091000', N'BETANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (21, 1, N'093', N'BETULIA', N'05093000', N'BETULIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (22, 1, N'101', N'CIUDAD BOLIVAR', N'05101000', N'CIUDAD BOLÍVAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (23, 1, N'107', N'BRICEÑO', N'05107000', N'BRICEÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (24, 1, N'113', N'BURITICA', N'05113000', N'BURITICÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (25, 1, N'120', N'CACERES', N'05120000', N'CÁCERES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (26, 1, N'125', N'CAICEDO', N'05125000', N'CAICEDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (27, 1, N'129', N'CALDAS', N'05129000', N'CALDAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (28, 1, N'134', N'CAMPAMENTO', N'05134000', N'CAMPAMENTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (29, 1, N'138', N'CAÑASGORDAS', N'05138000', N'CAÑASGORDAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (30, 1, N'142', N'CARACOLI', N'05142000', N'CARACOLÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (31, 1, N'145', N'CARAMANTA', N'05145000', N'CARAMANTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (32, 1, N'147', N'CAREPA', N'05147000', N'CAREPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (33, 1, N'148', N'EL CARMEN DE VIBORAL', N'05148000', N'EL CARMEN DE VIBORAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (34, 1, N'150', N'CAROLINA', N'05150000', N'CAROLINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (35, 1, N'154', N'CAUCASIA', N'05154000', N'CAUCASIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (36, 1, N'172', N'CHIGORODO', N'05172000', N'CHIGORODÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (37, 1, N'190', N'CISNEROS', N'05190000', N'CISNEROS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (38, 1, N'197', N'COCORNA', N'05197000', N'COCORNÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (39, 1, N'206', N'CONCEPCION', N'05206000', N'CONCEPCIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (40, 1, N'209', N'CONCORDIA', N'05209000', N'CONCORDIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (41, 1, N'212', N'COPACABANA', N'05212000', N'COPACABANA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (42, 1, N'234', N'DABEIBA', N'05234000', N'DABEIBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (43, 1, N'237', N'DON MATIAS', N'05237000', N'DONMATÍAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (44, 1, N'240', N'EBEJICO', N'05240000', N'EBÉJICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (45, 1, N'250', N'EL BAGRE', N'05250000', N'EL BAGRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (46, 1, N'264', N'ENTRERRIOS', N'05264000', N'ENTRERRÍOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (47, 1, N'266', N'ENVIGADO', N'05266000', N'ENVIGADO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (48, 1, N'282', N'FREDONIA', N'05282000', N'FREDONIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (49, 1, N'284', N'FRONTINO', N'05284000', N'FRONTINO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (50, 1, N'306', N'GIRALDO', N'05306000', N'GIRALDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (51, 1, N'308', N'GIRARDOTA', N'05308000', N'GIRARDOTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (52, 1, N'310', N'GOMEZ PLATA', N'05310000', N'GÓMEZ PLATA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (53, 1, N'313', N'GRANADA', N'05313000', N'GRANADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (54, 1, N'315', N'GUADALUPE', N'05315000', N'GUADALUPE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (55, 1, N'318', N'GUARNE', N'05318000', N'GUARNE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (56, 1, N'321', N'GUATAPE', N'05321000', N'GUATAPÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (57, 1, N'347', N'HELICONIA', N'05347000', N'HELICONIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (58, 1, N'353', N'HISPANIA', N'05353000', N'HISPANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (59, 1, N'360', N'ITAGUI', N'05360000', N'ITAGÜÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (60, 1, N'361', N'ITUANGO', N'05361000', N'ITUANGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (61, 1, N'364', N'JARDIN', N'05364000', N'JARDÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (62, 1, N'368', N'JERICO', N'05368000', N'JERICÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (63, 1, N'376', N'LA CEJA', N'05376000', N'LA CEJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (64, 1, N'380', N'LA ESTRELLA', N'05380000', N'LA ESTRELLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (65, 1, N'390', N'LA PINTADA', N'05390000', N'LA PINTADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (66, 1, N'400', N'LA UNION', N'05400000', N'LA UNIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (67, 1, N'411', N'LIBORINA', N'05411000', N'LIBORINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (68, 1, N'425', N'MACEO', N'05425000', N'MACEO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (69, 1, N'440', N'MARINILLA', N'05440000', N'MARINILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (70, 1, N'467', N'MONTEBELLO', N'05467000', N'MONTEBELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (71, 1, N'475', N'MURINDO', N'05475000', N'MURINDÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (72, 1, N'480', N'MUTATA', N'05480000', N'MUTATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (73, 1, N'483', N'NARIÑO', N'05483000', N'NARIÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (74, 1, N'490', N'NECOCLI', N'05490000', N'NECOCLÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (75, 1, N'495', N'NECHI', N'05495000', N'NECHÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (76, 1, N'501', N'OLAYA', N'05501000', N'OLAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (77, 1, N'541', N'PEÐOL', N'05541000', N'PEÑOL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (78, 1, N'543', N'PEQUE', N'05543000', N'PEQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (79, 1, N'576', N'PUEBLORRICO', N'05576000', N'PUEBLORRICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (80, 1, N'579', N'PUERTO BERRIO', N'05579000', N'PUERTO BERRÍO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (81, 1, N'585', N'PUERTO NARE', N'05585000', N'PUERTO NARE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (82, 1, N'591', N'PUERTO TRIUNFO', N'05591000', N'PUERTO TRIUNFO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (83, 1, N'604', N'REMEDIOS', N'05604000', N'REMEDIOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (84, 1, N'607', N'RETIRO', N'05607000', N'RETIRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (85, 1, N'615', N'RIONEGRO', N'05615000', N'RIONEGRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (86, 1, N'628', N'SABANALARGA', N'05628000', N'SABANALARGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (87, 1, N'631', N'SABANETA', N'05631000', N'SABANETA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (88, 1, N'642', N'SALGAR', N'05642000', N'SALGAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (89, 1, N'647', N'SAN ANDRES DE CUERQUIA', N'05647000', N'SAN ANDRÉS DE CUERQUÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (90, 1, N'649', N'SAN CARLOS', N'05649000', N'SAN CARLOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (91, 1, N'652', N'SAN FRANCISCO', N'05652000', N'SAN FRANCISCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (92, 1, N'656', N'SAN JERONIMO', N'05656000', N'SAN JERÓNIMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (93, 1, N'658', N'SAN JOSE DE LA MONTAÑA', N'05658000', N'SAN JOSÉ DE LA MONTAÑA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (94, 1, N'659', N'SAN JUAN DE URABA', N'05659000', N'SAN JUAN DE URABÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (95, 1, N'660', N'SAN LUIS', N'05660000', N'SAN LUIS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (96, 1, N'664', N'SAN PEDRO', N'05664000', N'SAN PEDRO DE LOS MILAGROS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (97, 1, N'665', N'SAN PEDRO DE URABA', N'05665000', N'SAN PEDRO DE URABÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (98, 1, N'667', N'SAN RAFAEL', N'05667000', N'SAN RAFAEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (99, 1, N'670', N'SAN ROQUE', N'05670000', N'SAN ROQUE', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (100, 1, N'674', N'SAN VICENTE', N'05674000', N'SAN VICENTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (101, 1, N'679', N'SANTA BARBARA', N'05679000', N'SANTA BÁRBARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (102, 1, N'686', N'SANTA ROSA DE OSOS', N'05686000', N'SANTA ROSA DE OSOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (103, 1, N'690', N'SANTO DOMINGO', N'05690000', N'SANTO DOMINGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (104, 1, N'697', N'EL SANTUARIO', N'05697000', N'EL SANTUARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (105, 1, N'736', N'SEGOVIA', N'05736000', N'SEGOVIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (106, 1, N'756', N'SONSON', N'05756000', N'SONSÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (107, 1, N'761', N'SOPETRAN', N'05761000', N'SOPETRÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (108, 1, N'789', N'TAMESIS', N'05789000', N'TÁMESIS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (109, 1, N'790', N'TARAZA', N'05790000', N'TARAZÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (110, 1, N'792', N'TARSO', N'05792000', N'TARSO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (111, 1, N'809', N'TITIRIBI', N'05809000', N'TITIRIBÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (112, 1, N'819', N'TOLEDO', N'05819000', N'TOLEDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (113, 1, N'837', N'TURBO', N'05837000', N'TURBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (114, 1, N'842', N'URAMITA', N'05842000', N'URAMITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (115, 1, N'847', N'URRAO', N'05847000', N'URRAO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (116, 1, N'854', N'VALDIVIA', N'05854000', N'VALDIVIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (117, 1, N'856', N'VALPARAISO', N'05856000', N'VALPARAÍSO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (118, 1, N'858', N'VEGACHI', N'05858000', N'VEGACHÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (119, 1, N'861', N'VENECIA', N'05861000', N'VENECIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (120, 1, N'873', N'VIGIA DEL FUERTE', N'05873000', N'VIGÍA DEL FUERTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (121, 1, N'885', N'YALI', N'05885000', N'YALÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (122, 1, N'887', N'YARUMAL', N'05887000', N'YARUMAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (123, 1, N'890', N'YOLOMBO', N'05890000', N'YOLOMBÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (124, 1, N'893', N'YONDO', N'05893000', N'CASABE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (125, 1, N'895', N'ZARAGOZA', N'05895000', N'ZARAGOZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (126, 2, N'001', N'BARRANQUILLA', N'08001000', N'BARRANQUILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (127, 2, N'078', N'BARANOA', N'08078000', N'BARANOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (128, 2, N'137', N'CAMPO DE LA CRUZ', N'08137000', N'CAMPO DE LA CRUZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (129, 2, N'141', N'CANDELARIA', N'8141000', N'CANDELARIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (130, 2, N'296', N'GALAPA', N'08296000', N'GALAPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (131, 2, N'372', N'JUAN DE ACOSTA', N'08372000', N'JUAN DE ACOSTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (132, 2, N'421', N'LURUACO', N'08421000', N'LURUACO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (133, 2, N'433', N'MALAMBO', N'08433000', N'MALAMBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (134, 2, N'436', N'MANATI', N'08436000', N'MANATÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (135, 2, N'520', N'PALMAR DE VARELA', N'08520000', N'PALMAR DE VARELA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (136, 2, N'549', N'PIOJO', N'08549000', N'PIOJÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (137, 2, N'558', N'POLONUEVO', N'08558000', N'POLONUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (138, 2, N'560', N'PONEDERA', N'08560000', N'PONEDERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (139, 2, N'573', N'PUERTO COLOMBIA', N'08573000', N'PUERTO COLOMBIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (140, 2, N'606', N'REPELON', N'08606000', N'REPELÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (141, 2, N'634', N'SABANAGRANDE', N'08634000', N'SABANAGRANDE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (142, 2, N'638', N'SABANALARGA', N'08638000', N'SABANALARGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (143, 2, N'675', N'SANTA LUCIA', N'08675000', N'SANTA LUCÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (144, 2, N'685', N'SANTO TOMAS', N'08685000', N'SANTO TOMÁS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (145, 2, N'758', N'SOLEDAD', N'08758000', N'SOLEDAD', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (146, 2, N'770', N'SUAN', N'08770000', N'SUAN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (147, 2, N'832', N'TUBARA', N'08832000', N'TUBARÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (148, 2, N'849', N'USIACURI', N'08849000', N'USIACURÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (149, 3, N'001', N'BOGOTA, D.C.', N'11001000', N'BOGOTÁ, D.C.', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (150, 4, N'001', N'CARTAGENA', N'13001000', N'CARTAGENA DE INDIAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (151, 4, N'006', N'ACHI', N'13006000', N'ACHÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (152, 4, N'030', N'ALTOS DEL ROSARIO', N'13030000', N'ALTOS DEL ROSARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (153, 4, N'042', N'ARENAL', N'13042000', N'ARENAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (154, 4, N'052', N'ARJONA', N'13052000', N'ARJONA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (155, 4, N'062', N'ARROYOHONDO', N'13062000', N'ARROYOHONDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (156, 4, N'074', N'BARRANCO DE LOBA', N'13074000', N'BARRANCO DE LOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (157, 4, N'140', N'CALAMAR', N'13140000', N'CALAMAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (158, 4, N'160', N'CANTAGALLO', N'13160000', N'CANTAGALLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (159, 4, N'188', N'CICUCO', N'13188000', N'CICUCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (160, 4, N'212', N'CORDOBA', N'13212000', N'CÓRDOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (161, 4, N'222', N'CLEMENCIA', N'13222000', N'CLEMENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (162, 4, N'244', N'EL CARMEN DE BOLIVAR', N'13244000', N'EL CARMEN DE BOLÍVAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (163, 4, N'248', N'EL GUAMO', N'13248000', N'EL GUAMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (164, 4, N'268', N'EL PEÑON', N'13268000', N'EL PEÑÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (165, 4, N'300', N'HATILLO DE LOBA', N'13300000', N'HATILLO DE LOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (166, 4, N'430', N'MAGANGUE', N'13430000', N'MAGANGUÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (167, 4, N'433', N'MAHATES', N'13433000', N'MAHATES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (168, 4, N'440', N'MARGARITA', N'13440000', N'MARGARITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (169, 4, N'442', N'MARIA LA BAJA', N'13442000', N'MARÍA LA BAJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (170, 4, N'458', N'MONTECRISTO', N'13458000', N'MONTECRISTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (171, 4, N'468', N'MOMPOS', N'13468000', N'MOMPÓS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (172, 4, N'490', N'NOROSI', N'13490000', N'NOROSÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (173, 4, N'473', N'MORALES', N'13473000', N'MORALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (174, 4, N'549', N'PINILLOS', N'13549000', N'PINILLOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (175, 4, N'580', N'REGIDOR', N'13580000', N'REGIDOR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (176, 4, N'600', N'RIO VIEJO', N'13600000', N'RÍO VIEJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (177, 4, N'620', N'SAN CRISTOBAL', N'13620000', N'SAN CRISTÓBAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (178, 4, N'647', N'SAN ESTANISLAO', N'13647000', N'SAN ESTANISLAO DE KOSTKA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (179, 4, N'650', N'SAN FERNANDO', N'13650000', N'SAN FERNANDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (180, 4, N'654', N'SAN JACINTO', N'13654000', N'SAN JACINTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (181, 4, N'655', N'SAN JACINTO DEL CAUCA', N'13655000', N'SAN JACINTO DEL CAUCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (182, 4, N'657', N'SAN JUAN NEPOMUCENO', N'13657000', N'SAN JUAN NEPOMUCENO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (183, 4, N'667', N'SAN MARTIN DE LOBA', N'13667000', N'SAN MARTÍN DE LOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (184, 4, N'670', N'SAN PABLO', N'13670000', N'SAN PABLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (185, 4, N'673', N'SANTA CATALINA', N'13673000', N'SANTA CATALINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (186, 4, N'683', N'SANTA ROSA', N'13683000', N'SANTA ROSA DE LIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (187, 4, N'688', N'SANTA ROSA DEL SUR', N'13688000', N'SANTA ROSA DEL SUR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (188, 4, N'744', N'SIMITI', N'13744000', N'SIMITÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (189, 4, N'760', N'SOPLAVIENTO', N'13760000', N'SOPLAVIENTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (190, 4, N'780', N'TALAIGUA NUEVO', N'13780000', N'TALAIGUA NUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (191, 4, N'810', N'TIQUISIO', N'13810000', N'PUERTO RICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (192, 4, N'836', N'TURBACO', N'13836000', N'TURBACO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (193, 4, N'838', N'TURBANA', N'13838000', N'TURBANÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (194, 4, N'873', N'VILLANUEVA', N'13873000', N'VILLANUEVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (195, 4, N'894', N'ZAMBRANO', N'13894000', N'ZAMBRANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (196, 5, N'001', N'TUNJA', N'15001000', N'TUNJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (197, 5, N'022', N'ALMEIDA', N'15022000', N'ALMEIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (198, 5, N'047', N'AQUITANIA', N'15047000', N'AQUITANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (199, 5, N'051', N'ARCABUCO', N'15051000', N'ARCABUCO', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (200, 5, N'087', N'BELEN', N'15087000', N'BELÉN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (201, 5, N'090', N'BERBEO', N'15090000', N'BERBEO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (202, 5, N'092', N'BETEITIVA', N'15092000', N'BETÉITIVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (203, 5, N'097', N'BOAVITA', N'15097000', N'BOAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (204, 5, N'104', N'BOYACA', N'15104000', N'BOYACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (205, 5, N'106', N'BRICEÑO', N'15106000', N'BRICEÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (206, 5, N'109', N'BUENAVISTA', N'15109000', N'BUENAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (207, 5, N'114', N'BUSBANZA', N'15114000', N'BUSBANZÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (208, 5, N'131', N'CALDAS', N'15131000', N'CALDAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (209, 5, N'135', N'CAMPOHERMOSO', N'15135000', N'CAMPOHERMOSO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (210, 5, N'162', N'CERINZA', N'15162000', N'CERINZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (211, 5, N'172', N'CHINAVITA', N'15172000', N'CHINAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (212, 5, N'176', N'CHIQUINQUIRA', N'15176000', N'CHIQUINQUIRÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (213, 5, N'180', N'CHISCAS', N'15180000', N'CHISCAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (214, 5, N'183', N'CHITA', N'15183000', N'CHITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (215, 5, N'185', N'CHITARAQUE', N'15185000', N'CHITARAQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (216, 5, N'187', N'CHIVATA', N'15187000', N'CHIVATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (217, 5, N'189', N'CIENEGA', N'15189000', N'CIÉNEGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (218, 5, N'204', N'COMBITA', N'15204000', N'CÓMBITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (219, 5, N'212', N'COPER', N'15212000', N'COPER', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (220, 5, N'215', N'CORRALES', N'15215000', N'CORRALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (221, 5, N'218', N'COVARACHIA', N'15218000', N'COVARACHÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (222, 5, N'223', N'CUBARA', N'15223000', N'CUBARÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (223, 5, N'224', N'CUCAITA', N'15224000', N'CUCAITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (224, 5, N'226', N'CUITIVA', N'15226000', N'CUÍTIVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (225, 5, N'232', N'CHIQUIZA', N'15232000', N'CHÍQUIZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (226, 5, N'236', N'CHIVOR', N'15236000', N'CHIVOR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (227, 5, N'238', N'DUITAMA', N'15238000', N'DUITAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (228, 5, N'244', N'EL COCUY', N'15244000', N'EL COCUY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (229, 5, N'248', N'EL ESPINO', N'15248000', N'EL ESPINO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (230, 5, N'272', N'FIRAVITOBA', N'15272000', N'FIRAVITOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (231, 5, N'276', N'FLORESTA', N'15276000', N'FLORESTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (232, 5, N'293', N'GACHANTIVA', N'15293000', N'GACHANTIVÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (233, 5, N'296', N'GAMEZA', N'15296000', N'GÁMEZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (234, 5, N'299', N'GARAGOA', N'15299000', N'GARAGOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (235, 5, N'317', N'GUACAMAYAS', N'15317000', N'GUACAMAYAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (236, 5, N'322', N'GUATEQUE', N'15322000', N'GUATEQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (237, 5, N'325', N'GUAYATA', N'15325000', N'GUAYATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (238, 5, N'332', N'GsICAN', N'15332000', N'GÜICÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (239, 5, N'362', N'IZA', N'15362000', N'IZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (240, 5, N'367', N'JENESANO', N'15367000', N'JENESANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (241, 5, N'368', N'JERICO', N'15368000', N'JERICÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (242, 5, N'377', N'LABRANZAGRANDE', N'15377000', N'LABRANZAGRANDE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (243, 5, N'380', N'LA CAPILLA', N'15380000', N'LA CAPILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (244, 5, N'401', N'LA VICTORIA', N'15401000', N'LA VICTORIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (245, 5, N'403', N'LA UVITA', N'15403000', N'LA UVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (246, 5, N'407', N'VILLA DE LEYVA', N'15407000', N'VILLA DE LEYVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (247, 5, N'425', N'MACANAL', N'15425000', N'MACANAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (248, 5, N'442', N'MARIPI', N'15442000', N'MARIPÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (249, 5, N'455', N'MIRAFLORES', N'15455000', N'MIRAFLORES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (250, 5, N'464', N'MONGUA', N'15464000', N'MONGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (251, 5, N'466', N'MONGUI', N'15466000', N'MONGUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (252, 5, N'469', N'MONIQUIRA', N'15469000', N'MONIQUIRÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (253, 5, N'476', N'MOTAVITA', N'15476000', N'MOTAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (254, 5, N'480', N'MUZO', N'15480000', N'MUZO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (255, 5, N'491', N'NOBSA', N'15491000', N'NOBSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (256, 5, N'494', N'NUEVO COLON', N'15494000', N'NUEVO COLÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (257, 5, N'500', N'OICATA', N'15500000', N'OICATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (258, 5, N'507', N'OTANCHE', N'15507000', N'OTANCHE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (259, 5, N'511', N'PACHAVITA', N'15511000', N'PACHAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (260, 5, N'514', N'PAEZ', N'15514000', N'PÁEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (261, 5, N'516', N'PAIPA', N'15516000', N'PAIPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (262, 5, N'518', N'PAJARITO', N'15518000', N'PAJARITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (263, 5, N'522', N'PANQUEBA', N'15522000', N'PANQUEBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (264, 5, N'531', N'PAUNA', N'15531000', N'PAUNA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (265, 5, N'533', N'PAYA', N'15533000', N'PAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (266, 5, N'537', N'PAZ DE RIO', N'15537000', N'PAZ DE RÍO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (267, 5, N'542', N'PESCA', N'15542000', N'PESCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (268, 5, N'550', N'PISBA', N'15550000', N'PISBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (269, 5, N'572', N'PUERTO BOYACA', N'15572000', N'PUERTO BOYACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (270, 5, N'580', N'QUIPAMA', N'15580000', N'QUÍPAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (271, 5, N'599', N'RAMIRIQUI', N'15599000', N'RAMIRIQUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (272, 5, N'600', N'RAQUIRA', N'15600000', N'RÁQUIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (273, 5, N'621', N'RONDON', N'15621000', N'RONDÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (274, 5, N'632', N'SABOYA', N'15632000', N'SABOYÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (275, 5, N'638', N'SACHICA', N'15638000', N'SÁCHICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (276, 5, N'646', N'SAMACA', N'15646000', N'SAMACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (277, 5, N'660', N'SAN EDUARDO', N'15660000', N'SAN EDUARDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (278, 5, N'664', N'SAN JOSE DE PARE', N'15664000', N'SAN JOSÉ DE PARE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (279, 5, N'667', N'SAN LUIS DE GACENO', N'15667000', N'SAN LUIS DE GACENO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (280, 5, N'673', N'SAN MATEO', N'15673000', N'SAN MATEO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (281, 5, N'676', N'SAN MIGUEL DE SEMA', N'15676000', N'SAN MIGUEL DE SEMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (282, 5, N'681', N'SAN PABLO DE BORBUR', N'15681000', N'SAN PABLO DE BORBUR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (283, 5, N'686', N'SANTANA', N'15686000', N'SANTANA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (284, 5, N'690', N'SANTA MARIA', N'15690000', N'SANTA MARÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (285, 5, N'693', N'SANTA ROSA DE VITERBO', N'15693000', N'SANTA ROSA DE VITERBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (286, 5, N'696', N'SANTA SOFIA', N'15696000', N'SANTA SOFÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (287, 5, N'720', N'SATIVANORTE', N'15720000', N'SATIVANORTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (288, 5, N'723', N'SATIVASUR', N'15723000', N'SATIVASUR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (289, 5, N'740', N'SIACHOQUE', N'15740000', N'SIACHOQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (290, 5, N'753', N'SOATA', N'15753000', N'SOATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (291, 5, N'755', N'SOCOTA', N'15755000', N'SOCOTÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (292, 5, N'757', N'SOCHA', N'15757000', N'SOCHA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (293, 5, N'759', N'SOGAMOSO', N'15759000', N'SOGAMOSO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (294, 5, N'761', N'SOMONDOCO', N'15761000', N'SOMONDOCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (295, 5, N'762', N'SORA', N'15762000', N'SORA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (296, 5, N'763', N'SOTAQUIRA', N'15763000', N'SOTAQUIRÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (297, 5, N'764', N'SORACA', N'15764000', N'SORACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (298, 5, N'774', N'SUSACON', N'15774000', N'SUSACÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (299, 5, N'776', N'SUTAMARCHAN', N'15776000', N'SUTAMARCHÁN', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (300, 5, N'778', N'SUTATENZA', N'15778000', N'SUTATENZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (301, 5, N'790', N'TASCO', N'15790000', N'TASCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (302, 5, N'798', N'TENZA', N'15798000', N'TENZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (303, 5, N'804', N'TIBANA', N'15804000', N'TIBANÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (304, 5, N'806', N'TIBASOSA', N'15806000', N'TIBASOSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (305, 5, N'808', N'TINJACA', N'15808000', N'TINJACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (306, 5, N'810', N'TIPACOQUE', N'15810000', N'TIPACOQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (307, 5, N'814', N'TOCA', N'15814000', N'TOCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (308, 5, N'816', N'TOGsI', N'15816000', N'TOGÜÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (309, 5, N'820', N'TOPAGA', N'15820000', N'TÓPAGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (310, 5, N'822', N'TOTA', N'15822000', N'TOTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (311, 5, N'832', N'TUNUNGUA', N'15832000', N'TUNUNGUÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (312, 5, N'835', N'TURMEQUE', N'15835000', N'TURMEQUÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (313, 5, N'837', N'TUTA', N'15837000', N'TUTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (314, 5, N'839', N'TUTAZA', N'15839000', N'TUTAZÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (315, 5, N'842', N'UMBITA', N'15842000', N'ÚMBITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (316, 5, N'861', N'VENTAQUEMADA', N'15861000', N'VENTAQUEMADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (317, 5, N'879', N'VIRACACHA', N'15879000', N'VIRACACHÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (318, 5, N'897', N'ZETAQUIRA', N'15897000', N'ZETAQUIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (319, 6, N'001', N'MANIZALES', N'17001000', N'MANIZALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (320, 6, N'013', N'AGUADAS', N'17013000', N'AGUADAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (321, 6, N'042', N'ANSERMA', N'17042000', N'ANSERMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (322, 6, N'050', N'ARANZAZU', N'17050000', N'ARANZAZU', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (323, 6, N'088', N'BELALCAZAR', N'17088000', N'BELALCÁZAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (324, 6, N'174', N'CHINCHINA', N'17174000', N'CHINCHINÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (325, 6, N'272', N'FILADELFIA', N'17272000', N'FILADELFIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (326, 6, N'380', N'LA DORADA', N'17380000', N'LA DORADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (327, 6, N'388', N'LA MERCED', N'17388000', N'LA MERCED', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (328, 6, N'433', N'MANZANARES', N'17433000', N'MANZANARES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (329, 6, N'442', N'MARMATO', N'17442000', N'MARMATO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (330, 6, N'444', N'MARQUETALIA', N'17444000', N'MARQUETALIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (331, 6, N'446', N'MARULANDA', N'17446000', N'MARULANDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (332, 6, N'486', N'NEIRA', N'17486000', N'NEIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (333, 6, N'495', N'NORCASIA', N'17495000', N'NORCASIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (334, 6, N'513', N'PACORA', N'17513000', N'PÁCORA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (335, 6, N'524', N'PALESTINA', N'17524000', N'PALESTINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (336, 6, N'541', N'PENSILVANIA', N'17541000', N'PENSILVANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (337, 6, N'614', N'RIOSUCIO', N'17614000', N'RIOSUCIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (338, 6, N'616', N'RISARALDA', N'17616000', N'RISARALDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (339, 6, N'653', N'SALAMINA', N'17653000', N'SALAMINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (340, 6, N'662', N'SAMANA', N'17662000', N'SAMANÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (341, 6, N'665', N'SAN JOSE', N'17665000', N'SAN JOSÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (342, 6, N'777', N'SUPIA', N'17777000', N'SUPÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (343, 6, N'867', N'VICTORIA', N'17867000', N'VICTORIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (344, 6, N'873', N'VILLAMARIA', N'17873000', N'VILLAMARÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (345, 6, N'877', N'VITERBO', N'17877000', N'VITERBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (346, 7, N'001', N'FLORENCIA', N'18001000', N'FLORENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (347, 7, N'029', N'ALBANIA', N'18029000', N'ALBANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (348, 7, N'094', N'BELEN DE LOS ANDAQUIES', N'18094000', N'BELÉN DE LOS ANDAQUÍES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (349, 7, N'150', N'CARTAGENA DEL CHAIRA', N'18150000', N'CARTAGENA DEL CHAIRÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (350, 7, N'205', N'CURILLO', N'18205000', N'CURILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (351, 7, N'247', N'EL DONCELLO', N'18247000', N'EL DONCELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (352, 7, N'256', N'EL PAUJIL', N'18256000', N'EL PAUJÍL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (353, 7, N'410', N'LA MONTAÑITA', N'18410000', N'LA MONTAÑITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (354, 7, N'460', N'MILAN', N'18460000', N'MILÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (355, 7, N'479', N'MORELIA', N'18479000', N'MORELIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (356, 7, N'592', N'PUERTO RICO', N'18592000', N'PUERTO RICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (357, 7, N'610', N'SAN JOSE DEL FRAGUA', N'18610000', N'SAN JOSÉ DEL FRAGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (358, 7, N'753', N'SAN VICENTE DEL CAGUAN', N'18753000', N'SAN VICENTE DEL CAGUÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (359, 7, N'756', N'SOLANO', N'18756000', N'SOLANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (360, 7, N'785', N'SOLITA', N'18785000', N'SOLITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (361, 7, N'860', N'VALPARAISO', N'18860000', N'VALPARAÍSO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (362, 8, N'001', N'POPAYAN', N'19001000', N'POPAYÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (363, 8, N'022', N'ALMAGUER', N'19022000', N'ALMAGUER', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (364, 8, N'050', N'ARGELIA', N'19050000', N'ARGELIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (365, 8, N'075', N'BALBOA', N'19075000', N'BALBOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (366, 8, N'100', N'BOLIVAR', N'19100000', N'BOLÍVAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (367, 8, N'110', N'BUENOS AIRES', N'19110000', N'BUENOS AIRES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (368, 8, N'130', N'CAJIBIO', N'19130000', N'CAJIBÍO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (369, 8, N'137', N'CALDONO', N'19137000', N'CALDONO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (370, 8, N'142', N'CALOTO', N'19142000', N'CALOTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (371, 8, N'212', N'CORINTO', N'19212000', N'CORINTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (372, 8, N'256', N'EL TAMBO', N'19256000', N'EL TAMBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (373, 8, N'290', N'FLORENCIA', N'19290000', N'FLORENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (374, 8, N'300', N'GUACHENE', N'19300000', N'GUACHENÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (375, 8, N'318', N'GUAPI', N'19318000', N'GUAPÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (376, 8, N'355', N'INZA', N'19355000', N'INZÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (377, 8, N'364', N'JAMBALO', N'19364000', N'JAMBALÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (378, 8, N'392', N'LA SIERRA', N'19392000', N'LA SIERRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (379, 8, N'397', N'LA VEGA', N'19397000', N'LA VEGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (380, 8, N'418', N'LOPEZ', N'19418000', N'LÓPEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (381, 8, N'450', N'MERCADERES', N'19450000', N'MERCADERES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (382, 8, N'455', N'MIRANDA', N'19455000', N'MIRANDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (383, 8, N'473', N'MORALES', N'19473000', N'MORALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (384, 8, N'513', N'PADILLA', N'19513000', N'PADILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (385, 8, N'517', N'PAEZ', N'19517000', N'BELALCÁZAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (386, 8, N'532', N'PATIA', N'19532000', N'EL BORDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (387, 8, N'533', N'PIAMONTE', N'19533000', N'PIAMONTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (388, 8, N'548', N'PIENDAMO', N'19548000', N'PIENDAMÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (389, 8, N'573', N'PUERTO TEJADA', N'19573000', N'PUERTO TEJADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (390, 8, N'585', N'PURACE', N'19585000', N'COCONUCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (391, 8, N'622', N'ROSAS', N'19622000', N'ROSAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (392, 8, N'693', N'SAN SEBASTIAN', N'19693000', N'SAN SEBASTIÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (393, 8, N'698', N'SANTANDER DE QUILICHAO', N'19698000', N'SANTANDER DE QUILICHAO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (394, 8, N'701', N'SANTA ROSA', N'19701000', N'SANTA ROSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (395, 8, N'743', N'SILVIA', N'19743000', N'SILVIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (396, 8, N'760', N'SOTARA', N'19760000', N'PAISPAMBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (397, 8, N'780', N'SUAREZ', N'19780000', N'SUÁREZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (398, 8, N'785', N'SUCRE', N'19785000', N'SUCRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (399, 8, N'807', N'TIMBIO', N'19807000', N'TIMBÍO', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (400, 8, N'809', N'TIMBIQUI', N'19809000', N'TIMBIQUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (401, 8, N'821', N'TORIBIO', N'19821000', N'TORIBÍO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (402, 8, N'824', N'TOTORO', N'19824000', N'TOTORÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (403, 8, N'845', N'VILLA RICA', N'19845000', N'VILLA RICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (404, 9, N'001', N'VALLEDUPAR', N'20001000', N'VALLEDUPAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (405, 9, N'011', N'AGUACHICA', N'20011000', N'AGUACHICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (406, 9, N'013', N'AGUSTIN CODAZZI', N'20013000', N'AGUSTÍN CODAZZI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (407, 9, N'032', N'ASTREA', N'20032000', N'ASTREA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (408, 9, N'045', N'BECERRIL', N'20045000', N'BECERRIL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (409, 9, N'060', N'BOSCONIA', N'20060000', N'BOSCONIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (410, 9, N'175', N'CHIMICHAGUA', N'20175000', N'CHIMICHAGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (411, 9, N'178', N'CHIRIGUANA', N'20178000', N'CHIRIGUANÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (412, 9, N'228', N'CURUMANI', N'20228000', N'CURUMANÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (413, 9, N'238', N'EL COPEY', N'20238000', N'EL COPEY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (414, 9, N'250', N'EL PASO', N'20250000', N'EL PASO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (415, 9, N'295', N'GAMARRA', N'20295000', N'GAMARRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (416, 9, N'310', N'GONZALEZ', N'20310000', N'GONZÁLEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (417, 9, N'383', N'LA GLORIA', N'20383000', N'LA GLORIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (418, 9, N'400', N'LA JAGUA DE IBIRICO', N'20400000', N'LA JAGUA DE IBIRICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (419, 9, N'443', N'MANAURE', N'20443000', N'MANAURE BALCÓN DEL CESAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (420, 9, N'517', N'PAILITAS', N'20517000', N'PAILITAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (421, 9, N'550', N'PELAYA', N'20550000', N'PELAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (422, 9, N'570', N'PUEBLO BELLO', N'20570000', N'PUEBLO BELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (423, 9, N'614', N'RIO DE ORO', N'20614000', N'RÍO DE ORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (424, 9, N'621', N'LA PAZ', N'20621000', N'ROBLES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (425, 9, N'710', N'SAN ALBERTO', N'20710000', N'SAN ALBERTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (426, 9, N'750', N'SAN DIEGO', N'20750000', N'SAN DIEGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (427, 9, N'770', N'SAN MARTIN', N'20770000', N'SAN MARTÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (428, 9, N'787', N'TAMALAMEQUE', N'20787000', N'TAMALAMEQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (429, 10, N'001', N'MONTERIA', N'23001000', N'MONTERÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (430, 10, N'068', N'AYAPEL', N'23068000', N'AYAPEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (431, 10, N'079', N'BUENAVISTA', N'23079000', N'BUENAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (432, 10, N'090', N'CANALETE', N'23090000', N'CANALETE URBANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (433, 10, N'162', N'CERETE', N'23162000', N'CERETÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (434, 10, N'168', N'CHIMA', N'23168000', N'CHIMÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (435, 10, N'182', N'CHINU', N'23182000', N'CHINÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (436, 10, N'189', N'CIENAGA DE ORO', N'23189000', N'CIÉNAGA DE ORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (437, 10, N'300', N'COTORRA', N'23300000', N'COTORRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (438, 10, N'350', N'LA APARTADA', N'23350000', N'LA APARTADA Y LA FRONTERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (439, 10, N'417', N'LORICA', N'23417000', N'SANTA CRUZ DE LORICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (440, 10, N'419', N'LOS CORDOBAS', N'23419000', N'LOS CÓRDOBAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (441, 10, N'464', N'MOMIL', N'23464000', N'MOMIL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (442, 10, N'466', N'MONTELIBANO', N'23466000', N'MONTELÍBANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (443, 10, N'500', N'MOÑITOS', N'23500000', N'MOÑITOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (444, 10, N'555', N'PLANETA RICA', N'23555000', N'PLANETA RICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (445, 10, N'570', N'PUEBLO NUEVO', N'23570000', N'PUEBLO NUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (446, 10, N'574', N'PUERTO ESCONDIDO', N'23574000', N'PUERTO ESCONDIDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (447, 10, N'580', N'PUERTO LIBERTADOR', N'23580000', N'PUERTO LIBERTADOR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (448, 10, N'586', N'PURISIMA', N'23586000', N'PURÍSIMA DE LA CONCEPCIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (449, 10, N'660', N'SAHAGUN', N'23660000', N'SAHAGÚN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (450, 10, N'670', N'SAN ANDRES SOTAVENTO', N'23670000', N'SAN ANDRÉS DE SOTAVENTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (451, 10, N'672', N'SAN ANTERO', N'23672000', N'SAN ANTERO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (452, 10, N'675', N'SAN BERNARDO DEL VIENTO', N'23675000', N'SAN BERNARDO DEL VIENTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (453, 10, N'678', N'SAN CARLOS', N'23678000', N'SAN CARLOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (454, 10, N'686', N'SAN PELAYO', N'23686000', N'SAN PELAYO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (455, 10, N'807', N'TIERRALTA', N'23807000', N'TIERRALTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (456, 10, N'855', N'VALENCIA', N'23855000', N'VALENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (457, 11, N'001', N'AGUA DE DIOS', N'25001000', N'AGUA DE DIOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (458, 11, N'019', N'ALBAN', N'25019000', N'ALBÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (459, 11, N'035', N'ANAPOIMA', N'25035000', N'ANAPOIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (460, 11, N'040', N'ANOLAIMA', N'25040000', N'ANOLAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (461, 11, N'053', N'ARBELAEZ', N'25053000', N'ARBELÁEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (462, 11, N'086', N'BELTRAN', N'25086000', N'BELTRÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (463, 11, N'095', N'BITUIMA', N'25095000', N'BITUIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (464, 11, N'099', N'BOJACA', N'25099000', N'BOJACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (465, 11, N'120', N'CABRERA', N'25120000', N'CABRERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (466, 11, N'123', N'CACHIPAY', N'25123000', N'CACHIPAY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (467, 11, N'126', N'CAJICA', N'25126000', N'CAJICÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (468, 11, N'148', N'CAPARRAPI', N'25148000', N'CAPARRAPÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (469, 11, N'151', N'CAQUEZA', N'25151000', N'CÁQUEZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (470, 11, N'154', N'CARMEN DE CARUPA', N'25154000', N'CARMEN DE CARUPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (471, 11, N'168', N'CHAGUANI', N'25168000', N'CHAGUANÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (472, 11, N'175', N'CHIA', N'25175000', N'CHÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (473, 11, N'178', N'CHIPAQUE', N'25178000', N'CHIPAQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (474, 11, N'181', N'CHOACHI', N'25181000', N'CHOACHÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (475, 11, N'183', N'CHOCONTA', N'25183000', N'CHOCONTÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (476, 11, N'200', N'COGUA', N'25200000', N'COGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (477, 11, N'214', N'COTA', N'25214000', N'COTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (478, 11, N'224', N'CUCUNUBA', N'25224000', N'CUCUNUBÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (479, 11, N'245', N'EL COLEGIO', N'25245000', N'EL COLEGIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (480, 11, N'258', N'EL PEÑON', N'25258000', N'EL PEÑÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (481, 11, N'260', N'EL ROSAL', N'25260000', N'EL ROSAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (482, 11, N'269', N'FACATATIVA', N'25269000', N'FACATATIVÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (483, 11, N'279', N'FOMEQUE', N'25279000', N'FÓMEQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (484, 11, N'281', N'FOSCA', N'25281000', N'FOSCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (485, 11, N'286', N'FUNZA', N'25286000', N'FUNZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (486, 11, N'288', N'FUQUENE', N'25288000', N'FÚQUENE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (487, 11, N'290', N'FUSAGASUGA', N'25290000', N'FUSAGASUGÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (488, 11, N'293', N'GACHALA', N'25293000', N'GACHALÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (489, 11, N'295', N'GACHANCIPA', N'25295000', N'GACHANCIPÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (490, 11, N'297', N'GACHETA', N'25297000', N'GACHETÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (491, 11, N'299', N'GAMA', N'25299000', N'GAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (492, 11, N'307', N'GIRARDOT', N'25307000', N'GIRARDOT', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (493, 11, N'312', N'GRANADA', N'25312000', N'GRANADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (494, 11, N'317', N'GUACHETA', N'25317000', N'GUACHETÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (495, 11, N'320', N'GUADUAS', N'25320000', N'GUADUAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (496, 11, N'322', N'GUASCA', N'25322000', N'GUASCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (497, 11, N'324', N'GUATAQUI', N'25324000', N'GUATAQUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (498, 11, N'326', N'GUATAVITA', N'25326000', N'GUATAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (499, 11, N'328', N'GUAYABAL DE SIQUIMA', N'25328000', N'GUAYABAL DE SÍQUIMA', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (500, 11, N'335', N'GUAYABETAL', N'25335000', N'GUAYABETAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (501, 11, N'339', N'GUTIERREZ', N'25339000', N'GUTIÉRREZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (502, 11, N'368', N'JERUSALEN', N'25368000', N'JERUSALÉN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (503, 11, N'372', N'JUNIN', N'25372000', N'JUNÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (504, 11, N'377', N'LA CALERA', N'25377000', N'LA CALERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (505, 11, N'386', N'LA MESA', N'25386000', N'LA MESA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (506, 11, N'394', N'LA PALMA', N'25394000', N'LA PALMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (507, 11, N'398', N'LA PEÑA', N'25398000', N'LA PEÑA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (508, 11, N'402', N'LA VEGA', N'25402000', N'LA VEGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (509, 11, N'407', N'LENGUAZAQUE', N'25407000', N'LENGUAZAQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (510, 11, N'426', N'MACHETA', N'25426000', N'MACHETÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (511, 11, N'430', N'MADRID', N'25430000', N'MADRID', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (512, 11, N'436', N'MANTA', N'25436000', N'MANTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (513, 11, N'438', N'MEDINA', N'25438000', N'MEDINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (514, 11, N'473', N'MOSQUERA', N'25473000', N'MOSQUERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (515, 11, N'483', N'NARIÑO', N'25483000', N'NARIÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (516, 11, N'486', N'NEMOCON', N'25486000', N'NEMOCÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (517, 11, N'488', N'NILO', N'25488000', N'NILO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (518, 11, N'489', N'NIMAIMA', N'25489000', N'NIMAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (519, 11, N'491', N'NOCAIMA', N'25491000', N'NOCAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (520, 11, N'506', N'VENECIA', N'25506000', N'VENECIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (521, 11, N'513', N'PACHO', N'25513000', N'PACHO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (522, 11, N'518', N'PAIME', N'25518000', N'PAIME', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (523, 11, N'524', N'PANDI', N'25524000', N'PANDI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (524, 11, N'530', N'PARATEBUENO', N'25530000', N'PARATEBUENO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (525, 11, N'535', N'PASCA', N'25535000', N'PASCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (526, 11, N'572', N'PUERTO SALGAR', N'25572000', N'PUERTO SALGAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (527, 11, N'580', N'PULI', N'25580000', N'PULÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (528, 11, N'592', N'QUEBRADANEGRA', N'25592000', N'QUEBRADANEGRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (529, 11, N'594', N'QUETAME', N'25594000', N'QUETAME', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (530, 11, N'596', N'QUIPILE', N'25596000', N'QUIPILE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (531, 11, N'599', N'APULO', N'25599000', N'APULO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (532, 11, N'612', N'RICAURTE', N'25612000', N'RICAURTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (533, 11, N'645', N'SAN ANTONIO DEL TEQUENDAMA', N'25645000', N'SAN ANTONIO DEL TEQUENDAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (534, 11, N'649', N'SAN BERNARDO', N'25649000', N'SAN BERNARDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (535, 11, N'653', N'SAN CAYETANO', N'25653000', N'PUEBLO NUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (536, 11, N'658', N'SAN FRANCISCO', N'25658000', N'SAN FRANCISCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (537, 11, N'662', N'SAN JUAN DE RIO SECO', N'25662000', N'SAN JUAN DE RIOSECO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (538, 11, N'718', N'SASAIMA', N'25718000', N'SASAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (539, 11, N'736', N'SESQUILE', N'25736000', N'SESQUILÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (540, 11, N'740', N'SIBATE', N'25740000', N'SIBATÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (541, 11, N'743', N'SILVANIA', N'25743000', N'SILVANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (542, 11, N'745', N'SIMIJACA', N'25745000', N'SIMIJACA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (543, 11, N'754', N'SOACHA', N'25754000', N'SOACHA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (544, 11, N'758', N'SOPO', N'25758000', N'SOPÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (545, 11, N'769', N'SUBACHOQUE', N'25769000', N'SUBACHOQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (546, 11, N'772', N'SUESCA', N'25772000', N'SUESCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (547, 11, N'777', N'SUPATA', N'25777000', N'SUPATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (548, 11, N'779', N'SUSA', N'25779000', N'SUSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (549, 11, N'781', N'SUTATAUSA', N'25781000', N'SUTATAUSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (550, 11, N'785', N'TABIO', N'25785000', N'TABIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (551, 11, N'793', N'TAUSA', N'25793000', N'TAUSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (552, 11, N'797', N'TENA', N'25797000', N'TENA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (553, 11, N'799', N'TENJO', N'25799000', N'TENJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (554, 11, N'805', N'TIBACUY', N'25805000', N'TIBACUY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (555, 11, N'807', N'TIBIRITA', N'25807000', N'TIBIRITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (556, 11, N'815', N'TOCAIMA', N'25815000', N'TOCAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (557, 11, N'817', N'TOCANCIPA', N'25817000', N'TOCANCIPÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (558, 11, N'823', N'TOPAIPI', N'25823000', N'TOPAIPÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (559, 11, N'839', N'UBALA', N'25839000', N'UBALÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (560, 11, N'841', N'UBAQUE', N'25841000', N'UBAQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (561, 11, N'843', N'VILLA DE SAN DIEGO DE UBATE', N'25843000', N'VILLA DE SAN DIEGO DE UBATÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (562, 11, N'845', N'UNE', N'25845000', N'UNE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (563, 11, N'851', N'UTICA', N'25851000', N'ÚTICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (564, 11, N'862', N'VERGARA', N'25862000', N'VERGARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (565, 11, N'867', N'VIANI', N'25867000', N'VIANÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (566, 11, N'871', N'VILLAGOMEZ', N'25871000', N'VILLAGÓMEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (567, 11, N'873', N'VILLAPINZON', N'25873000', N'VILLAPINZÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (568, 11, N'875', N'VILLETA', N'25875000', N'VILLETA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (569, 11, N'878', N'VIOTA', N'25878000', N'VIOTÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (570, 11, N'885', N'YACOPI', N'25885000', N'YACOPÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (571, 11, N'898', N'ZIPACON', N'25898000', N'ZIPACÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (572, 11, N'899', N'ZIPAQUIRA', N'25899000', N'ZIPAQUIRÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (573, 12, N'001', N'QUIBDO', N'27001000', N'SAN FRANCISCO DE QUIBDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (574, 12, N'006', N'ACANDI', N'27006000', N'ACANDÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (575, 12, N'025', N'ALTO BAUDO', N'27025000', N'PIE DE PATO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (576, 12, N'050', N'ATRATO', N'27050000', N'YUTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (577, 12, N'073', N'BAGADO', N'27073000', N'BAGADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (578, 12, N'075', N'BAHIA SOLANO', N'27075000', N'CIUDAD MÚTIS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (579, 12, N'077', N'BAJO BAUDO', N'27077000', N'PIZARRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (580, 12, N'099', N'BOJAYA', N'27099000', N'BELLAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (581, 12, N'135', N'EL CANTON DEL SAN PABLO', N'27135000', N'MANAGRÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (582, 12, N'150', N'CARMEN DEL DARIEN', N'27150000', N'CURBARADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (583, 12, N'160', N'CERTEGUI', N'27160000', N'CÉRTEGUI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (584, 12, N'205', N'CONDOTO', N'27205000', N'CONDOTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (585, 12, N'245', N'EL CARMEN DE ATRATO', N'27245000', N'EL CARMEN DE ATRATO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (586, 12, N'250', N'EL LITORAL DEL SAN JUAN', N'27250000', N'SANTA GENOVEVA DE DOCORDÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (587, 12, N'361', N'ISTMINA', N'27361000', N'ISTMINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (588, 12, N'372', N'JURADO', N'27372000', N'JURADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (589, 12, N'413', N'LLORO', N'27413000', N'LLORÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (590, 12, N'425', N'MEDIO ATRATO', N'27425000', N'BETÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (591, 12, N'430', N'MEDIO BAUDO', N'27430000', N'PUERTO MELUK', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (592, 12, N'450', N'MEDIO SAN JUAN', N'27450000', N'ANDAGOYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (593, 12, N'491', N'NOVITA', N'27491000', N'NÓVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (594, 12, N'495', N'NUQUI', N'27495000', N'NUQUÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (595, 12, N'580', N'RIO IRO', N'27580000', N'SANTA RITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (596, 12, N'600', N'RIO QUITO', N'27600000', N'PAIMADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (597, 12, N'615', N'RIOSUCIO', N'27615000', N'RIOSUCIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (598, 12, N'660', N'SAN JOSE DEL PALMAR', N'27660000', N'SAN JOSÉ DEL PALMAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (599, 12, N'745', N'SIPI', N'27745000', N'SIPÍ', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (600, 12, N'787', N'TADO', N'27787000', N'TADÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (601, 12, N'800', N'UNGUIA', N'27800000', N'UNGUÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (602, 12, N'810', N'UNION PANAMERICANA', N'27810000', N'ÁNIMAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (603, 13, N'001', N'NEIVA', N'41001000', N'NEIVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (604, 13, N'006', N'ACEVEDO', N'41006000', N'ACEVEDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (605, 13, N'013', N'AGRADO', N'41013000', N'AGRADO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (606, 13, N'016', N'AIPE', N'41016000', N'AIPE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (607, 13, N'020', N'ALGECIRAS', N'41020000', N'ALGECIRAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (608, 13, N'026', N'ALTAMIRA', N'41026000', N'ALTAMIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (609, 13, N'078', N'BARAYA', N'41078000', N'BARAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (610, 13, N'132', N'CAMPOALEGRE', N'41132000', N'CAMPOALEGRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (611, 13, N'206', N'COLOMBIA', N'41206000', N'COLOMBIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (612, 13, N'244', N'ELIAS', N'41244000', N'ELÍAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (613, 13, N'298', N'GARZON', N'41298000', N'GARZÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (614, 13, N'306', N'GIGANTE', N'41306000', N'GIGANTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (615, 13, N'319', N'GUADALUPE', N'41319000', N'GUADALUPE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (616, 13, N'349', N'HOBO', N'41349000', N'HOBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (617, 13, N'357', N'IQUIRA', N'41357000', N'ÍQUIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (618, 13, N'359', N'ISNOS', N'41359000', N'SAN JOSÉ DE ISNOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (619, 13, N'378', N'LA ARGENTINA', N'41378000', N'LA ARGENTINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (620, 13, N'396', N'LA PLATA', N'41396000', N'LA PLATA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (621, 13, N'483', N'NATAGA', N'41483000', N'NÁTAGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (622, 13, N'503', N'OPORAPA', N'41503000', N'OPORAPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (623, 13, N'518', N'PAICOL', N'41518000', N'PAICOL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (624, 13, N'524', N'PALERMO', N'41524000', N'PALERMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (625, 13, N'530', N'PALESTINA', N'41530000', N'PALESTINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (626, 13, N'548', N'PITAL', N'41548000', N'PITAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (627, 13, N'551', N'PITALITO', N'41551000', N'PITALITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (628, 13, N'615', N'RIVERA', N'41615000', N'RIVERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (629, 13, N'660', N'SALADOBLANCO', N'41660000', N'SALADOBLANCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (630, 13, N'668', N'SAN AGUSTIN', N'41668000', N'SAN AGUSTÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (631, 13, N'676', N'SANTA MARIA', N'41676000', N'SANTA MARÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (632, 13, N'770', N'SUAZA', N'41770000', N'SUAZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (633, 13, N'791', N'TARQUI', N'41791000', N'TARQUI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (634, 13, N'797', N'TESALIA', N'41797000', N'TESALIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (635, 13, N'799', N'TELLO', N'41799000', N'TELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (636, 13, N'801', N'TERUEL', N'41801000', N'TERUEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (637, 13, N'807', N'TIMANA', N'41807000', N'TIMANÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (638, 13, N'872', N'VILLAVIEJA', N'41872000', N'VILLAVIEJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (639, 13, N'885', N'YAGUARA', N'41885000', N'YAGUARÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (640, 14, N'001', N'RIOHACHA', N'44001000', N'RIOHACHA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (641, 14, N'035', N'ALBANIA', N'44035000', N'ALBANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (642, 14, N'078', N'BARRANCAS', N'44078000', N'BARRANCAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (643, 14, N'090', N'DIBULLA', N'44090000', N'DIBULLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (644, 14, N'098', N'DISTRACCION', N'44098000', N'DISTRACCIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (645, 14, N'110', N'EL MOLINO', N'44110000', N'EL MOLINO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (646, 14, N'279', N'FONSECA', N'44279000', N'FONSECA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (647, 14, N'378', N'HATONUEVO', N'44378000', N'HATONUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (648, 14, N'420', N'LA JAGUA DEL PILAR', N'44420000', N'LA JAGUA DEL PILAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (649, 14, N'430', N'MAICAO', N'44430000', N'MAICAO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (650, 14, N'560', N'MANAURE', N'44560000', N'MANAURE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (651, 14, N'650', N'SAN JUAN DEL CESAR', N'44650000', N'SAN JUAN DEL CESAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (652, 14, N'847', N'URIBIA', N'44847000', N'URIBIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (653, 14, N'855', N'URUMITA', N'44855000', N'URUMITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (654, 14, N'874', N'VILLANUEVA', N'44874000', N'VILLANUEVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (655, 15, N'001', N'SANTA MARTA', N'47001000', N'SANTA MARTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (656, 15, N'030', N'ALGARROBO', N'47030000', N'ALGARROBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (657, 15, N'053', N'ARACATACA', N'47053000', N'ARACATACA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (658, 15, N'058', N'ARIGUANI', N'47058000', N'EL DIFICIL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (659, 15, N'161', N'CERRO SAN ANTONIO', N'47161000', N'CERRO DE SAN ANTONIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (660, 15, N'170', N'CHIBOLO', N'47170000', N'CHIVOLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (661, 15, N'189', N'CIENAGA', N'47189000', N'CIÉNAGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (662, 15, N'205', N'CONCORDIA', N'47205000', N'CONCORDIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (663, 15, N'245', N'EL BANCO', N'47245000', N'EL BANCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (664, 15, N'258', N'EL PIÑON', N'47258000', N'EL PIÑÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (665, 15, N'268', N'EL RETEN', N'47268000', N'EL RETÉN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (666, 15, N'288', N'FUNDACION', N'47288000', N'FUNDACIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (667, 15, N'318', N'GUAMAL', N'47318000', N'GUAMAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (668, 15, N'460', N'NUEVA GRANADA', N'47460000', N'GRANADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (669, 15, N'541', N'PEDRAZA', N'47541000', N'PEDRAZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (670, 15, N'545', N'PIJIÑO DEL CARMEN', N'47545000', N'PIJIÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (671, 15, N'551', N'PIVIJAY', N'47551000', N'PIVIJAY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (672, 15, N'555', N'PLATO', N'47555000', N'PLATO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (673, 15, N'570', N'PUEBLOVIEJO', N'47570000', N'PUEBLOVIEJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (674, 15, N'605', N'REMOLINO', N'47605000', N'REMOLINO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (675, 15, N'660', N'SABANAS DE SAN ANGEL', N'47660000', N'SAN ÁNGEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (676, 15, N'675', N'SALAMINA', N'47675000', N'SALAMINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (677, 15, N'692', N'SAN SEBASTIAN DE BUENAVISTA', N'47692000', N'SAN SEBASTIÁN DE BUENAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (678, 15, N'703', N'SAN ZENON', N'47703000', N'SAN ZENÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (679, 15, N'707', N'SANTA ANA', N'47707000', N'SANTA ANA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (680, 15, N'720', N'SANTA BARBARA DE PINTO', N'47720000', N'SANTA BÁRBARA DE PINTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (681, 15, N'745', N'SITIONUEVO', N'47745000', N'SITIONUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (682, 15, N'798', N'TENERIFE', N'47798000', N'TENERIFE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (683, 15, N'960', N'ZAPAYAN', N'47960000', N'PUNTA DE PIEDRAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (684, 15, N'980', N'ZONA BANANERA', N'47980000', N'PRADO - SEVILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (685, 16, N'001', N'VILLAVICENCIO', N'50001000', N'VILLAVICENCIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (686, 16, N'006', N'ACACIAS', N'50006000', N'ACACÍAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (687, 16, N'110', N'BARRANCA DE UPIA', N'50110000', N'BARRANCA DE UPÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (688, 16, N'124', N'CABUYARO', N'50124000', N'CABUYARO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (689, 16, N'150', N'CASTILLA LA NUEVA', N'50150000', N'CASTILLA LA NUEVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (690, 16, N'223', N'CUBARRAL', N'50223000', N'SAN LUIS DE CUBARRAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (691, 16, N'226', N'CUMARAL', N'50226000', N'CUMARAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (692, 16, N'245', N'EL CALVARIO', N'50245000', N'EL CALVARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (693, 16, N'251', N'EL CASTILLO', N'50251000', N'EL CASTILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (694, 16, N'270', N'EL DORADO', N'50270000', N'EL DORADO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (695, 16, N'287', N'FUENTE DE ORO', N'50287000', N'FUENTE DE ORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (696, 16, N'313', N'GRANADA', N'50313000', N'GRANADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (697, 16, N'318', N'GUAMAL', N'50318000', N'GUAMAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (698, 16, N'325', N'MAPIRIPAN', N'50325000', N'MAPIRIPÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (699, 16, N'330', N'MESETAS', N'50330000', N'MESETAS', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (700, 16, N'350', N'LA MACARENA', N'50350000', N'LA MACARENA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (701, 16, N'370', N'URIBE', N'50370000', N'URIBE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (702, 16, N'400', N'LEJANIAS', N'50400000', N'LEJANÍAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (703, 16, N'450', N'PUERTO CONCORDIA', N'50450000', N'PUERTO CONCORDIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (704, 16, N'568', N'PUERTO GAITAN', N'50568000', N'PUERTO GAITÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (705, 16, N'573', N'PUERTO LOPEZ', N'50573000', N'PUERTO LÓPEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (706, 16, N'577', N'PUERTO LLERAS', N'50577000', N'PUERTO LLERAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (707, 16, N'590', N'PUERTO RICO', N'50590000', N'PUERTO RICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (708, 16, N'606', N'RESTREPO', N'50606000', N'RESTREPO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (709, 16, N'680', N'SAN CARLOS DE GUAROA', N'50680000', N'SAN CARLOS DE GUAROA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (710, 16, N'683', N'SAN JUAN DE ARAMA', N'50683000', N'SAN JUAN DE ARAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (711, 16, N'686', N'SAN JUANITO', N'50686000', N'SAN JUANITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (712, 16, N'689', N'SAN MARTIN', N'50689000', N'SAN MARTÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (713, 16, N'711', N'VISTAHERMOSA', N'50711000', N'VISTAHERMOSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (714, 17, N'001', N'PASTO', N'52001000', N'SAN JUAN DE PASTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (715, 17, N'019', N'ALBAN', N'52019000', N'SAN JOSÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (716, 17, N'022', N'ALDANA', N'52022000', N'ALDANA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (717, 17, N'036', N'ANCUYA', N'52036000', N'ANCUYÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (718, 17, N'051', N'ARBOLEDA', N'52051000', N'BERRUECOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (719, 17, N'079', N'BARBACOAS', N'52079000', N'BARBACOAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (720, 17, N'083', N'BELEN', N'52083000', N'BELÉN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (721, 17, N'110', N'BUESACO', N'52110000', N'BUESACO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (722, 17, N'203', N'COLON', N'52203000', N'GÉNOVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (723, 17, N'207', N'CONSACA', N'52207000', N'CONSACÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (724, 17, N'210', N'CONTADERO', N'52210000', N'CONTADERO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (725, 17, N'215', N'CORDOBA', N'52215000', N'CÓRDOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (726, 17, N'224', N'CUASPUD', N'52224000', N'CARLOSAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (727, 17, N'227', N'CUMBAL', N'52227000', N'CUMBAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (728, 17, N'233', N'CUMBITARA', N'52233000', N'CUMBITARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (729, 17, N'240', N'CHACHAGsI', N'52240000', N'CHACHAGÜÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (730, 17, N'250', N'EL CHARCO', N'52250000', N'EL CHARCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (731, 17, N'254', N'EL PEÑOL', N'52254000', N'EL PEÑOL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (732, 17, N'256', N'EL ROSARIO', N'52256000', N'EL ROSARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (733, 17, N'258', N'EL TABLON DE GOMEZ', N'52258000', N'EL TABLÓN DE GÓMEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (734, 17, N'260', N'EL TAMBO', N'52260000', N'EL TAMBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (735, 17, N'287', N'FUNES', N'52287000', N'FUNES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (736, 17, N'317', N'GUACHUCAL', N'52317000', N'GUACHUCAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (737, 17, N'320', N'GUAITARILLA', N'52320000', N'GUAITARILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (738, 17, N'323', N'GUALMATAN', N'52323000', N'GUALMATÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (739, 17, N'352', N'ILES', N'52352000', N'ILES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (740, 17, N'354', N'IMUES', N'52354000', N'IMUÉS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (741, 17, N'356', N'IPIALES', N'52356000', N'IPIALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (742, 17, N'378', N'LA CRUZ', N'52378000', N'LA CRUZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (743, 17, N'381', N'LA FLORIDA', N'52381000', N'LA FLORIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (744, 17, N'385', N'LA LLANADA', N'52385000', N'LA LLANADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (745, 17, N'390', N'LA TOLA', N'52390000', N'LA TOLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (746, 17, N'399', N'LA UNION', N'52399000', N'LA UNIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (747, 17, N'405', N'LEIVA', N'52405000', N'LEIVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (748, 17, N'411', N'LINARES', N'52411000', N'LINARES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (749, 17, N'418', N'LOS ANDES', N'52418000', N'SOTOMAYOR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (750, 17, N'427', N'MAGsI', N'52427000', N'PAYÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (751, 17, N'435', N'MALLAMA', N'52435000', N'PIEDRANCHA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (752, 17, N'473', N'MOSQUERA', N'52473000', N'MOSQUERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (753, 17, N'480', N'NARIÑO', N'52480000', N'NARIÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (754, 17, N'490', N'OLAYA HERRERA', N'52490000', N'BOCAS DE SATINGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (755, 17, N'506', N'OSPINA', N'52506000', N'OSPINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (756, 17, N'520', N'FRANCISCO PIZARRO', N'52520000', N'SALAHONDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (757, 17, N'540', N'POLICARPA', N'52540000', N'POLICARPA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (758, 17, N'560', N'POTOSI', N'52560000', N'POTOSÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (759, 17, N'565', N'PROVIDENCIA', N'52565000', N'PROVIDENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (760, 17, N'573', N'PUERRES', N'52573000', N'PUERRES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (761, 17, N'585', N'PUPIALES', N'52585000', N'PUPIALES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (762, 17, N'612', N'RICAURTE', N'52612000', N'RICAURTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (763, 17, N'621', N'ROBERTO PAYAN', N'52621000', N'SAN JOSÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (764, 17, N'678', N'SAMANIEGO', N'52678000', N'SAMANIEGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (765, 17, N'683', N'SANDONA', N'52683000', N'SANDONÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (766, 17, N'685', N'SAN BERNARDO', N'52685000', N'SAN BERNARDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (767, 17, N'687', N'SAN LORENZO', N'52687000', N'SAN LORENZO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (768, 17, N'693', N'SAN PABLO', N'52693000', N'SAN PABLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (769, 17, N'694', N'SAN PEDRO DE CARTAGO', N'52694000', N'SAN PEDRO DE CARTAGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (770, 17, N'696', N'SANTA BARBARA', N'52696000', N'ISCUANDÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (771, 17, N'699', N'SANTACRUZ', N'52699000', N'GUACHAVÉS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (772, 17, N'720', N'SAPUYES', N'52720000', N'SAPUYES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (773, 17, N'786', N'TAMINANGO', N'52786000', N'TAMINANGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (774, 17, N'788', N'TANGUA', N'52788000', N'TANGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (775, 17, N'835', N'SAN ANDRES DE TUMACO', N'52835000', N'TUMACO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (776, 17, N'838', N'TUQUERRES', N'52838000', N'TÚQUERRES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (777, 17, N'885', N'YACUANQUER', N'52885000', N'YACUANQUER', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (778, 18, N'001', N'CUCUTA', N'54001000', N'CÚCUTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (779, 18, N'003', N'ABREGO', N'54003000', N'ÁBREGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (780, 18, N'051', N'ARBOLEDAS', N'54051000', N'ARBOLEDAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (781, 18, N'099', N'BOCHALEMA', N'54099000', N'BOCHALEMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (782, 18, N'109', N'BUCARASICA', N'54109000', N'BUCARASICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (783, 18, N'125', N'CACOTA', N'54125000', N'CÁCOTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (784, 18, N'128', N'CACHIRA', N'54128000', N'CÁCHIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (785, 18, N'172', N'CHINACOTA', N'54172000', N'CHINÁCOTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (786, 18, N'174', N'CHITAGA', N'54174000', N'CHITAGÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (787, 18, N'206', N'CONVENCION', N'54206000', N'CONVENCIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (788, 18, N'223', N'CUCUTILLA', N'54223000', N'CUCUTILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (789, 18, N'239', N'DURANIA', N'54239000', N'DURANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (790, 18, N'245', N'EL CARMEN', N'54245000', N'EL CARMEN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (791, 18, N'250', N'EL TARRA', N'54250000', N'EL TARRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (792, 18, N'261', N'EL ZULIA', N'54261000', N'EL ZULIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (793, 18, N'313', N'GRAMALOTE', N'54313000', N'GRAMALOTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (794, 18, N'344', N'HACARI', N'54344000', N'HACARÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (795, 18, N'347', N'HERRAN', N'54347000', N'HERRÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (796, 18, N'377', N'LABATECA', N'54377000', N'LABATECA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (797, 18, N'385', N'LA ESPERANZA', N'54385000', N'LA ESPERANZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (798, 18, N'398', N'LA PLAYA', N'54398000', N'LA PLAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (799, 18, N'405', N'LOS PATIOS', N'54405000', N'LOS PATIOS', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (800, 18, N'418', N'LOURDES', N'54418000', N'LOURDES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (801, 18, N'480', N'MUTISCUA', N'54480000', N'MUTISCUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (802, 18, N'498', N'OCAÑA', N'54498000', N'OCAÑA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (803, 18, N'518', N'PAMPLONA', N'54518000', N'PAMPLONA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (804, 18, N'520', N'PAMPLONITA', N'54520000', N'PAMPLONITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (805, 18, N'553', N'PUERTO SANTANDER', N'54553000', N'PUERTO SANTANDER', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (806, 18, N'599', N'RAGONVALIA', N'54599000', N'RAGONVALIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (807, 18, N'660', N'SALAZAR', N'54660000', N'SALAZAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (808, 18, N'670', N'SAN CALIXTO', N'54670000', N'SAN CALIXTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (809, 18, N'673', N'SAN CAYETANO', N'54673000', N'SAN CAYETANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (810, 18, N'680', N'SANTIAGO', N'54680000', N'SANTIAGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (811, 18, N'720', N'SARDINATA', N'54720000', N'SARDINATA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (812, 18, N'743', N'SILOS', N'54743000', N'SILOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (813, 18, N'800', N'TEORAMA', N'54800000', N'TEORAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (814, 18, N'810', N'TIBU', N'54810000', N'TIBÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (815, 18, N'820', N'TOLEDO', N'54820000', N'TOLEDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (816, 18, N'871', N'VILLA CARO', N'54871000', N'VILLA CARO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (817, 18, N'874', N'VILLA DEL ROSARIO', N'54874000', N'VILLA DEL ROSARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (818, 19, N'001', N'ARMENIA', N'63001000', N'ARMENIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (819, 19, N'111', N'BUENAVISTA', N'63111000', N'BUENAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (820, 19, N'130', N'CALARCA', N'63130000', N'CALARCÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (821, 19, N'190', N'CIRCASIA', N'63190000', N'CIRCASIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (822, 19, N'212', N'CORDOBA', N'63212000', N'CÓRDOBA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (823, 19, N'272', N'FILANDIA', N'63272000', N'FILANDIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (824, 19, N'302', N'GENOVA', N'63302000', N'GÉNOVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (825, 19, N'401', N'LA TEBAIDA', N'63401000', N'LA TEBAIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (826, 19, N'470', N'MONTENEGRO', N'63470000', N'MONTENEGRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (827, 19, N'548', N'PIJAO', N'63548000', N'PIJAO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (828, 19, N'594', N'QUIMBAYA', N'63594000', N'QUIMBAYA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (829, 19, N'690', N'SALENTO', N'63690000', N'SALENTO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (830, 20, N'001', N'PEREIRA', N'66001000', N'PEREIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (831, 20, N'045', N'APIA', N'66045000', N'APÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (832, 20, N'075', N'BALBOA', N'66075000', N'BALBOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (833, 20, N'088', N'BELEN DE UMBRIA', N'66088000', N'BELÉN DE UMBRÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (834, 20, N'170', N'DOSQUEBRADAS', N'66170000', N'DOSQUEBRADAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (835, 20, N'318', N'GUATICA', N'66318000', N'GUÁTICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (836, 20, N'383', N'LA CELIA', N'66383000', N'LA CELIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (837, 20, N'400', N'LA VIRGINIA', N'66400000', N'LA VIRGINIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (838, 20, N'440', N'MARSELLA', N'66440000', N'MARSELLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (839, 20, N'456', N'MISTRATO', N'66456000', N'MISTRATÓ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (840, 20, N'572', N'PUEBLO RICO', N'66572000', N'PUEBLO RICO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (841, 20, N'594', N'QUINCHIA', N'66594000', N'QUINCHÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (842, 20, N'682', N'SANTA ROSA DE CABAL', N'66682000', N'SANTA ROSA DE CABAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (843, 20, N'687', N'SANTUARIO', N'66687000', N'SANTUARIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (844, 21, N'001', N'BUCARAMANGA', N'68001000', N'BUCARAMANGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (845, 21, N'013', N'AGUADA', N'68013000', N'AGUADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (846, 21, N'020', N'ALBANIA', N'68020000', N'ALBANIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (847, 21, N'051', N'ARATOCA', N'68051000', N'ARATOCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (848, 21, N'077', N'BARBOSA', N'68077000', N'BARBOSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (849, 21, N'079', N'BARICHARA', N'68079000', N'BARICHARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (850, 21, N'081', N'BARRANCABERMEJA', N'68081000', N'BARRANCABERMEJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (851, 21, N'092', N'BETULIA', N'68092000', N'BETULIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (852, 21, N'101', N'BOLIVAR', N'68101000', N'BOLÍVAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (853, 21, N'121', N'CABRERA', N'68121000', N'CABRERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (854, 21, N'132', N'CALIFORNIA', N'68132000', N'CALIFORNIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (855, 21, N'147', N'CAPITANEJO', N'68147000', N'CAPITANEJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (856, 21, N'152', N'CARCASI', N'68152000', N'CARCASÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (857, 21, N'160', N'CEPITA', N'68160000', N'CEPITÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (858, 21, N'162', N'CERRITO', N'68162000', N'CERRITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (859, 21, N'167', N'CHARALA', N'68167000', N'CHARALÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (860, 21, N'169', N'CHARTA', N'68169000', N'CHARTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (861, 21, N'176', N'CHIMA', N'68176000', N'CHIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (862, 21, N'179', N'CHIPATA', N'68179000', N'CHIPATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (863, 21, N'190', N'CIMITARRA', N'68190000', N'CIMITARRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (864, 21, N'207', N'CONCEPCION', N'68207000', N'CONCEPCIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (865, 21, N'209', N'CONFINES', N'68209000', N'CONFINES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (866, 21, N'211', N'CONTRATACION', N'68211000', N'CONTRATACIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (867, 21, N'217', N'COROMORO', N'68217000', N'COROMORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (868, 21, N'229', N'CURITI', N'68229000', N'CURITÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (869, 21, N'235', N'EL CARMEN DE CHUCURI', N'68235000', N'EL CARMEN DE CHUCURÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (870, 21, N'245', N'EL GUACAMAYO', N'68245000', N'EL GUACAMAYO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (871, 21, N'250', N'EL PEÑON', N'68250000', N'EL PEÑÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (872, 21, N'255', N'EL PLAYON', N'68255000', N'EL PLAYÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (873, 21, N'264', N'ENCINO', N'68264000', N'ENCINO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (874, 21, N'266', N'ENCISO', N'68266000', N'ENCISO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (875, 21, N'271', N'FLORIAN', N'68271000', N'FLORIÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (876, 21, N'276', N'FLORIDABLANCA', N'68276000', N'FLORIDABLANCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (877, 21, N'296', N'GALAN', N'68296000', N'GALÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (878, 21, N'298', N'GAMBITA', N'68298000', N'GÁMBITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (879, 21, N'307', N'GIRON', N'68307000', N'GIRÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (880, 21, N'318', N'GUACA', N'68318000', N'GUACA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (881, 21, N'320', N'GUADALUPE', N'68320000', N'GUADALUPE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (882, 21, N'322', N'GUAPOTA', N'68322000', N'GUAPOTÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (883, 21, N'324', N'GUAVATA', N'68324000', N'GUAVATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (884, 21, N'327', N'GsEPSA', N'68327000', N'GÜEPSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (885, 21, N'344', N'HATO', N'68344000', N'HATO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (886, 21, N'368', N'JESUS MARIA', N'68368000', N'JESÚS MARÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (887, 21, N'370', N'JORDAN', N'68370000', N'JORDÁN SUBE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (888, 21, N'377', N'LA BELLEZA', N'68377000', N'LA BELLEZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (889, 21, N'385', N'LANDAZURI', N'68385000', N'LANDÁZURI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (890, 21, N'397', N'LA PAZ', N'68397000', N'LA PAZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (891, 21, N'406', N'LEBRIJA', N'68406000', N'LEBRIJA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (892, 21, N'418', N'LOS SANTOS', N'68418000', N'LOS SANTOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (893, 21, N'425', N'MACARAVITA', N'68425000', N'MACARAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (894, 21, N'432', N'MALAGA', N'68432000', N'MÁLAGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (895, 21, N'444', N'MATANZA', N'68444000', N'MATANZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (896, 21, N'464', N'MOGOTES', N'68464000', N'MOGOTES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (897, 21, N'468', N'MOLAGAVITA', N'68468000', N'MOLAGAVITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (898, 21, N'498', N'OCAMONTE', N'68498000', N'OCAMONTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (899, 21, N'500', N'OIBA', N'68500000', N'OIBA', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (900, 21, N'502', N'ONZAGA', N'68502000', N'ONZAGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (901, 21, N'522', N'PALMAR', N'68522000', N'PALMAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (902, 21, N'524', N'PALMAS DEL SOCORRO', N'68524000', N'PALMAS DEL SOCORRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (903, 21, N'533', N'PARAMO', N'68533000', N'PÁRAMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (904, 21, N'547', N'PIEDECUESTA', N'68547000', N'PIEDECUESTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (905, 21, N'549', N'PINCHOTE', N'68549000', N'PINCHOTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (906, 21, N'572', N'PUENTE NACIONAL', N'68572000', N'PUENTE NACIONAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (907, 21, N'573', N'PUERTO PARRA', N'68573000', N'PUERTO PARRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (908, 21, N'575', N'PUERTO WILCHES', N'68575000', N'PUERTO WILCHES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (909, 21, N'615', N'RIONEGRO', N'68615000', N'RIONEGRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (910, 21, N'655', N'SABANA DE TORRES', N'68655000', N'SABANA DE TORRES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (911, 21, N'669', N'SAN ANDRES', N'68669000', N'SAN ANDRÉS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (912, 21, N'673', N'SAN BENITO', N'68673000', N'SAN BENITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (913, 21, N'679', N'SAN GIL', N'68679000', N'SAN GIL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (914, 21, N'682', N'SAN JOAQUIN', N'68682000', N'SAN JOAQUÍN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (915, 21, N'684', N'SAN JOSE DE MIRANDA', N'68684000', N'SAN JOSÉ DE MIRANDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (916, 21, N'686', N'SAN MIGUEL', N'68686000', N'SAN MIGUEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (917, 21, N'689', N'SAN VICENTE DE CHUCURI', N'68689000', N'SAN VICENTE DE CHUCURÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (918, 21, N'705', N'SANTA BARBARA', N'68705000', N'SANTA BÁRBARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (919, 21, N'720', N'SANTA HELENA DEL OPON', N'68720000', N'SANTA HELENA DEL OPÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (920, 21, N'745', N'SIMACOTA', N'68745000', N'SIMACOTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (921, 21, N'755', N'SOCORRO', N'68755000', N'SOCORRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (922, 21, N'770', N'SUAITA', N'68770000', N'SUAITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (923, 21, N'773', N'SUCRE', N'68773000', N'SUCRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (924, 21, N'780', N'SURATA', N'68780000', N'SURATÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (925, 21, N'820', N'TONA', N'68820000', N'TONA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (926, 21, N'855', N'VALLE DE SAN JOSE', N'68855000', N'VALLE DE SAN JOSÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (927, 21, N'861', N'VELEZ', N'68861000', N'VÉLEZ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (928, 21, N'867', N'VETAS', N'68867000', N'VETAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (929, 21, N'872', N'VILLANUEVA', N'68872000', N'VILLANUEVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (930, 21, N'895', N'ZAPATOCA', N'68895000', N'ZAPATOCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (931, 22, N'001', N'SINCELEJO', N'70001000', N'SINCELEJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (932, 22, N'110', N'BUENAVISTA', N'70110000', N'BUENAVISTA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (933, 22, N'124', N'CAIMITO', N'70124000', N'CAIMITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (934, 22, N'204', N'COLOSO', N'70204000', N'RICAURTE (COLOSO)', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (935, 22, N'215', N'COROZAL', N'70215000', N'COROZAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (936, 22, N'221', N'COVEÑAS', N'70221000', N'COVEÑAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (937, 22, N'230', N'CHALAN', N'70230000', N'CHALÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (938, 22, N'233', N'EL ROBLE', N'70233000', N'EL ROBLE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (939, 22, N'235', N'GALERAS', N'70235000', N'GALERAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (940, 22, N'265', N'GUARANDA', N'70265000', N'GUARANDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (941, 22, N'400', N'LA UNION', N'70400000', N'LA UNIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (942, 22, N'418', N'LOS PALMITOS', N'70418000', N'LOS PALMITOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (943, 22, N'429', N'MAJAGUAL', N'70429000', N'MAJAGUAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (944, 22, N'473', N'MORROA', N'70473000', N'MORROA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (945, 22, N'508', N'OVEJAS', N'70508000', N'OVEJAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (946, 22, N'523', N'PALMITO', N'70523000', N'PALMITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (947, 22, N'670', N'SAMPUES', N'70670000', N'SAMPUÉS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (948, 22, N'678', N'SAN BENITO ABAD', N'70678000', N'SAN BENITO ABAD', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (949, 22, N'702', N'SAN JUAN DE BETULIA', N'70702000', N'BETULIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (950, 22, N'708', N'SAN MARCOS', N'70708000', N'SAN MARCOS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (951, 22, N'713', N'SAN ONOFRE', N'70713000', N'SAN ONOFRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (952, 22, N'717', N'SAN PEDRO', N'70717000', N'SAN PEDRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (953, 22, N'742', N'SAN LUIS DE SINCE', N'70742000', N'SINCÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (954, 22, N'771', N'SUCRE', N'70771000', N'SUCRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (955, 22, N'820', N'SANTIAGO DE TOLU', N'70820000', N'SANTIAGO DE TOLÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (956, 22, N'823', N'TOLU VIEJO', N'70823000', N'TOLÚ VIEJO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (957, 23, N'001', N'IBAGUE', N'73001000', N'IBAGUÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (958, 23, N'024', N'ALPUJARRA', N'73024000', N'ALPUJARRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (959, 23, N'026', N'ALVARADO', N'73026000', N'ALVARADO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (960, 23, N'030', N'AMBALEMA', N'73030000', N'AMBALEMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (961, 23, N'043', N'ANZOATEGUI', N'73043000', N'ANZOÁTEGUI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (962, 23, N'055', N'ARMERO', N'73055000', N'GUAYABAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (963, 23, N'067', N'ATACO', N'73067000', N'ATACO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (964, 23, N'124', N'CAJAMARCA', N'73124000', N'CAJAMARCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (965, 23, N'148', N'CARMEN DE APICALA', N'73148000', N'CARMEN DE APICALÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (966, 23, N'152', N'CASABIANCA', N'73152000', N'CASABIANCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (967, 23, N'168', N'CHAPARRAL', N'73168000', N'CHAPARRAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (968, 23, N'200', N'COELLO', N'73200000', N'COELLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (969, 23, N'217', N'COYAIMA', N'73217000', N'COYAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (970, 23, N'226', N'CUNDAY', N'73226000', N'CUNDAY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (971, 23, N'236', N'DOLORES', N'73236000', N'DOLORES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (972, 23, N'268', N'ESPINAL', N'73268000', N'ESPINAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (973, 23, N'270', N'FALAN', N'73270000', N'FALAN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (974, 23, N'275', N'FLANDES', N'73275000', N'FLANDES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (975, 23, N'283', N'FRESNO', N'73283000', N'FRESNO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (976, 23, N'319', N'GUAMO', N'73319000', N'GUAMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (977, 23, N'347', N'HERVEO', N'73347000', N'HERVEO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (978, 23, N'349', N'HONDA', N'73349000', N'HONDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (979, 23, N'352', N'ICONONZO', N'73352000', N'ICONONZO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (980, 23, N'408', N'LERIDA', N'73408000', N'LÉRIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (981, 23, N'411', N'LIBANO', N'73411000', N'LÍBANO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (982, 23, N'443', N'MARIQUITA', N'73443000', N'SAN SEBASTIÁN DE MARIQUITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (983, 23, N'449', N'MELGAR', N'73449000', N'MELGAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (984, 23, N'461', N'MURILLO', N'73461000', N'MURILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (985, 23, N'483', N'NATAGAIMA', N'73483000', N'NATAGAIMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (986, 23, N'504', N'ORTEGA', N'73504000', N'ORTEGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (987, 23, N'520', N'PALOCABILDO', N'73520000', N'PALOCABILDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (988, 23, N'547', N'PIEDRAS', N'73547000', N'PIEDRAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (989, 23, N'555', N'PLANADAS', N'73555000', N'PLANADAS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (990, 23, N'563', N'PRADO', N'73563000', N'PRADO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (991, 23, N'585', N'PURIFICACION', N'73585000', N'PURIFICACIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (992, 23, N'616', N'RIOBLANCO', N'73616000', N'RIOBLANCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (993, 23, N'622', N'RONCESVALLES', N'73622000', N'RONCESVALLES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (994, 23, N'624', N'ROVIRA', N'73624000', N'ROVIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (995, 23, N'671', N'SALDAÑA', N'73671000', N'SALDAÑA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (996, 23, N'675', N'SAN ANTONIO', N'73675000', N'SAN ANTONIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (997, 23, N'678', N'SAN LUIS', N'73678000', N'SAN LUIS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (998, 23, N'686', N'SANTA ISABEL', N'73686000', N'SANTA ISABEL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (999, 23, N'770', N'SUAREZ', N'73770000', N'SUÁREZ', N'CM')
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1000, 23, N'854', N'VALLE DE SAN JUAN', N'73854000', N'VALLE DE SAN JUAN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1001, 23, N'861', N'VENADILLO', N'73861000', N'VENADILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1002, 23, N'870', N'VILLAHERMOSA', N'73870000', N'VILLAHERMOSA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1003, 23, N'873', N'VILLARRICA', N'73873000', N'VILLARRICA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1004, 24, N'001', N'CALI', N'76001000', N'SANTIAGO DE CALI', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1005, 24, N'020', N'ALCALA', N'76020000', N'ALCALÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1006, 24, N'036', N'ANDALUCIA', N'76036000', N'ANDALUCÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1007, 24, N'041', N'ANSERMANUEVO', N'76041000', N'ANSERMANUEVO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1008, 24, N'054', N'ARGELIA', N'76054000', N'ARGELIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1009, 24, N'100', N'BOLIVAR', N'76100000', N'BOLÍVAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1010, 24, N'109', N'BUENAVENTURA', N'76109000', N'BUENAVENTURA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1011, 24, N'111', N'GUADALAJARA DE BUGA', N'76111000', N'GUADALAJARA DE BUGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1012, 24, N'113', N'BUGALAGRANDE', N'76113000', N'BUGALAGRANDE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1013, 24, N'122', N'CAICEDONIA', N'76122000', N'CAICEDONIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1014, 24, N'126', N'CALIMA', N'76126000', N'DARIÉN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1015, 24, N'130', N'CANDELARIA', N'76130000', N'CANDELARIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1016, 24, N'147', N'CARTAGO', N'76147000', N'CARTAGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1017, 24, N'233', N'DAGUA', N'76233000', N'DAGUA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1018, 24, N'243', N'EL AGUILA', N'76243000', N'EL ÁGUILA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1019, 24, N'246', N'EL CAIRO', N'76246000', N'EL CAIRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1020, 24, N'248', N'EL CERRITO', N'76248000', N'EL CERRITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1021, 24, N'250', N'EL DOVIO', N'76250000', N'EL DOVIO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1022, 24, N'275', N'FLORIDA', N'76275000', N'FLORIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1023, 24, N'306', N'GINEBRA', N'76306000', N'GINEBRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1024, 24, N'318', N'GUACARI', N'76318000', N'GUACARÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1025, 24, N'364', N'JAMUNDI', N'76364000', N'JAMUNDÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1026, 24, N'377', N'LA CUMBRE', N'76377000', N'LA CUMBRE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1027, 24, N'400', N'LA UNION', N'76400000', N'LA UNIÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1028, 24, N'403', N'LA VICTORIA', N'76403000', N'LA VICTORIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1029, 24, N'497', N'OBANDO', N'76497000', N'OBANDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1030, 24, N'520', N'PALMIRA', N'76520000', N'PALMIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1031, 24, N'563', N'PRADERA', N'76563000', N'PRADERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1032, 24, N'606', N'RESTREPO', N'76606000', N'RESTREPO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1033, 24, N'616', N'RIOFRIO', N'76616000', N'RIOFRÍO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1034, 24, N'622', N'ROLDANILLO', N'76622000', N'ROLDANILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1035, 24, N'670', N'SAN PEDRO', N'76670000', N'SAN PEDRO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1036, 24, N'736', N'SEVILLA', N'76736000', N'SEVILLA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1037, 24, N'823', N'TORO', N'76823000', N'TORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1038, 24, N'828', N'TRUJILLO', N'76828000', N'TRUJILLO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1039, 24, N'834', N'TULUA', N'76834000', N'TULUÁ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1040, 24, N'845', N'ULLOA', N'76845000', N'ULLOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1041, 24, N'863', N'VERSALLES', N'76863000', N'VERSALLES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1042, 24, N'869', N'VIJES', N'76869000', N'VIJES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1043, 24, N'890', N'YOTOCO', N'76890000', N'YOTOCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1044, 24, N'892', N'YUMBO', N'76892000', N'YUMBO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1045, 24, N'895', N'ZARZAL', N'76895000', N'ZARZAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1046, 25, N'001', N'ARAUCA', N'81001000', N'ARAUCA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1047, 25, N'065', N'ARAUQUITA', N'81065000', N'ARAUQUITA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1048, 25, N'220', N'CRAVO NORTE', N'81220000', N'CRAVO NORTE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1049, 25, N'300', N'FORTUL', N'81300000', N'FORTUL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1050, 25, N'591', N'PUERTO RONDON', N'81591000', N'PUERTO RONDÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1051, 25, N'736', N'SARAVENA', N'81736000', N'SARAVENA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1052, 25, N'794', N'TAME', N'81794000', N'TAME', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1053, 26, N'001', N'YOPAL', N'85001000', N'YOPAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1054, 26, N'010', N'AGUAZUL', N'85010000', N'AGUAZUL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1055, 26, N'015', N'CHAMEZA', N'85015000', N'CHÁMEZA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1056, 26, N'125', N'HATO COROZAL', N'85125000', N'HATO COROZAL', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1057, 26, N'136', N'LA SALINA', N'85136000', N'LA SALINA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1058, 26, N'139', N'MANI', N'85139000', N'MANÍ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1059, 26, N'162', N'MONTERREY', N'85162000', N'MONTERREY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1060, 26, N'225', N'NUNCHIA', N'85225000', N'NUNCHÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1061, 26, N'230', N'OROCUE', N'85230000', N'OROCUÉ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1062, 26, N'250', N'PAZ DE ARIPORO', N'85250000', N'PAZ DE ARIPORO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1063, 26, N'263', N'PORE', N'85263000', N'PORE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1064, 26, N'279', N'RECETOR', N'85279000', N'RECETOR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1065, 26, N'300', N'SABANALARGA', N'85300000', N'SABANALARGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1066, 26, N'315', N'SACAMA', N'85315000', N'SÁCAMA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1067, 26, N'325', N'SAN LUIS DE PALENQUE', N'85325000', N'SAN LUIS DE PALENQUE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1068, 26, N'400', N'TAMARA', N'85400000', N'TÁMARA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1069, 26, N'410', N'TAURAMENA', N'85410000', N'TAURAMENA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1070, 26, N'430', N'TRINIDAD', N'85430000', N'TRINIDAD', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1071, 26, N'440', N'VILLANUEVA', N'85440000', N'VILLANUEVA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1072, 27, N'001', N'MOCOA', N'86001000', N'MOCOA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1073, 27, N'219', N'COLON', N'86219000', N'COLÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1074, 27, N'320', N'ORITO', N'86320000', N'ORITO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1075, 27, N'568', N'PUERTO ASIS', N'86568000', N'PUERTO ASÍS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1076, 27, N'569', N'PUERTO CAICEDO', N'86569000', N'PUERTO CAICEDO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1077, 27, N'571', N'PUERTO GUZMAN', N'86571000', N'PUERTO GUZMÁN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1078, 27, N'573', N'LEGUIZAMO', N'86573000', N'PUERTO LEGUÍZAMO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1079, 27, N'749', N'SIBUNDOY', N'86749000', N'SIBUNDOY', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1080, 27, N'755', N'SAN FRANCISCO', N'86755000', N'SAN FRANCISCO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1081, 27, N'757', N'SAN MIGUEL', N'86757000', N'LA DORADA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1082, 27, N'760', N'SANTIAGO', N'86760000', N'SANTIAGO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1083, 27, N'865', N'VALLE DEL GUAMUEZ', N'86865000', N'LA HORMIGA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1084, 27, N'885', N'VILLAGARZON', N'86885000', N'VILLAGARZÓN', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1085, 28, N'001', N'SAN ANDRES', N'88001000', N'SAN ANDRÉS', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1086, 28, N'564', N'PROVIDENCIA', N'88564000', N'PROVIDENCIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1087, 29, N'001', N'LETICIA', N'91001000', N'LETICIA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1088, 29, N'263', N'EL ENCANTO', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1089, 29, N'405', N'LA CHORRERA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1090, 29, N'407', N'LA PEDRERA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1091, 29, N'430', N'LA VICTORIA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1092, 29, N'460', N'MIRITI - PARANA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1093, 29, N'530', N'PUERTO ALEGRIA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1094, 29, N'536', N'PUERTO ARICA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1095, 29, N'540', N'PUERTO NARIÑO', N'91540000', N'PUERTO NARIÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1096, 29, N'669', N'PUERTO SANTANDER', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1097, 29, N'798', N'TARAPACA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1098, 30, N'001', N'INIRIDA', N'94001000', N'INÍRIDA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1099, 30, N'343', N'BARRANCO MINAS', NULL, NULL, NULL)
GO
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1100, 30, N'663', N'MAPIRIPANA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1101, 30, N'883', N'SAN FELIPE', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1102, 30, N'884', N'PUERTO COLOMBIA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1103, 30, N'885', N'LA GUADALUPE', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1104, 30, N'886', N'CACAHUAL', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1105, 30, N'887', N'PANA PANA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1106, 30, N'888', N'MORICHAL', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1107, 31, N'001', N'SAN JOSE DEL GUAVIARE', N'95001000', N'SAN JOSÉ DEL GUAVIARE', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1108, 31, N'015', N'CALAMAR', N'95015000', N'CALAMAR', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1109, 31, N'025', N'EL RETORNO', N'95025000', N'EL RETORNO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1110, 31, N'200', N'MIRAFLORES', N'95200000', N'MIRAFLORES', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1111, 32, N'001', N'MITU', N'97001000', N'MITÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1112, 32, N'161', N'CARURU', N'97161000', N'CARURÚ', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1113, 32, N'511', N'PACOA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1114, 32, N'666', N'TARAIRA', N'97666000', N'TARAIRA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1115, 32, N'777', N'PAPUNAUA', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1116, 32, N'889', N'YAVARATE', NULL, NULL, NULL)
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1117, 33, N'001', N'PUERTO CARREÑO', N'99001000', N'PUERTO CARREÑO', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1118, 33, N'524', N'LA PRIMAVERA', N'99524000', N'LA PRIMAVERA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1119, 33, N'624', N'SANTA ROSALIA', N'99624000', N'SANTA ROSALÍA', N'CM')
INSERT [MNR].[City] ([CityId], [DepartmentId], [Code], [Name], [PopulationCenterCode], [PopulationCenterName], [Type]) VALUES (1120, 33, N'773', N'CUMARIBO', N'99773000', N'CUMARIBO', N'CM')
SET IDENTITY_INSERT [MNR].[City] OFF
SET IDENTITY_INSERT [MNR].[Country] ON 

INSERT [MNR].[Country] ([CountryId], [Code], [Name]) VALUES (1, N'169', N'COLOMBIA')
SET IDENTITY_INSERT [MNR].[Country] OFF
SET IDENTITY_INSERT [MNR].[Customer] ON 

INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (2, N'10001765', N'860005114-4', N'Linde Colombia S.A.', N'Cra. 68 # 11-51', N'4254550', 3, 501)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (3, N'10001826', N'899999068-1', N'ECOPETROL S.A.', N'CRA. 7A # 32-42', N'2343314', 3, 378)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (4, N'10001795', N'900818223-2', N'RED EAGLE MINING S.A.S', N'Calle 7 Sur # 42 - 70 Of 1903', N'4031300', 1, 382)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (5, N'10001805', N'800227924-8', N'Comercializadora Internacional INVERMEC S.A.', N'Cra. 22 # 75 - 11', N'2371659', 6, 610)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (6, N'10001867', N'860013704-3', N'GASES INDUSTRIALES DE COLOMBIA S.A.', N'Cra. 50 # 52 - 50 Piso 10', N'5145000', 1, 501)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (7, N'10001503', N'830126302-2', N'FRONTERA ENERGY COLOMBIA CORP', N'Calle 110 # 9 - 25', N'5112000', 149, 378)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (8, N'00', N'830025205-2', N'AES CHIVOR & CIA S.C.A. E.S.P', N'Calle 100 # 19 - 54 Oficina 901', N'5941400', 1, 689)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (9, N'10069374', N'900079790-5', N'Eje construcciones S.A.S.', N'Av. Circunvalar # 5-20', N'3316080', 1, 977)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (10, N'10069376', N'900460297-8', N'Inversiones inmobiliarias Bucaramanga  Arauco  S.A.', N'Cra. 27 # 29-145 Parque Caracolí', N'3216082', 1, 977)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (11, N'10069340', N'860066942-7', N'Caja de compensación familiar COMPENSAR', N'Av 68 No. 49A-17 ', N'4280666 Ext. 13219', 1, 1076)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (12, N'10002025', N'900738674-7', N'SMI COLOMBIA S.A.S.', N'Parque industrial Gran Sabana unidad 51', N'8785761', 1, 560)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (13, N'10069339', N'900076109-5', N'TUBOPLEX S.A.', N'Cra. 69 Bis No. 39 Sur -0 5', N'2381956', 149, 559)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (14, N'10069258', N'830006735-3', N'Alimentos Polar Colombia S.A.S.', N'Calle 100 No. 9A-45 Piso 11', N'6511777', 149, 399)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (15, N'10069822', N'800084048-5', N'SOCIEDAD PORTUARIA TERMINAL DE CONTENEDORES DE BUENAVENTURA S.A. – T.C. BUEN S.A. ', N'Carrera 28A No. 7-152 ', N'(2) 2410240', 1, 823)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (16, N'10069821', N'830007240-4', N'ALPLA COLOMBIA LTDA ', N'Calle 80 Aut. Medellín KM 2.4 vía Siberia - Bogotá', N'1 2913600', 1, 523)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (18, N'10071424', N'900497392-1', N'AGRO CASCADA S.A.S.', N'Calle 110 # 9 - 25', N'5112000', 3, 378)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (19, N'10070464', N'860004855-9', N'GOODYEAR DE COLOMBIA S.A.', N'Calle 10 Diagonal 15-39', N'6088405', 1, 517)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (20, N'10072701', N'860002302-9', N'ETERNIT COLOMBIANA S.A.', N'Autopista sur Km1 vá Silvanai', N'3528100', 11, 538)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (21, N'10072626', N'800022558-4', N'Baterias Willard S.A.', N'Calle 75 No. 59-45', N'3531818', 1, 584)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (22, N'10072470', N'860502509-1', N'P.V.C. Gerfor S.A.', N'Autopista Medellín Km 2 - 600M vía parcelas', N'8776800', 11, 523)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (23, N'10072702', N'815002042-5', N'PGI Colombia LTDA', N'Km6 vía Yumbo - Aeropuerto. ZF del Pacifico', N'2801242', 24, 430)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (24, N'10072627', N'900864250-7', N'APROPET S.A.S.', N'Av Calle 17 No. 81B-83', N'7446284', 3, 503)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (25, N'10072628', N'890320250-7', N'Colombiana de Moldeados  S.A.S:', N'Km 1.5 vía Buga - Buenaventura', N'2280400', 24, 475)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (26, N'10072721', N'900251415-4', N'Protisa Colombia S.A.', N'Km 45 Autopista norte vía Bogotá  - Tunja', N'5893333', 11, 474)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (27, N'10072722', N'860009873-4', N'Sociedad Portuaria Puerto Bahía S.A.', N'Barú, Cll 7 Cra 5-608, Sector La Pulga. ', N'6475346', 4, 823)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (28, N'10072699', N'817002753-0', N'Drypers Andina S.A.', N'Km 2 vía a San Julián. Parque Industrial El Paraíso', N'5893333', 8, 476)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (29, N'10072704', N'860048371-5', N'Proteinas y energéticos de Colombia S.A.S. - PROTEICOL', N'Km 14 vía Silvania, diagonal Icollantas', N'7198253', 11, 648)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (30, N'10072810', N'900388600-1', N'Clarios Andina S.A.S.', N'Cra 35 No 10-300 Acopi', N'(2) 6911800', 1044, 584)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (31, N'10072833', N'817000727-1', N'Clarios del Pacífico S.A.S', N'Zona Franca Permanente Conjunto Residencial Parque', N'(2) 6911800', 403, 523)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (32, N'10104331', N'900252139-0', N'Parque Arauco Colombia S.A.', N'Calle 77 No. 7 – 44 Oficina 701', N'3216082', 1, 977)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (33, N'10069376', N'900957077-9', N'Hoteles de Floridablanca SAS', N'Cr 27 No. 29-145', N'6186818', 21, 852)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (34, N'10100038', N'800103903-0', N'QUAD GRAPHICS COLOMBIA S A S', N'CL 17 41 34 ', N'7450555', 3, 486)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (35, N'10100049', N'860006127-4', N'C.I. SIGRA S.A.', N'Cra. 46 No. 13 - 56', N'5190900', 149, 397)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (36, N'10103696', N'890900098-2', N'LANDERS Y CIA S.A.S.', N'Cra. 53 No. 30 - 27', N'3500060', 1, 590)
INSERT [MNR].[Customer] ([CustomerId], [InternalId], [Nit], [Name], [Address], [PhoneNumber], [CityId], [CIIU]) VALUES (37, N'10103695', N'890900104-9', N'INCAMETAL S.A.S.', N'Cra. 45 No. 32D - 135 IN115', N'4500400', 1, 563)
SET IDENTITY_INSERT [MNR].[Customer] OFF
SET IDENTITY_INSERT [MNR].[Department] ON 

INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (1, 1, N'05', N'ANTIOQUIA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (2, 1, N'08', N'ATLANTICO')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (3, 1, N'11', N'BOGOTA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (4, 1, N'13', N'BOLIVAR')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (5, 1, N'15', N'BOYACA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (6, 1, N'17', N'CALDAS')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (7, 1, N'18', N'CAQUETA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (8, 1, N'19', N'CAUCA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (9, 1, N'20', N'CESAR')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (10, 1, N'23', N'CORDOBA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (11, 1, N'25', N'CUNDINAMARCA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (12, 1, N'27', N'CHOCO')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (13, 1, N'41', N'HUILA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (14, 1, N'44', N'LA GUAJIRA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (15, 1, N'47', N'MAGDALENA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (16, 1, N'50', N'META')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (17, 1, N'52', N'NARIÑO')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (18, 1, N'54', N'N. DE SANTANDER')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (19, 1, N'63', N'QUINDIO')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (20, 1, N'66', N'RISARALDA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (21, 1, N'68', N'SANTANDER')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (22, 1, N'70', N'SUCRE')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (23, 1, N'73', N'TOLIMA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (24, 1, N'76', N'VALLE DEL CAUCA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (25, 1, N'81', N'ARAUCA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (26, 1, N'85', N'CASANARE')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (27, 1, N'86', N'PUTUMAYO')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (28, 1, N'88', N'SAN ANDRES')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (29, 1, N'91', N'AMAZONAS')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (30, 1, N'94', N'GUAINIA')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (31, 1, N'95', N'GUAVIARE')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (32, 1, N'97', N'VAUPES')
INSERT [MNR].[Department] ([DepartmentId], [CountryId], [Code], [Name]) VALUES (33, 1, N'99', N'VICHADA')
SET IDENTITY_INSERT [MNR].[Department] OFF
SET IDENTITY_INSERT [MNR].[User] ON 

INSERT [MNR].[User] ([UserId], [FirstName], [LastName], [UserName], [Password], [DateFrom], [DateTo]) VALUES (1, N'Joaquin', N'Bermudez', N'Joaco', N'123', CAST(N'2020-11-01T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [MNR].[User] OFF
ALTER TABLE [MNR].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Department] FOREIGN KEY([DepartmentId])
REFERENCES [MNR].[Department] ([DepartmentId])
GO
ALTER TABLE [MNR].[City] CHECK CONSTRAINT [FK_City_Department]
GO
ALTER TABLE [MNR].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_City] FOREIGN KEY([CityId])
REFERENCES [MNR].[City] ([CityId])
GO
ALTER TABLE [MNR].[Customer] CHECK CONSTRAINT [FK_Customer_City]
GO
ALTER TABLE [MNR].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Country] FOREIGN KEY([CountryId])
REFERENCES [MNR].[Country] ([CountryId])
GO
ALTER TABLE [MNR].[Department] CHECK CONSTRAINT [FK_Department_Country]
GO
ALTER TABLE [MNR].[EnergyMeter]  WITH CHECK ADD  CONSTRAINT [FK_EnergyMeter_City] FOREIGN KEY([CityCorrespondenceId])
REFERENCES [MNR].[City] ([CityId])
GO
ALTER TABLE [MNR].[EnergyMeter] CHECK CONSTRAINT [FK_EnergyMeter_City]
GO
/****** Object:  StoredProcedure [MNR].[CustomersDelete]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [MNR].[CustomersDelete]
(
	@CustomerID nchar (5)
)
AS
BEGIN

    DELETE MNR.Customer
    WHERE CustomerID=@CustomerID

END
GO
/****** Object:  StoredProcedure [MNR].[CustomersGetByID]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [MNR].[CustomersGetByID]
(
    @CustomerID nchar (5)
)
AS
BEGIN

    SELECT CustomerId
      ,InternalId
      ,Nit
      ,cus.Name
      ,Address
      ,PhoneNumber
      ,cus.CityId
	  ,cit.Name CityName
      ,CIIU
    FROM MNR.Customer cus INNER JOIN MNR.City cit  ON cus.CityId = cit.CityId
    WHERE cus.CustomerID=@CustomerID

END
GO
/****** Object:  StoredProcedure [MNR].[CustomersInsert]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [MNR].[CustomersInsert]
(
	@InternalId varchar (10) ,
	@Nit varchar (50) NULL ,
	@Name varchar (150) NULL ,
	@Address varchar (150) NULL ,
	@PhoneNumber Varchar(50) NULL ,
	@CityId Int NULL ,
	@CIIU Int NULL 
)
AS
BEGIN

    INSERT INTO [MNR].[Customer]
           ([InternalId]
           ,[Nit]
           ,[Name]
           ,[Address]
           ,[PhoneNumber]
           ,[CityId]
           ,[CIIU])
     VALUES
           (@InternalId
           ,@Nit
           ,@Name
           ,@Address
           ,@PhoneNumber
           ,@CityId
           ,@CIIU)

END
GO
/****** Object:  StoredProcedure [MNR].[CustomersList]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [MNR].[CustomersList]
AS
BEGIN

    SELECT CustomerId
      ,InternalId
      ,Nit
      ,cus.Name
      ,Address
      ,PhoneNumber
      ,cus.CityId
	  ,cit.Name CityName
      ,CIIU
  FROM MNR.Customer cus INNER JOIN MNR.City cit  ON cus.CityId = cit.CityId

END
GO
/****** Object:  StoredProcedure [MNR].[CustomersUpdate]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [MNR].[CustomersUpdate]
(
	@CustomerId Int,
	@InternalId varchar (10) ,
	@Nit varchar (50) NULL ,
	@Name varchar (150) NULL ,
	@Address varchar (150) NULL ,
	@PhoneNumber Varchar(50) NULL ,
	@CityId Int NULL ,
	@CIIU Int NULL 
)
AS
BEGIN

    UPDATE [MNR].[Customer]
   SET [InternalId] = @InternalId
      ,[Nit] = @Nit
      ,[Name] = @Name
      ,[Address] = @Address
      ,[PhoneNumber] = @PhoneNumber
      ,[CityId] = @CityId
      ,[CIIU] = @CIIU
 WHERE CustomerId = @CustomerId

END
GO
/****** Object:  StoredProcedure [MNR].[UsersGetByUserAndPassword]    Script Date: 2020-11-16 11:07:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joaquin Bermudez
-- Create date: 2020-11-15
-- Description:	SP para obtener los datos del usuario por usuario y clave
-- =============================================
CREATE PROCEDURE [MNR].[UsersGetByUserAndPassword]
	@UserName VARCHAR(50),
	@Password VARCHAR(50)
AS
BEGIN
	SELECT [UserId]
      ,[FirstName]
      ,[LastName]
      ,[UserName]
      ,[Password]
      ,[DateFrom]
      ,[DateTo]
  FROM [MNR].[User]
  WHERE UserName = @UserName
  AND Password = @Password
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity AutoNumeric value' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity of the department' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DANE code of the City' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the city' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population center code' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'PopulationCenterCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population Center Name' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'PopulationCenterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of the city' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to store Cities' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique Identity, autonumeric' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'CountryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DANE Code of Country' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of Country' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Country', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table to store the countries' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity unique auto numeric' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CustomerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Internal identity for each customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'InternalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nit of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Nit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Address of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phone numer of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City identity for the relation ship with the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CityId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Itentity for the super reports' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Customer', @level2type=N'COLUMN',@level2name=N'CIIU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity Number Autonumeric' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity of the country of the Department' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'CountryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DANE Code of the Department' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the Department' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'Department', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity of the table' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First Name of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last Name of the customer' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LastName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'User Name for the authentication' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Password for the authentication' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date from the user is active' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'DateFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date to the user is active' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'DateTo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table for store the user' , @level0type=N'SCHEMA',@level0name=N'MNR', @level1type=N'TABLE',@level1name=N'User'
GO
USE [master]
GO
ALTER DATABASE [LiquidationMNR] SET  READ_WRITE 
GO
