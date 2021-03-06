USE [master]
GO
/****** Object:  Database [LayIM]    Script Date: 06/19/2017 12:46:09 ******/
CREATE DATABASE [LayIM] ON  PRIMARY 
( NAME = N'LayIM', FILENAME = N'D:\Microsoft SQL Server\LayIM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LayIM_log', FILENAME = N'D:\Microsoft SQL Server\LayIM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LayIM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LayIM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LayIM] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LayIM] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LayIM] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LayIM] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LayIM] SET ARITHABORT OFF
GO
ALTER DATABASE [LayIM] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [LayIM] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LayIM] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LayIM] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LayIM] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LayIM] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LayIM] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LayIM] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LayIM] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LayIM] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LayIM] SET  DISABLE_BROKER
GO
ALTER DATABASE [LayIM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LayIM] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LayIM] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LayIM] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LayIM] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LayIM] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LayIM] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LayIM] SET  READ_WRITE
GO
ALTER DATABASE [LayIM] SET RECOVERY FULL
GO
ALTER DATABASE [LayIM] SET  MULTI_USER
GO
ALTER DATABASE [LayIM] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LayIM] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'LayIM', N'ON'
GO
USE [LayIM]
GO
/****** Object:  Schema [LayIM]    Script Date: 06/19/2017 12:46:09 ******/
CREATE SCHEMA [LayIM] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[user]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[name] [varchar](10) NOT NULL,
	[sign] [varchar](100) NOT NULL,
	[avatar] [varchar](150) NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[friend_group_detail]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friend_group_detail](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[group_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_friend_group_detail] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[friend_group]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[friend_group](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[name] [varchar](10) NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_friend_group] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chat_msg]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chat_msg](
	[pk_id] [uniqueidentifier] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[room_id] [varchar](20) NOT NULL,
	[msg] [varchar](2000) NOT NULL,
	[create_at] [datetime] NOT NULL,
	[timestamp] [bigint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[big_group_detail]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[big_group_detail](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[group_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_big_group_detail] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[big_group]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[big_group](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[name] [varchar](20) NOT NULL,
	[avatar] [varchar](200) NOT NULL,
	[description] [varchar](200) NULL,
	[owner_id] [bigint] NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_big_group] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[apply_summary]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apply_summary](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[apply_count] [int] NOT NULL,
	[create_at] [datetime] NOT NULL,
	[update_at] [datetime] NOT NULL,
 CONSTRAINT [PK_apply_summary] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply_summary', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'待审批条数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply_summary', @level2type=N'COLUMN',@level2name=N'apply_count'
GO
/****** Object:  Table [dbo].[apply]    Script Date: 06/19/2017 12:46:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[apply](
	[pk_id] [bigint] IDENTITY(100000,1) NOT NULL,
	[apply_uid] [bigint] NOT NULL,
	[apply_tid] [bigint] NOT NULL,
	[type] [tinyint] NOT NULL,
	[group_id] [bigint] NOT NULL,
	[isread] [bit] NOT NULL,
	[other] [varchar](25) NOT NULL,
	[result] [tinyint] NOT NULL,
	[create_at] [datetime] NOT NULL,
 CONSTRAINT [PK_apply] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'apply_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被申请人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'apply_tid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 申请成为好友 1 申请加群' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请群的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'group_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'isread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果 0 未处理 1 同意 2 拒绝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'apply', @level2type=N'COLUMN',@level2name=N'result'
GO
/****** Object:  Default [DF_user_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [DF_user_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_friend_group_detail_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[friend_group_detail] ADD  CONSTRAINT [DF_friend_group_detail_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_friend_group_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[friend_group] ADD  CONSTRAINT [DF_friend_group_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_chat_msg_pk_id]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[chat_msg] ADD  CONSTRAINT [DF_chat_msg_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
/****** Object:  Default [DF_chat_msg_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[chat_msg] ADD  CONSTRAINT [DF_chat_msg_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_chat_msg_timestamp]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[chat_msg] ADD  CONSTRAINT [DF_chat_msg_timestamp]  DEFAULT ((0)) FOR [timestamp]
GO
/****** Object:  Default [DF_big_group_detail_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[big_group_detail] ADD  CONSTRAINT [DF_big_group_detail_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_big_group_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[big_group] ADD  CONSTRAINT [DF_big_group_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_apply_summary_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[apply_summary] ADD  CONSTRAINT [DF_apply_summary_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
/****** Object:  Default [DF_apply_summary_update_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[apply_summary] ADD  CONSTRAINT [DF_apply_summary_update_at]  DEFAULT (getdate()) FOR [update_at]
GO
/****** Object:  Default [DF_apply_groupid]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[apply] ADD  CONSTRAINT [DF_apply_groupid]  DEFAULT ((0)) FOR [group_id]
GO
/****** Object:  Default [DF_apply_create_at]    Script Date: 06/19/2017 12:46:11 ******/
ALTER TABLE [dbo].[apply] ADD  CONSTRAINT [DF_apply_create_at]  DEFAULT (getdate()) FOR [create_at]
GO
