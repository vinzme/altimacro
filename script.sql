USE [VMSSUP_TEST]
GO
/****** Object:  Table [dbo].[visible]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visible](
	[Visible_id] [int] NOT NULL,
	[visible_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[Uid] [int] NOT NULL,
	[Uname] [nvarchar](30) NULL,
	[Name] [nvarchar](50) NULL,
	[Uemail] [nvarchar](50) NULL,
	[is_ccb] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_history]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_history](
	[ticket_history_id] [int] IDENTITY(1,1) NOT NULL,
	[Req_category] [int] NULL,
	[Req_type] [int] NULL,
	[Req_approved] [nvarchar](50) NULL,
	[Follow_up_date] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[ETA_date] [datetime] NULL,
	[Representative] [int] NULL,
	[BackupRepresentative] [int] NULL,
	[Last_updated_date] [datetime] NULL,
	[Last_updated_by] [nvarchar](50) NULL,
	[Ticket_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Template](
	[File_id] [int] IDENTITY(1,1) NOT NULL,
	[File_Name] [varbinary](50) NULL,
	[File_type] [varbinary](50) NULL,
	[Request_id] [int] NULL,
	[data] [varchar](max) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblticket]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblticket](
	[Ticket_id] [bigint] IDENTITY(1,1) NOT NULL,
	[Req_name] [nvarchar](50) NULL,
	[Req_netid] [nvarchar](50) NULL,
	[Req_email] [nvarchar](50) NULL,
	[Req_ext] [nvarchar](50) NULL,
	[Req_dept] [nvarchar](50) NULL,
	[Req_approved] [nvarchar](50) NULL,
	[Created] [datetime] NULL,
	[ETA_date] [datetime] NULL,
	[Piority] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[Req_category] [int] NULL,
	[Req_type] [int] NULL,
	[Follow_up_date] [datetime] NULL,
	[Req_comments] [nvarchar](max) NULL,
	[Representative] [int] NULL,
	[BackupRepresentative] [int] NULL,
	[Closed] [datetime] NULL,
	[Last_updated_by] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblticket] PRIMARY KEY CLUSTERED 
(
	[Ticket_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Status_ID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request1]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Request1](
	[Request_id] [int] NOT NULL,
	[Request_category] [int] NULL,
	[Request_type] [varchar](50) NULL,
	[SLA] [int] NULL,
	[Representative] [int] NULL,
	[BackUpRepresentative] [int] NULL,
	[is_vmssupport] [int] NULL,
	[old_Request_category] [int] NULL,
	[is_active] [bit] NULL,
	[is_default_training] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ref_piority]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_piority](
	[piority_id] [int] NOT NULL,
	[ccbpiority] [nchar](10) NULL,
	[vmspiority] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_ccbstatus]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_ccbstatus](
	[ccbstatus_id] [int] NOT NULL,
	[ccbstatus] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ref_bool]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ref_bool](
	[bool_id] [int] NOT NULL,
	[bool] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Files](
	[File_id] [int] IDENTITY(1,1) NOT NULL,
	[File_Name] [nvarchar](max) NULL,
	[File_type] [varchar](50) NULL,
	[Ticket_id] [int] NULL,
	[data] [varchar](max) NULL,
	[ccbid] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Comment_id] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[Ticket_id] [int] NULL,
	[Update_by] [nvarchar](50) NULL,
	[Comment_date] [datetime] NULL,
	[Visible_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ccbcomment]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ccbcomment](
	[ccbcomment_id] [int] NOT NULL,
	[ccbcoordcomment] [nvarchar](max) NULL,
	[ccbmembername] [nvarchar](max) NULL,
	[ccbcomment] [nvarchar](max) NULL,
	[Last_update] [nvarchar](50) NULL,
	[ccbid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ccb_request_backup]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ccb_request_backup](
	[ccbid] [bigint] NOT NULL,
	[ccbReq_name] [nvarchar](50) NULL,
	[ccbReq_netid] [nvarchar](50) NULL,
	[ccbReq_email] [nvarchar](50) NULL,
	[ccbReq_ext] [nvarchar](50) NULL,
	[ccbReq_dept] [nvarchar](50) NULL,
	[ccbReq_location] [nvarchar](50) NULL,
	[ccbReq_category] [int] NULL,
	[ccbReq_type] [int] NULL,
	[ccbpiority] [int] NULL,
	[ccbchangetitle] [nvarchar](max) NULL,
	[ccbcreated] [datetime] NULL,
	[ccbimplementation] [datetime] NULL,
	[ccb_description_impact] [nvarchar](max) NULL,
	[ccb_implication_NMC] [nvarchar](max) NULL,
	[ccb_ppi_up_downstrem] [nvarchar](max) NULL,
	[ccb_cost_implications] [nvarchar](max) NULL,
	[ccbsop] [int] NULL,
	[ccbtraining] [int] NULL,
	[ccbaxentis] [int] NULL,
	[ccbvendorguide] [int] NULL,
	[ccbvendortraining] [int] NULL,
	[ccblistimpactsop] [nvarchar](max) NULL,
	[ccb_status] [int] NULL,
	[Recom_implementation_date] [datetime] NULL,
	[Last_update] [nvarchar](50) NULL,
	[statuscomment] [nvarchar](max) NULL,
	[ccb_request_number] [nvarchar](205) NULL,
	[vms_request_types] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ccb_request]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ccb_request](
	[ccbid] [bigint] IDENTITY(1,1) NOT NULL,
	[ccbReq_name] [nvarchar](50) NULL,
	[ccbReq_netid] [nvarchar](50) NULL,
	[ccbReq_email] [nvarchar](50) NULL,
	[ccbReq_ext] [nvarchar](50) NULL,
	[ccbReq_dept] [nvarchar](50) NULL,
	[ccbReq_location] [nvarchar](50) NULL,
	[ccbReq_category] [int] NULL,
	[ccbReq_type] [int] NULL,
	[ccbpiority] [int] NULL,
	[ccbchangetitle] [nvarchar](max) NULL,
	[ccbcreated] [datetime] NULL,
	[ccbimplementation] [datetime] NULL,
	[ccb_description_impact] [nvarchar](max) NULL,
	[ccb_implication_NMC] [nvarchar](max) NULL,
	[ccb_ppi_up_downstrem] [nvarchar](max) NULL,
	[ccb_cost_implications] [nvarchar](max) NULL,
	[ccbsop] [int] NULL,
	[ccbtraining] [int] NULL,
	[ccbaxentis] [int] NULL,
	[ccbvendorguide] [int] NULL,
	[ccbvendortraining] [int] NULL,
	[ccblistimpactsop] [nvarchar](max) NULL,
	[ccb_status] [int] NULL,
	[Recom_implementation_date] [datetime] NULL,
	[Last_update] [nvarchar](50) NULL,
	[statuscomment] [nvarchar](max) NULL,
	[ccb_request_number] [nvarchar](205) NULL,
	[vms_request_types] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 06/01/2017 03:46:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[Category_id] [int] NOT NULL,
	[Category_Name] [varchar](50) NULL,
	[is_active] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
