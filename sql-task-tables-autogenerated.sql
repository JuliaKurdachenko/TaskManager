USE [tasks]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 04.09.2017 12:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tasks]    Script Date: 04.09.2017 12:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[status] [nvarchar](max) NOT NULL,
	[project_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[projects] ON 

GO
INSERT [dbo].[projects] ([id], [name]) VALUES (1, N'Proj1')
GO
INSERT [dbo].[projects] ([id], [name]) VALUES (2, N'Garage')
GO
INSERT [dbo].[projects] ([id], [name]) VALUES (3, N'Proj7')
GO
INSERT [dbo].[projects] ([id], [name]) VALUES (4, N'aProj')
GO
SET IDENTITY_INSERT [dbo].[projects] OFF
GO
SET IDENTITY_INSERT [dbo].[tasks] ON 

GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (1, N'T1', N'in progress', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (2, N'T2', N'done', 2)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (3, N'T3', N'in progress', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (4, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (5, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (6, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (7, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (8, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (9, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (10, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (11, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (12, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (13, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (14, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (15, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (16, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (17, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (18, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (19, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (20, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (21, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (22, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (23, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (24, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (25, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (26, N'T3', N'completed', 1)
GO
INSERT [dbo].[tasks] ([id], [name], [status], [project_id]) VALUES (27, N'T3', N'completed', 1)
GO
SET IDENTITY_INSERT [dbo].[tasks] OFF
GO
