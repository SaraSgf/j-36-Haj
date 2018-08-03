USE [malaa]
GO

/****** Object:  Table [dbo].[arfaa_details]    Script Date: 8/2/2018 5:41:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[arfaa_details](
	[arfaa_sector_ID] [int] IDENTITY(1,1) NOT NULL,
	[arfaa_sector_name] [nvarchar](max) NOT NULL,
	[AS_total_capacity] [int] NULL,
	[AS_current_capacity] [int] NULL,
 CONSTRAINT [PK_arfaa_details] PRIMARY KEY CLUSTERED 
(
	[arfaa_sector_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[haram_gates_details](
	[haram_gate_ID] [int] IDENTITY(1,1) NOT NULL,
	[haram_gate_name] [nvarchar](max) NULL,
	[HG_total_capacity] [int] NULL,
	[HG_current_capacity] [int] NULL,
	[haram_gate_state] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_haram_gates_details] PRIMARY KEY CLUSTERED 
(
	[haram_gate_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[jamarat_details](
	[jamarat_floor_ID] [int] NOT NULL,
	[jamarat_floor_name] [nvarchar](max) NOT NULL,
	[JF_total_capacity] [int] NULL,
	[JF_current_capacity] [int] NULL,
 CONSTRAINT [PK_jamarat_details] PRIMARY KEY CLUSTERED 
(
	[jamarat_floor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mina_details](
	[mina_sector_ID] [int] IDENTITY(1,1) NOT NULL,
	[mina_sector_name] [nvarchar](max) NOT NULL,
	[MS_total_capacity] [int] NULL,
	[MS_current_capacity] [int] NULL,
 CONSTRAINT [PK_mina_details] PRIMARY KEY CLUSTERED 
(
	[mina_sector_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[mozdalifa_details](
	[mozdalifa_sector_ID] [int] IDENTITY(1,1) NOT NULL,
	[mozdalifa_sector_name] [nvarchar](max) NOT NULL,
	[MS_total_capacity] [int] NULL,
	[MS_current_capacity] [int] NULL,
 CONSTRAINT [PK_mozdalifa_details] PRIMARY KEY CLUSTERED 
(
	[mozdalifa_sector_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[place](
	[places_ID] [int] IDENTITY(11,11) NOT NULL,
	[place_name] [nvarchar](max) NULL,
	[total_capacity] [int] NOT NULL,
	[state] [nvarchar](max) NOT NULL,
	[current_capacity] [int] NULL,
 CONSTRAINT [PK_place] PRIMARY KEY CLUSTERED 
(
	[places_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[saai_details](
	[saai_floor_ID] [int] IDENTITY(1,1) NOT NULL,
	[saai_floor_name] [nvarchar](max) NOT NULL,
	[saai_total_capacity] [int] NULL,
	[saai_current_capacity] [int] NULL,
 CONSTRAINT [PK_saai_details] PRIMARY KEY CLUSTERED 
(
	[saai_floor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[tawaf_details](
	[tawaf_floor_ID] [int] IDENTITY(1,1) NOT NULL,
	[tawaf_floor_name] [nvarchar](max) NOT NULL,
	[tawaf_total_capacity] [int] NULL,
	[tawaf_current_capacity] [int] NULL,
 CONSTRAINT [PK_tawaf_details] PRIMARY KEY CLUSTERED 
(
	[tawaf_floor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[users](
	[user_ID] [int] NOT NULL,
	[email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO