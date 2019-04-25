USE [master]
GO

/****** Object:  Database [SSPA]    Script Date: 25-04-2019 15:58:34 ******/
CREATE DATABASE [SSPA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSPA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SSPA.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SSPA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SSPA_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [SSPA] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSPA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSPA] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSPA] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSPA] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSPA] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSPA] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSPA] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSPA] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [SSPA] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSPA] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSPA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSPA] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSPA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSPA] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSPA] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSPA] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSPA] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSPA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSPA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSPA] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSPA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSPA] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSPA] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSPA] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSPA] SET RECOVERY FULL 
GO

ALTER DATABASE [SSPA] SET  MULTI_USER 
GO

ALTER DATABASE [SSPA] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSPA] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSPA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSPA] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [SSPA] SET  READ_WRITE 
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[accademics]    Script Date: 25-04-2019 15:59:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[accademics](
	[proid] [varchar](50) NOT NULL,
	[highqual] [varchar](50) NULL,
	[pg_course] [varchar](50) NULL,
	[pg_clg] [varchar](50) NULL,
	[pg_status] [varchar](50) NULL,
	[pg_yop] [varchar](50) NULL,
	[pg_perc] [float] NULL,
	[ug_course] [varchar](50) NULL,
	[ug_clg] [varchar](50) NULL,
	[ug_yop] [varchar](50) NULL,
	[ug_perc] [float] NULL,
	[ug_university] [varchar](50) NULL,
	[dip_course] [varchar](50) NULL,
	[dip_clg] [varchar](50) NULL,
	[dip_university] [varchar](50) NULL,
	[dip_yop] [varchar](50) NULL,
	[dip_perc] [float] NULL,
	[hse] [varchar](50) NULL,
	[hse_board] [varchar](50) NULL,
	[hse_school] [varchar](50) NULL,
	[hse_yop] [varchar](50) NULL,
	[hse_perc] [float] NULL,
	[sslc_board] [varchar](50) NULL,
	[sslc_school] [varchar](50) NULL,
	[sslc_yop] [varchar](50) NULL,
	[sslc_perc] [float] NULL,
 CONSTRAINT [PK_accademics] PRIMARY KEY CLUSTERED 
(
	[proid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[blood]    Script Date: 25-04-2019 15:59:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[blood](
	[proid] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[blood] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[mob] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_blood] PRIMARY KEY CLUSTERED 
(
	[proid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[OrgReg]    Script Date: 25-04-2019 15:59:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OrgReg](
	[oid] [varchar](50) NOT NULL,
	[oname] [varchar](50) NOT NULL,
	[otyp] [varchar](50) NOT NULL,
	[oloc] [varchar](50) NOT NULL,
	[ocontact] [varchar](50) NOT NULL,
	[website] [varchar](50) NOT NULL,
	[o_uname] [varchar](50) NOT NULL,
	[o_pswd] [varchar](50) NOT NULL,
	[o_repass] [varchar](50) NOT NULL,
 CONSTRAINT [PK_OrgReg] PRIMARY KEY CLUSTERED 
(
	[oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
USE [SSPA]
GO

/****** Object:  Table [dbo].[Profile]    Script Date: 25-04-2019 16:00:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Profile](
	[pro_id] [varchar](50) NOT NULL,
	[prefix] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[dob] [varchar](50) NOT NULL,
	[occupation] [varchar](50) NOT NULL,
	[nation] [varchar](50) NOT NULL,
	[blood] [varchar](50) NOT NULL,
	[hgt] [varchar](50) NOT NULL,
	[wgt] [varchar](50) NOT NULL,
	[contact] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[propic] [varchar](max) NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[pro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[ProfileJob]    Script Date: 25-04-2019 16:00:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ProfileJob](
	[proid] [varchar](50) NOT NULL,
	[job] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[salary] [varchar](50) NULL,
	[location] [varchar](max) NULL,
	[experience] [varchar](50) NULL,
 CONSTRAINT [PK_ProfileJob] PRIMARY KEY CLUSTERED 
(
	[proid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO
USE [SSPA]
GO

/****** Object:  Table [dbo].[Request]    Script Date: 25-04-2019 16:00:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Request](
	[reqid] [varchar](50) NOT NULL,
	[subject] [varchar](50) NOT NULL,
	[reqdate] [varchar](50) NOT NULL,
	[request] [varchar](50) NOT NULL,
	[reqtype] [varchar](50) NOT NULL,
	[cost] [varchar](50) NOT NULL,
	[closingdate] [varchar](50) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[clientid] [varchar](50) NOT NULL,
	[attachments] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[reqid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[social_activity]    Script Date: 25-04-2019 16:01:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[social_activity](
	[proid] [varchar](50) NOT NULL,
	[clubmem] [varchar](50) NOT NULL,
	[clubs] [varchar](50) NOT NULL,
	[soc_actm] [varchar](50) NOT NULL,
	[social_activities_categ] [varchar](max) NOT NULL,
	[blooddon] [varchar](50) NOT NULL,
 CONSTRAINT [PK_social_activity] PRIMARY KEY CLUSTERED 
(
	[proid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SSPA]
GO

/****** Object:  Table [dbo].[tbl_login]    Script Date: 25-04-2019 16:01:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_login](
	[uid] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[usertype] [varchar](50) NOT NULL,
	[userid] [int] NOT NULL,
	[LOGG] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_login] ADD  DEFAULT ((0)) FOR [LOGG]
GO
USE [SSPA]
GO

/****** Object:  Table [dbo].[user_reg]    Script Date: 25-04-2019 16:01:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[user_reg](
	[uid] [int] NOT NULL,
	[fname] [varchar](50) NOT NULL,
	[lname] [varchar](50) NOT NULL,
	[occupation] [varchar](50) NOT NULL,
	[gender] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[mob] [varchar](50) NOT NULL,
	[uname] [varchar](50) NOT NULL,
	[pass1] [varchar](50) NOT NULL,
	[pass2] [varchar](50) NOT NULL,
 CONSTRAINT [PK_user_reg] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO





