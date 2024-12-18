USE [kaktus]
GO
/****** Object:  Table [dbo].[Kaktus]    Script Date: 22.11.2024 6:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kaktus](
	[Id_kaktus] [int] IDENTITY(1,1) NOT NULL,
	[Vid] [nvarchar](50) NULL,
	[Proishojdenie] [nvarchar](50) NULL,
	[Vozrast] [int] NULL,
	[Stoimost] [int] NULL,
	[InstrukciaPoUhodu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kaktus] PRIMARY KEY CLUSTERED 
(
	[Id_kaktus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kaktus_Vistavka]    Script Date: 22.11.2024 6:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kaktus_Vistavka](
	[Id_kaktus_vistavka] [int] IDENTITY(1,1) NOT NULL,
	[Id_kaktus] [int] NULL,
	[Id_vistavka] [int] NULL,
	[kolichestvo] [int] NULL,
 CONSTRAINT [PK_Kaktus_Vistavka] PRIMARY KEY CLUSTERED 
(
	[Id_kaktus_vistavka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vistavka]    Script Date: 22.11.2024 6:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vistavka](
	[Id_vistavki] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Data] [nvarchar](50) NULL,
	[Mesto] [nvarchar](50) NULL,
 CONSTRAINT [PK_Vistavka] PRIMARY KEY CLUSTERED 
(
	[Id_vistavki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Kaktus] ON 

INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (1, N'Цереус', N'Южная Америка', 25, 2300, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (2, N'Опунция', N'Америка', 21, 1222, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (3, N'Астрофитум', N'Северная Америка', 33, 3243, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (4, N'Эхиноцереус', N'Мексика', 32, 4242, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (5, N'Карнегия ', N'Мексика', 43, 532, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (6, N'Эхинокактус Грузона', N'Мексика', 32, 3243, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (7, N'Ребуция', N'Южная Америка', 32, 543, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (8, N'Эпифиллум', N'Южная Америка', 33, 5321, N'Полить 1 раз в неделю')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (9, N'zxc', N'zxc', 11, 11, N'zxc')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (11, N'14', N'12', 12, 12, N'12')
INSERT [dbo].[Kaktus] ([Id_kaktus], [Vid], [Proishojdenie], [Vozrast], [Stoimost], [InstrukciaPoUhodu]) VALUES (12, N'132', N'213', 21, 213, N'312')
SET IDENTITY_INSERT [dbo].[Kaktus] OFF
GO
SET IDENTITY_INSERT [dbo].[Kaktus_Vistavka] ON 

INSERT [dbo].[Kaktus_Vistavka] ([Id_kaktus_vistavka], [Id_kaktus], [Id_vistavka], [kolichestvo]) VALUES (1, 3, 3, 41)
SET IDENTITY_INSERT [dbo].[Kaktus_Vistavka] OFF
GO
SET IDENTITY_INSERT [dbo].[Vistavka] ON 

INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (1, N'кактусы1', N'2011-11-11', N'казань')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (2, N'кактусы2', N'2011-12-12', N'краснодар')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (3, N'кактусы3', N'2011-11-13', N'ижевск')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (4, N'кактусы4', N'2011-11-14', N'ульновск')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (5, N'кактусы5', N'2011-11-15', N'омск')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (6, N'кактусы6', N'2011-11-16', N'тула')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (7, N'кактусы7', N'2011-11-16', N'иркутск')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (8, NULL, N'2011-11-17', N'казань')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (9, N'zcx', N'2011-11-17', N'cxz')
INSERT [dbo].[Vistavka] ([Id_vistavki], [Name], [Data], [Mesto]) VALUES (11, N'cxz', N'zxc', N'zxc')
SET IDENTITY_INSERT [dbo].[Vistavka] OFF
GO
ALTER TABLE [dbo].[Kaktus_Vistavka]  WITH CHECK ADD  CONSTRAINT [FK_Kaktus_Vistavka_Kaktus] FOREIGN KEY([Id_kaktus])
REFERENCES [dbo].[Kaktus] ([Id_kaktus])
GO
ALTER TABLE [dbo].[Kaktus_Vistavka] CHECK CONSTRAINT [FK_Kaktus_Vistavka_Kaktus]
GO
ALTER TABLE [dbo].[Kaktus_Vistavka]  WITH CHECK ADD  CONSTRAINT [FK_Kaktus_Vistavka_Vistavka] FOREIGN KEY([Id_vistavka])
REFERENCES [dbo].[Vistavka] ([Id_vistavki])
GO
ALTER TABLE [dbo].[Kaktus_Vistavka] CHECK CONSTRAINT [FK_Kaktus_Vistavka_Vistavka]
GO
