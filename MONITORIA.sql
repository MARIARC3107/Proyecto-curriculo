USE [master]
GO
/****** Object:  Database [Proyecto C]    Script Date: 28/11/2024 10:18:22 p. m. ******/
CREATE DATABASE [Proyecto C]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyecto C', FILENAME = N'C:\Users\maria\Proyecto C.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Proyecto C_log', FILENAME = N'C:\Users\maria\Proyecto C_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Proyecto C] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyecto C].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyecto C] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyecto C] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyecto C] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyecto C] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyecto C] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyecto C] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyecto C] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyecto C] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyecto C] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyecto C] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyecto C] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyecto C] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyecto C] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyecto C] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyecto C] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Proyecto C] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyecto C] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyecto C] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyecto C] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyecto C] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyecto C] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyecto C] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyecto C] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Proyecto C] SET  MULTI_USER 
GO
ALTER DATABASE [Proyecto C] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyecto C] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyecto C] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyecto C] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyecto C] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Proyecto C] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Proyecto C] SET QUERY_STORE = OFF
GO
USE [Proyecto C]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ac_retroal]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ac_retroal](
	[resultado_ap] [nvarchar](600) NOT NULL,
	[estrategia_programa] [nvarchar](100) NOT NULL,
	[ac_retrioal] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Ac_retroal] PRIMARY KEY CLUSTERED 
