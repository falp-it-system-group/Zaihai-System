USE [zaihai_db]
GO
ALTER TABLE [dbo].[t_applicator_list] DROP CONSTRAINT [DF_t_applicator_list_date_updated]
GO
ALTER TABLE [dbo].[t_applicator_in_out] DROP CONSTRAINT [DF_t_applicator_in_out_date_time_out]
GO
ALTER TABLE [dbo].[t_applicator_c] DROP CONSTRAINT [DF_t_applicator_c_cross_section_result]
GO
ALTER TABLE [dbo].[t_applicator_c] DROP CONSTRAINT [DF_t_applicator_c_adjustment_content]
GO
ALTER TABLE [dbo].[t_applicator_c] DROP CONSTRAINT [DF_t_applicator_c_machine_no]
GO
ALTER TABLE [dbo].[t_applicator_c] DROP CONSTRAINT [DF_t_applicator_c_equipment_no]
GO
ALTER TABLE [dbo].[m_applicator] DROP CONSTRAINT [DF_m_applicator_date_updated]
GO
ALTER TABLE [dbo].[m_accounts] DROP CONSTRAINT [DF_m_accounts_date_updated]
GO
/****** Object:  Index [IX_terminal_name_aio]    Script Date: 2024/07/11 2:36:09 pm ******/
DROP INDEX [IX_terminal_name_aio] ON [dbo].[t_applicator_in_out]
GO
/****** Object:  Index [IX_applicator_no_aio]    Script Date: 2024/07/11 2:36:09 pm ******/
DROP INDEX [IX_applicator_no_aio] ON [dbo].[t_applicator_in_out]
GO
/****** Object:  Table [dbo].[t_applicator_list]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_applicator_list]') AND type in (N'U'))
DROP TABLE [dbo].[t_applicator_list]
GO
/****** Object:  Table [dbo].[t_applicator_in_out_history]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_applicator_in_out_history]') AND type in (N'U'))
DROP TABLE [dbo].[t_applicator_in_out_history]
GO
/****** Object:  Table [dbo].[t_applicator_in_out]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_applicator_in_out]') AND type in (N'U'))
DROP TABLE [dbo].[t_applicator_in_out]
GO
/****** Object:  Table [dbo].[t_applicator_c]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_applicator_c]') AND type in (N'U'))
DROP TABLE [dbo].[t_applicator_c]
GO
/****** Object:  Table [dbo].[m_applicator]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_applicator]') AND type in (N'U'))
DROP TABLE [dbo].[m_applicator]
GO
/****** Object:  Table [dbo].[m_accounts]    Script Date: 2024/07/11 2:36:09 pm ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[m_accounts]') AND type in (N'U'))
DROP TABLE [dbo].[m_accounts]
GO
USE [master]
GO
/****** Object:  Database [zaihai_db]    Script Date: 2024/07/11 2:36:09 pm ******/
DROP DATABASE [zaihai_db]
GO
/****** Object:  Database [zaihai_db]    Script Date: 2024/07/11 2:36:09 pm ******/
CREATE DATABASE [zaihai_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'zaihai_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\zaihai_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'zaihai_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\zaihai_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [zaihai_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [zaihai_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [zaihai_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [zaihai_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [zaihai_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [zaihai_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [zaihai_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [zaihai_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [zaihai_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [zaihai_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [zaihai_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [zaihai_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [zaihai_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [zaihai_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [zaihai_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [zaihai_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [zaihai_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [zaihai_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [zaihai_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [zaihai_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [zaihai_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [zaihai_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [zaihai_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [zaihai_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [zaihai_db] SET  MULTI_USER 
GO
ALTER DATABASE [zaihai_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [zaihai_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [zaihai_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [zaihai_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [zaihai_db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [zaihai_db]
GO
/****** Object:  Table [dbo].[m_accounts]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_accounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[emp_no] [nvarchar](255) NOT NULL,
	[full_name] [nvarchar](255) NOT NULL,
	[role] [nvarchar](255) NOT NULL,
	[date_updated] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_m_accounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_emp_no] UNIQUE NONCLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[m_applicator]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_applicator](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[applicator_no] [nvarchar](100) NOT NULL,
	[terminal_name] [nvarchar](100) NOT NULL,
	[date_updated] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_m_applicator] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_applicator_no_terminal_name] UNIQUE NONCLUSTERED 
(
	[applicator_no] ASC,
	[terminal_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_applicator_c]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_applicator_c](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serial_no] [nvarchar](255) NOT NULL,
	[equipment_no] [nvarchar](255) NOT NULL,
	[machine_no] [nvarchar](255) NOT NULL,
	[terminal_name] [nvarchar](100) NOT NULL,
	[inspection_date_time] [datetime2](2) NOT NULL,
	[inspection_shift] [nvarchar](5) NOT NULL,
	[adjustment_content] [nvarchar](255) NULL,
	[cross_section_result] [int] NULL,
	[inspected_by] [nvarchar](255) NOT NULL,
	[inspected_by_no] [nvarchar](255) NOT NULL,
	[checked_by] [nvarchar](255) NULL,
	[checked_by_no] [nvarchar](255) NULL,
	[confirmed_by] [nvarchar](255) NULL,
	[confirmed_by_no] [nvarchar](255) NULL,
	[judgement] [int] NULL,
	[ac1] [int] NOT NULL,
	[ac1_s] [nvarchar](255) NULL,
	[ac1_r] [nvarchar](255) NULL,
	[ac2] [int] NOT NULL,
	[ac2_s] [nvarchar](255) NULL,
	[ac2_r] [nvarchar](255) NULL,
	[ac3] [int] NOT NULL,
	[ac3_s] [nvarchar](255) NULL,
	[ac3_r] [nvarchar](255) NULL,
	[ac4] [int] NOT NULL,
	[ac4_s] [nvarchar](255) NULL,
	[ac4_r] [nvarchar](255) NULL,
	[ac5] [int] NOT NULL,
	[ac5_s] [nvarchar](255) NULL,
	[ac5_r] [nvarchar](255) NULL,
	[ac6] [int] NOT NULL,
	[ac6_s] [nvarchar](255) NULL,
	[ac6_r] [nvarchar](255) NULL,
	[ac7] [int] NOT NULL,
	[ac7_s] [nvarchar](255) NULL,
	[ac7_r] [nvarchar](255) NULL,
	[ac8] [int] NOT NULL,
	[ac8_s] [nvarchar](255) NULL,
	[ac8_r] [nvarchar](255) NULL,
	[ac9] [int] NOT NULL,
	[ac9_s] [nvarchar](255) NULL,
	[ac9_r] [nvarchar](255) NULL,
	[ac10] [int] NOT NULL,
	[ac10_s] [nvarchar](255) NULL,
	[ac10_r] [nvarchar](255) NULL,
 CONSTRAINT [PK_t_applicator_c] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_serial_no_ac] UNIQUE NONCLUSTERED 
(
	[serial_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_applicator_in_out]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_applicator_in_out](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serial_no] [nvarchar](255) NOT NULL,
	[applicator_no] [nvarchar](100) NOT NULL,
	[terminal_name] [nvarchar](100) NOT NULL,
	[trd_no] [nvarchar](255) NOT NULL,
	[operator_out] [nvarchar](255) NOT NULL,
	[date_time_out] [datetime2](2) NOT NULL,
	[zaihai_stock_address] [nvarchar](255) NULL,
	[operator_in] [nvarchar](255) NULL,
	[date_time_in] [datetime2](2) NULL,
 CONSTRAINT [PK_t_applicator_in_out] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_serial_no_aio] UNIQUE NONCLUSTERED 
(
	[serial_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_applicator_in_out_history]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_applicator_in_out_history](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serial_no] [nvarchar](255) NOT NULL,
	[applicator_no] [nvarchar](100) NOT NULL,
	[terminal_name] [nvarchar](100) NOT NULL,
	[trd_no] [nvarchar](255) NOT NULL,
	[operator_out] [nvarchar](255) NOT NULL,
	[date_time_out] [datetime2](2) NOT NULL,
	[zaihai_stock_address] [nvarchar](255) NOT NULL,
	[operator_in] [nvarchar](255) NOT NULL,
	[date_time_in] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_t_applicator_in_out_history] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_serial_no_aioh] UNIQUE NONCLUSTERED 
(
	[serial_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_applicator_list]    Script Date: 2024/07/11 2:36:09 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_applicator_list](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[car_maker] [nvarchar](255) NOT NULL,
	[car_model] [nvarchar](255) NOT NULL,
	[applicator_no] [nvarchar](100) NOT NULL,
	[location] [nvarchar](255) NOT NULL,
	[status] [nvarchar](255) NOT NULL,
	[date_updated] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_t_applicator_list] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_applicator_no_list] UNIQUE NONCLUSTERED 
(
	[applicator_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_applicator_no_aio]    Script Date: 2024/07/11 2:36:09 pm ******/
CREATE NONCLUSTERED INDEX [IX_applicator_no_aio] ON [dbo].[t_applicator_in_out]
(
	[applicator_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_terminal_name_aio]    Script Date: 2024/07/11 2:36:09 pm ******/
CREATE NONCLUSTERED INDEX [IX_terminal_name_aio] ON [dbo].[t_applicator_in_out]
(
	[terminal_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[m_accounts] ADD  CONSTRAINT [DF_m_accounts_date_updated]  DEFAULT (getdate()) FOR [date_updated]
GO
ALTER TABLE [dbo].[m_applicator] ADD  CONSTRAINT [DF_m_applicator_date_updated]  DEFAULT (getdate()) FOR [date_updated]
GO
ALTER TABLE [dbo].[t_applicator_c] ADD  CONSTRAINT [DF_t_applicator_c_equipment_no]  DEFAULT (N'N/A') FOR [equipment_no]
GO
ALTER TABLE [dbo].[t_applicator_c] ADD  CONSTRAINT [DF_t_applicator_c_machine_no]  DEFAULT (N'N/A') FOR [machine_no]
GO
ALTER TABLE [dbo].[t_applicator_c] ADD  CONSTRAINT [DF_t_applicator_c_adjustment_content]  DEFAULT (N'N/A') FOR [adjustment_content]
GO
ALTER TABLE [dbo].[t_applicator_c] ADD  CONSTRAINT [DF_t_applicator_c_cross_section_result]  DEFAULT ((4)) FOR [cross_section_result]
GO
ALTER TABLE [dbo].[t_applicator_in_out] ADD  CONSTRAINT [DF_t_applicator_in_out_date_time_out]  DEFAULT (getdate()) FOR [date_time_out]
GO
ALTER TABLE [dbo].[t_applicator_list] ADD  CONSTRAINT [DF_t_applicator_list_date_updated]  DEFAULT (getdate()) FOR [date_updated]
GO
USE [master]
GO
ALTER DATABASE [zaihai_db] SET  READ_WRITE 
GO