(
	[resultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AProfesional]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AProfesional](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[a_profesional] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_AProfesional] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ATProfesionales]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATProfesionales](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[areas_profesionales] [nvarchar](255) NOT NULL,
	[tareas_profesionales] [nvarchar](255) NOT NULL,
	[poblaciones_actuacion] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ATProfesionales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[verbo] [nvarchar](25) NOT NULL,
	[objeto_conceptual] [nvarchar](255) NOT NULL,
	[finalidad] [nvarchar](255) NOT NULL,
	[condicion_contexto] [nvarchar](255) NOT NULL,
	[competencia] [nvarchar](600) NOT NULL,
 CONSTRAINT [PK_Competencias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Est_mesocurricular]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Est_mesocurricular](
	[resultado_ap] [nvarchar](600) NOT NULL,
	[estrategia_programa] [nvarchar](100) NOT NULL,
	[descripcion] [nvarchar](600) NOT NULL,
	[Ac_retroalresultado_ap] [nvarchar](600) NULL,
	[Inst_medicionresultado_ap] [nvarchar](600) NOT NULL,
 CONSTRAINT [PK_Est_mesocurricular] PRIMARY KEY CLUSTERED 
(
	[resultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ind_impacto]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ind_impacto](
	[resultado_ap] [nvarchar](600) NOT NULL,
	[estrategia_programa] [nvarchar](100) NOT NULL,
	[ind_impacto] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Ind_impacto] PRIMARY KEY CLUSTERED 
(
	[resultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inst_medicion]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inst_medicion](
	[resultado_ap] [nvarchar](600) NOT NULL,
	[estrategia_programa] [nvarchar](100) NOT NULL,
	[inst_medicion] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Inst_medicion] PRIMARY KEY CLUSTERED 
(
	[resultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PActuacion]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PActuacion](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[p_actuacion] [nvarchar](600) NOT NULL,
 CONSTRAINT [PK_PActuacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil_egreso]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_egreso](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[nombre_programa] [nvarchar](100) NOT NULL,
	[nmodalidad] [nvarchar](30) NOT NULL,
	[perfil_profesional] [nvarchar](2500) NOT NULL,
	[perfil_ocupacional] [nvarchar](2500) NOT NULL,
	[Res_aprendizajeid_resultado] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_perfil_egreso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Res_aprendizaje]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Res_aprendizaje](
	[id_resultado] [nvarchar](50) NOT NULL,
	[competencia] [nvarchar](600) NOT NULL,
	[tipo_saber] [nvarchar](10) NOT NULL,
	[saber_asociado] [nvarchar](255) NOT NULL,
	[taxonomia] [nvarchar](10) NOT NULL,
	[dominio_tratar] [nvarchar](20) NOT NULL,
	[nivel_dominio] [nvarchar](20) NOT NULL,
	[verbo] [nvarchar](20) NOT NULL,
	[resultado_ap] [nvarchar](600) NOT NULL,
 CONSTRAINT [PK_Res_aprendizaje] PRIMARY KEY CLUSTERED 
(
	[id_resultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Saber]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saber](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[saber] [nvarchar](300) NOT NULL,
	[saber_hacer] [nvarchar](300) NOT NULL,
	[saber_ser] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Saber] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategorias]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategorias](
	[IdSubcategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreSubcategoria] [nvarchar](50) NOT NULL,
	[IdCategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSubcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAgregado]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAgregado](
	[id] [nvarchar](50) NOT NULL,
	[id_programa] [nvarchar](255) NOT NULL,
	[v_agregado] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_VAgregado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verbos]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verbos](
	[IdVerbo] [int] IDENTITY(1,1) NOT NULL,
	[Verbo] [nvarchar](50) NOT NULL,
	[IdSubcategoria] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdVerbo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verbos_no_usar]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verbos_no_usar](
	[verbo] [varchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verbos_usar]    Script Date: 28/11/2024 10:18:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verbos_usar](
	[verbo] [varchar](25) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241028012015_inicial', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 
GO
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria]) VALUES (1, N'Cognitivo')
GO
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria]) VALUES (2, N'Procedimental')
GO
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria]) VALUES (3, N'Actitudinal')
GO
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Subcategorias] ON 
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (1, N'ConocimientoBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (2, N'ComprensiónBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (3, N'AplicaciónBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (4, N'AnálisisBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (5, N'SíntesisBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (6, N'EvaluaciónBAK', 1)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (7, N'ImitaciónBAK', 2)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (8, N'ManipulaciónBAK', 2)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (9, N'PrecisiónBAK', 2)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (10, N'ControlBAK', 2)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (11, N'PercepciónBAK', 3)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (12, N'ResponderBAK', 3)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (13, N'ValorarBAK', 3)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (14, N'OrganizarBAK', 3)
GO
INSERT [dbo].[Subcategorias] ([IdSubcategoria], [NombreSubcategoria], [IdCategoria]) VALUES (15, N'CaracterizarBAK', 3)
GO
SET IDENTITY_INSERT [dbo].[Subcategorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Verbos] ON 
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (1, N'Adquirir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (2, N'Buscar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (3, N'Citar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (4, N'Consignar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (5, N'Decir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (6, N'Definir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (7, N'Deletrear', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (8, N'Demostrar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (9, N'Describir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (10, N'Elegir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (11, N'Enseñar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (12, N'Escribir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (13, N'Establecer', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (14, N'Etiquetar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (15, N'Examinar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (16, N'Grabar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (17, N'Hacer', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (18, N'Identificar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (19, N'Ilustrar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (20, N'Listar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (21, N'Mostrar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (22, N'Nombrar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (23, N'Numerar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (24, N'Observar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (25, N'Obtener', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (26, N'Ordenar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (27, N'Organizar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (28, N'Preguntar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (29, N'Presentar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (30, N'Probar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (31, N'Realizar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (32, N'Reconocer', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (33, N'Recordar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (34, N'Registrar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (35, N'Relacionar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (36, N'Relatar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (37, N'Reproducir', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (38, N'Revisar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (39, N'Rotular', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (40, N'Seleccionar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (41, N'Subrayar', 1)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (42, N'Auditar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (43, N'Bosquejar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (44, N'Comentar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (45, N'Comunicar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (46, N'Convertir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (47, N'Criticar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (48, N'Dar ejemplos', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (49, N'Debatir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (50, N'Describir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (51, N'Desplegar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (52, N'Dibujar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (53, N'Discutir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (54, N'Diseñar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (55, N'Establecer', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (56, N'Examinar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (57, N'Explicar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (58, N'Exponer', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (59, N'Expresar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (60, N'Extraer', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (61, N'Generalizar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (62, N'Hacer', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (63, N'Identificar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (64, N'Indicar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (65, N'Inferir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (66, N'Interpretar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (67, N'Inventariar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (68, N'Localizar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (69, N'Narrar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (70, N'Parafrasear', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (71, N'Presentar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (72, N'Relatar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (73, N'Reportar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (74, N'Resumir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (75, N'Revisar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (76, N'Seleccionar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (77, N'Separar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (78, N'Traducir', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (79, N'Transformar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (80, N'Ubicar', 2)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (81, N'Aplicar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (82, N'Calificar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (83, N'Combinar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (84, N'Componer', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (85, N'Conducir', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (86, N'Construir', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (87, N'Demostrar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (88, N'Determinar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (89, N'Dibujar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (90, N'Discriminar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (91, N'Diseñar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (92, N'Dramatizar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (93, N'Duplicar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (94, N'Elegir', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (95, N'Emparejar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (96, N'Emplear', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (97, N'Esquematizar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (98, N'Estimar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (99, N'Estructurar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (100, N'Evaluar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (101, N'Experimentar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (102, N'Ilustrar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (103, N'Indicar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (104, N'Interpretar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (105, N'Investigar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (106, N'Listar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (107, N'Manipular', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (108, N'Modelar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (109, N'Operar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (110, N'Organizar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (111, N'Patronar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (112, N'Practicar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (113, N'Recoger', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (114, N'Relacionar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (115, N'Reportar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (116, N'Resolver', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (117, N'Transferir', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (118, N'Usar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (119, N'Valorar', 3)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (120, N'Aislar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (121, N'Analizar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (122, N'Calcular', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (123, N'Categorizar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (124, N'Comparar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (125, N'Considerar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (126, N'Contrastar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (127, N'Criticar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (128, N'Cuestionar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (129, N'Debatir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (130, N'Deducir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (131, N'Desarrollar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (132, N'Detectar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (133, N'Diagramar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (134, N'Diferenciar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (135, N'Discernir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (136, N'Discriminar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (137, N'Distinguir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (138, N'Estructurar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (139, N'Examinar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (140, N'Experimentar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (141, N'Inspeccionar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (142, N'Inventariar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (143, N'Investigar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (144, N'Listar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (145, N'Medir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (146, N'Planear', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (147, N'Preguntar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (148, N'Probar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (149, N'Reconocer', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (150, N'Relacionar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (151, N'Separar', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (152, N'Subdividir', 4)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (153, N'Adaptar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (154, N'Administrar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (155, N'Arreglar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (156, N'Articular', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (157, N'Aumentar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (158, N'Calcular', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (159, N'Componer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (160, N'Computar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (161, N'Concluir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (162, N'Conectar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (163, N'Construir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (164, N'Crear', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (165, N'Decidir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (166, N'Deducir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (167, N'Derivar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (168, N'Desarrollar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (169, N'Describir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (170, N'Desempeñar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (171, N'Dirigir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (172, N'Diseñar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (173, N'Ejercer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (174, N'Ensamblar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (175, N'Escribir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (176, N'Establecer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (177, N'Estudiar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (178, N'Figurar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (179, N'Formular', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (180, N'Generar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (181, N'Gestionar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (182, N'Hacer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (183, N'Inferir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (184, N'Instalar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (185, N'Interpretar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (186, N'Introducir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (187, N'Inventar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (188, N'Juntar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (189, N'Manipular', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (190, N'Mejorar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (191, N'Modificar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (192, N'Numerar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (193, N'Obtener', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (194, N'Ordenar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (195, N'Organizar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (196, N'Perfeccionar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (197, N'Planear', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (198, N'Planificar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (199, N'Poner', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (200, N'Predecir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (201, N'Preparar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (202, N'Producir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (203, N'Proponer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (204, N'Proyectar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (205, N'Resolver', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (206, N'Reunir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (207, N'Señalar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (208, N'Simplificar', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (209, N'Subdividir', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (210, N'Suponer', 5)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (211, N'Aconsejar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (212, N'Adjuntar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (213, N'Agregar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (214, N'Alinear', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (215, N'Arbitrar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (216, N'Asegurar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (217, N'Asesorar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (218, N'Atar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (219, N'Calcular', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (220, N'Calificar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (221, N'Censurar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (222, N'Clasificar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (223, N'Computar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (224, N'Concluir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (225, N'Conformar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (226, N'Contrastar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (227, N'Controlar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (228, N'Corregir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (229, N'Criticar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (230, N'Cuestionar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (231, N'Culminar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (232, N'Debatir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (233, N'Decidir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (234, N'Deducir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (235, N'Defender', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (236, N'Determinar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (237, N'Discutir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (238, N'Elegir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (239, N'Ensamblar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (240, N'Escoger', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (241, N'Establecer', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (242, N'Estimar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (243, N'Evaluar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (244, N'Finalizar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (245, N'Formar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (246, N'Justificar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (247, N'Juzgar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (248, N'Marcar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (249, N'Medir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (250, N'Modificar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (251, N'Numerar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (252, N'Peritar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (253, N'Predecir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (254, N'Pronosticar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (255, N'Recomendar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (256, N'Repartir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (257, N'Resolver', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (258, N'Reunir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (259, N'Revisar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (260, N'Seleccionar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (261, N'Sistematizar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (262, N'Sugerir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (263, N'Tasar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (264, N'Terminar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (265, N'Unir', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (266, N'Validar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (267, N'Valorar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (268, N'Verificar', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (269, N'Vincular', 6)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (270, N'Ajustar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (271, N'Adaptar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (272, N'Modificar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (273, N'Concretar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (274, N'Asegurar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (275, N'Alinear', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (276, N'Analizar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (277, N'Aplicar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (278, N'Arreglar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (279, N'Organizar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (280, N'Ordenar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (281, N'Disponer', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (282, N'Acordar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (283, N'Gestionar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (284, N'Armar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (285, N'Ensamblar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (286, N'Reunir', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (287, N'Construir', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (288, N'Edificar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (289, N'Hacer', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (290, N'Trazar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (291, N'Preparar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (292, N'Cambiar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (293, N'Transformar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (294, N'Comprobar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (295, N'Verificar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (296, N'Controlar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (297, N'Contrastar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (298, N'Contar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (299, N'Limpiar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (300, N'Filtrar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (301, N'Escoger', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (302, N'Recoger', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (303, N'Recaudar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (304, N'Juntar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (305, N'Comparar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (306, N'Cotejar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (307, N'Conducir', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (308, N'Direccionar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (309, N'Inspeccionar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (310, N'Coordinar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (311, N'Cortar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (312, N'Recortar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (313, N'Bailar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (314, N'Demostrar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (315, N'Detectar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (316, N'Señalar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (317, N'Probar', 7)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (318, N'Direccionar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (319, N'Desmontar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (320, N'Dramatizar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (321, N'Docificar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (322, N'Dibujar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (323, N'Trazar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (324, N'Hacer', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (325, N'Extraer', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (326, N'Perforar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (327, N'Ejercitar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (328, N'Enseñar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (329, N'Conducir', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (330, N'Dirigir', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (331, N'Manejar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (332, N'Guiar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (333, N'Examinar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (334, N'Ejecutar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (335, N'Explorar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (336, N'Expresar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (337, N'Encajar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (338, N'Ajustar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (339, N'Acceder', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (340, N'Arreglar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (341, N'Mejorar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (342, N'Manipular', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (343, N'Maniobrar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (344, N'Identificar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (345, N'Inspeccionar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (346, N'Revisar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (347, N'Registrar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (348, N'Reconocer', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (349, N'Instalar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (350, N'Poner', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (351, N'Colocar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (352, N'Inventariar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (353, N'Aislar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (354, N'Ampliar', 8)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (355, N'Disponer', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (356, N'Planear', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (357, N'Apalancar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (358, N'Levantar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (359, N'Estimular', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (360, N'Localizar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (361, N'Ubicar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (362, N'Encontrar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (363, N'Colocar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (364, N'Establecer', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (365, N'Hallar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (366, N'Situar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (367, N'Bajar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (368, N'Manipular', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (369, N'Manejar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (370, N'Medir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (371, N'Racionar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (372, N'Separar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (373, N'Dividir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (374, N'Repartir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (375, N'Mezclar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (376, N'Porcionar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (377, N'Modificar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (378, N'Ajustar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (379, N'Mover', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (380, N'Maniobrar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (381, N'Gestionar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (382, N'Negociar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (383, N'Emitir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (384, N'Abrir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (385, N'Destapar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (386, N'Comenzar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (387, N'Operar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (388, N'Dirigir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (389, N'Impulsar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (390, N'Organizar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (391, N'Ordenar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (392, N'Revisar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (393, N'Repasar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (394, N'Empaquetar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (395, N'Envasar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (396, N'Pintar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (397, N'Realizar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (398, N'Hacer', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (399, N'Ejecutar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (400, N'Cumplir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (401, N'Actuar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (402, N'Ejercer', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (403, N'Interpretar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (404, N'Tocar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (405, N'Representar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (406, N'Practicar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (407, N'Entrenar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (408, N'Grabar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (409, N'Sacar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (410, N'Imprimir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (411, N'Estampar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (412, N'Extraer', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (413, N'Producir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (414, N'Fabricar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (415, N'Presentar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (416, N'Cortar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (417, N'Reducir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (418, N'Mitigar', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (419, N'Emitir', 9)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (420, N'Remover', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (421, N'Quitar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (422, N'Suprimir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (423, N'Eliminar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (424, N'Retirar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (425, N'Extirpar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (426, N'Disipar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (427, N'Hacer', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (428, N'Reproducir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (429, N'Traducir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (430, N'Entregar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (431, N'Conducir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (432, N'Direccionar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (433, N'Reparar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (434, N'Componer', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (435, N'Reemplazar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (436, N'Sustituir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (437, N'Reponer', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (438, N'Colocar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (439, N'Ubicar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (440, N'Ejecutar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (441, N'Correr', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (442, N'Llevar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (443, N'Manejar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (444, N'Seguir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (445, N'Trasladar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (446, N'Implementar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (447, N'Esculpir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (448, N'Entallar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (449, N'Servir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (450, N'Coser', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (451, N'Soldar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (452, N'Clasificar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (453, N'Ordenar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (454, N'Arreglar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (455, N'Extender', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (456, N'Ensanchar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (457, N'Preguntar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (458, N'Mover', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (459, N'Balancear', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (460, N'Reconocer', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (461, N'Inspeccionar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (462, N'Diseñar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (463, N'Sincronizar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (464, N'Verificar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (465, N'Validar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (466, N'Revisar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (467, N'Probar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (468, N'Difundir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (469, N'Transmitir', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (470, N'Resolver', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (471, N'Tapizar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (472, N'Usar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (473, N'Emplear', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (474, N'Utilizar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (475, N'Ponderar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (476, N'Mecanizar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (477, N'Industrializar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (478, N'Codificar', 10)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (479, N'Hacer', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (480, N'Conducir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (481, N'Dirigir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (482, N'Direccionar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (483, N'Aplicar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (484, N'Manejar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (485, N'Guiar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (486, N'Realizar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (487, N'Emplear', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (488, N'Aceptar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (489, N'Admitir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (490, N'Evaluar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (491, N'Valorar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (492, N'Apreciar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (493, N'Tasar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (494, N'Estimar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (495, N'Preguntar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (496, N'Interrogar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (497, N'Publicar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (498, N'Asistir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (499, N'Atender', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (500, N'Servir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (501, N'Ocupar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (502, N'Elegir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (503, N'Escoger', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (504, N'Seleccionar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (505, N'Escuchar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (506, N'Anotar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (507, N'Observar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (508, N'Cumplir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (509, N'Examinar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (510, N'Usar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (511, N'Decir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (512, N'Apreciar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (513, N'Distinguir', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (514, N'Detectar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (515, N'Clasificar', 11)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (516, N'Aprobar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (517, N'Autorizar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (518, N'Demostrar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (519, N'Afirmar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (520, N'Asegurar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (521, N'Hacer', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (522, N'Comunicar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (523, N'Hablar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (524, N'Discutir', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (525, N'Cooperar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (526, N'Colaborar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (527, N'Actuar recíprocamente', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (528, N'Obrar recíprocamente', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (529, N'Recitar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (530, N'Decir', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (531, N'Enumerar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (532, N'Narrar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (533, N'Referir', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (534, N'Resolver', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (535, N'Acordar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (536, N'Seleccionar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (537, N'Elegir', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (538, N'Escoger', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (539, N'Clasificar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (540, N'Contar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (541, N'Informar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (542, N'Indicar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (543, N'Distinguir', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (544, N'Relatar', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (545, N'Conocer', 12)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (546, N'Adoptar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (547, N'Aprobar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (548, N'Aceptar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (549, N'Afirmar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (550, N'Ratificar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (551, N'Apreciar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (552, N'Comprender', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (553, N'Agradecer', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (554, N'Estimar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (555, N'Tasar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (556, N'Aspirar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (557, N'Ambicionar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (558, N'Anhelar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (559, N'Creer', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (560, N'Ser partidario de', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (561, N'Cuidar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (562, N'Atender', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (563, N'Asistir', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (564, N'Preocuparse de o por', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (565, N'Elegir', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (566, N'Seleccionar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (567, N'Escoger', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (568, N'Clasificar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (569, N'Convocar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (570, N'Unir', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (571, N'Ensamblar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (572, N'Participar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (573, N'Aunar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (574, N'Proporcionar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (575, N'Estimular', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (576, N'Contribuir', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (577, N'Provocar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (578, N'Compartir', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (579, N'Apoyar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (580, N'Soportar', 13)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (581, N'Extraer', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (582, N'Resumir', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (583, N'Promover', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (584, N'Adelantar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (585, N'Fomentar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (586, N'Anticipar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (587, N'Proponer', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (588, N'Defender', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (589, N'Proteger', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (590, N'Definir', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (591, N'Determinar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (592, N'Considerar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (593, N'Discernir', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (594, N'Percibir', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (595, N'Identificar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (596, N'Reconocer', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (597, N'Formular', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (598, N'Arreglar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (599, N'Preguntar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (600, N'Cuestionar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (601, N'Relacionar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (602, N'Conectar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (603, N'Relatar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (604, N'Revelar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (605, N'Exteriorizar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (606, N'Desplegar', 14)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (607, N'Negociar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (608, N'Ofrecer', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (609, N'Conducir', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (610, N'Comportarse bajo condiciones', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (611, N'Completar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (612, N'Afinar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (613, N'Acabar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (614, N'Terminar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (615, N'Contextualizar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (616, N'Cooperar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (617, N'Colaborar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (618, N'Discriminar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (619, N'Distinguir', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (620, N'Categorizar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (621, N'Juzgar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (622, N'Participar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (623, N'Atender', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (624, N'Servir', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (625, N'Cumplir', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (626, N'Ejercer', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (627, N'Entregar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (628, N'Apoyar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (629, N'Soportar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (630, N'Verificar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (631, N'Constatar', 15)
GO
INSERT [dbo].[Verbos] ([IdVerbo], [Verbo], [IdSubcategoria]) VALUES (632, N'Controlar', 15)
GO
SET IDENTITY_INSERT [dbo].[Verbos] OFF
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Asegurar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Complacer')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Comprender')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Facilitar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Fomentar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Garantizar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Impulsar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Incentivar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Promover')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Propiciar')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Satisfacer')
GO
INSERT [dbo].[Verbos_no_usar] ([verbo]) VALUES (N'Supervisar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Actualizar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Administrar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Asegurar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Asesorar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Auditar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Comunicar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Conducir')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Conocer')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Coordinar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Definir')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Desarrollar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Dirigir')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Diseñar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Dominar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Establecer')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Evaluar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Fiscalizar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Formular')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Generar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Gestionar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Hacer')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Implementar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Liderar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Modelar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Participar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Planear')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Presidir')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Producir')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Resolver')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Sistematizar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Supervisar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Transformar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Validar')
GO
INSERT [dbo].[Verbos_usar] ([verbo]) VALUES (N'Verificar')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Est_mesocurricular_Ac_retroalresultado_ap]    Script Date: 28/11/2024 10:18:22 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Est_mesocurricular_Ac_retroalresultado_ap] ON [dbo].[Est_mesocurricular]
(
	[Ac_retroalresultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Est_mesocurricular_Inst_medicionresultado_ap]    Script Date: 28/11/2024 10:18:22 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_Est_mesocurricular_Inst_medicionresultado_ap] ON [dbo].[Est_mesocurricular]
(
	[Inst_medicionresultado_ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_perfil_egreso_Res_aprendizajeid_resultado]    Script Date: 28/11/2024 10:18:22 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_perfil_egreso_Res_aprendizajeid_resultado] ON [dbo].[perfil_egreso]
(
	[Res_aprendizajeid_resultado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Verbos_n__22C0FF8AAF3ADC14]    Script Date: 28/11/2024 10:18:22 p. m. ******/
ALTER TABLE [dbo].[Verbos_no_usar] ADD UNIQUE NONCLUSTERED 
(
	[verbo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Verbos_u__22C0FF8ABE860530]    Script Date: 28/11/2024 10:18:22 p. m. ******/
ALTER TABLE [dbo].[Verbos_usar] ADD UNIQUE NONCLUSTERED 
(
	[verbo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Est_mesocurricular]  WITH CHECK ADD  CONSTRAINT [FK_Est_mesocurricular_Ac_retroal_Ac_retroalresultado_ap] FOREIGN KEY([Ac_retroalresultado_ap])
REFERENCES [dbo].[Ac_retroal] ([resultado_ap])
GO
ALTER TABLE [dbo].[Est_mesocurricular] CHECK CONSTRAINT [FK_Est_mesocurricular_Ac_retroal_Ac_retroalresultado_ap]
GO
ALTER TABLE [dbo].[Est_mesocurricular]  WITH CHECK ADD  CONSTRAINT [FK_Est_mesocurricular_Ind_impacto_resultado_ap] FOREIGN KEY([resultado_ap])
REFERENCES [dbo].[Ind_impacto] ([resultado_ap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Est_mesocurricular] CHECK CONSTRAINT [FK_Est_mesocurricular_Ind_impacto_resultado_ap]
GO
ALTER TABLE [dbo].[Est_mesocurricular]  WITH CHECK ADD  CONSTRAINT [FK_Est_mesocurricular_Inst_medicion_Inst_medicionresultado_ap] FOREIGN KEY([Inst_medicionresultado_ap])
REFERENCES [dbo].[Inst_medicion] ([resultado_ap])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Est_mesocurricular] CHECK CONSTRAINT [FK_Est_mesocurricular_Inst_medicion_Inst_medicionresultado_ap]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_AProfesional_id] FOREIGN KEY([id])
REFERENCES [dbo].[AProfesional] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_AProfesional_id]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_ATProfesionales_id] FOREIGN KEY([id])
REFERENCES [dbo].[ATProfesionales] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_ATProfesionales_id]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_Competencias_id] FOREIGN KEY([id])
REFERENCES [dbo].[Competencias] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_Competencias_id]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_PActuacion_id] FOREIGN KEY([id])
REFERENCES [dbo].[PActuacion] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_PActuacion_id]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_Res_aprendizaje_Res_aprendizajeid_resultado] FOREIGN KEY([Res_aprendizajeid_resultado])
REFERENCES [dbo].[Res_aprendizaje] ([id_resultado])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_Res_aprendizaje_Res_aprendizajeid_resultado]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_Saber_id] FOREIGN KEY([id])
REFERENCES [dbo].[Saber] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_Saber_id]
GO
ALTER TABLE [dbo].[perfil_egreso]  WITH CHECK ADD  CONSTRAINT [FK_perfil_egreso_VAgregado_id] FOREIGN KEY([id])
REFERENCES [dbo].[VAgregado] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[perfil_egreso] CHECK CONSTRAINT [FK_perfil_egreso_VAgregado_id]
GO
ALTER TABLE [dbo].[Subcategorias]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Verbos]  WITH CHECK ADD FOREIGN KEY([IdSubcategoria])
REFERENCES [dbo].[Subcategorias] ([IdSubcategoria])
GO
USE [master]
GO
ALTER DATABASE [Proyecto C] SET  READ_WRITE 
GO
