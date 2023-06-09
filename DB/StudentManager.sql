USE [Student_Manager]
GO
/****** Object:  Table [dbo].[tbl_Class]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Class](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Course_ID] [int] NULL,
	[Teacher_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Course]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Course](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Begin_date] [date] NULL DEFAULT (getdate()),
	[End_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Mark]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Mark](
	[Student_ID] [int] NOT NULL,
	[Sub_ID] [int] NOT NULL,
	[Ex_Date] [date] NOT NULL DEFAULT (getdate()),
	[Mark] [float] NULL,
	[Status] [int] NULL DEFAULT ((3)),
	[Note] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Sub_ID] ASC,
	[Ex_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Student]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Student](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RollNo] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Phone] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[DOB] [date] NULL DEFAULT ('2000/01/01'),
	[Gender] [tinyint] NULL DEFAULT ((1)),
	[img] [nvarchar](100) NULL,
	[Status] [tinyint] NULL DEFAULT ((1)),
	[Class_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Subject]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Subject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[accredit] [int] NULL DEFAULT ((3)),
	[price] [float] NULL DEFAULT ((500)),
	[status] [int] NULL DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Teacher]    Script Date: 20/06/2020 13:43:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Teacher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Phone] [nvarchar](11) NULL,
	[Email] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[DOB] [date] NULL DEFAULT ('1980/01/01'),
	[Status] [tinyint] NULL DEFAULT ((1)),
	[Role_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Class] ON 

INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (2, N'CA1_K1_DNO', 1, 2)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (3, N'CA2_K1_DNO', 3, 1)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (4, N'CA2_K1_DNO', 3, 1)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (5, N'CA2_K2_DNO', 1, 3)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (6, N'CA3_K1_DNO', 1, 3)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (7, N'CA3_K2_DNO', 1, 3)
INSERT [dbo].[tbl_Class] ([ID], [Name], [Course_ID], [Teacher_ID]) VALUES (8, N'CA3_K3_DNO', 1, 3)
SET IDENTITY_INSERT [dbo].[tbl_Class] OFF
SET IDENTITY_INSERT [dbo].[tbl_Course] ON 

INSERT [dbo].[tbl_Course] ([ID], [Name], [Begin_date], [End_date]) VALUES (1, N'Khóa học 1', CAST(N'2016-09-05' AS Date), CAST(N'2020-05-25' AS Date))
INSERT [dbo].[tbl_Course] ([ID], [Name], [Begin_date], [End_date]) VALUES (2, N'Khóa học 2', CAST(N'2017-09-05' AS Date), CAST(N'2021-05-25' AS Date))
INSERT [dbo].[tbl_Course] ([ID], [Name], [Begin_date], [End_date]) VALUES (3, N'Khóa học 3', CAST(N'2018-09-05' AS Date), CAST(N'2022-05-25' AS Date))
INSERT [dbo].[tbl_Course] ([ID], [Name], [Begin_date], [End_date]) VALUES (4, N'Khóa học 4', CAST(N'2019-09-05' AS Date), CAST(N'2023-05-25' AS Date))
INSERT [dbo].[tbl_Course] ([ID], [Name], [Begin_date], [End_date]) VALUES (5, N'Khóa học 5', CAST(N'2020-09-05' AS Date), CAST(N'2024-05-25' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Course] OFF
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 1, CAST(N'2020-04-24' AS Date), 9, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 6, CAST(N'2020-05-24' AS Date), 6, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 8, CAST(N'2020-02-24' AS Date), 1, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 9, CAST(N'2020-01-24' AS Date), 5, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 10, CAST(N'2020-05-24' AS Date), 5, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 11, CAST(N'2020-04-24' AS Date), 8, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (15, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (16, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (17, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (18, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (19, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 1, CAST(N'2020-04-24' AS Date), 8, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 2, CAST(N'2020-04-24' AS Date), 5, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 3, CAST(N'2020-04-24' AS Date), 5, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 4, CAST(N'2020-04-24' AS Date), 6, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 5, CAST(N'2020-04-24' AS Date), 1, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 6, CAST(N'2020-04-24' AS Date), 9, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (20, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (21, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (22, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
GO
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (23, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (24, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (25, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (26, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (27, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (28, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (29, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (30, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (31, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
GO
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (32, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 2, CAST(N'2020-07-15' AS Date), 7, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 2, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 3, CAST(N'2020-02-22' AS Date), 5.5, 1, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 3, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 4, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 4, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 5, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 5, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 6, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 6, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 7, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 7, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 8, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 8, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 9, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 9, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 10, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 10, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 11, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 11, CAST(N'2222-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 12, CAST(N'2000-02-22' AS Date), 0, 3, N'')
INSERT [dbo].[tbl_Mark] ([Student_ID], [Sub_ID], [Ex_Date], [Mark], [Status], [Note]) VALUES (33, 12, CAST(N'2222-02-22' AS Date), 0, 3, N'')
SET IDENTITY_INSERT [dbo].[tbl_Role] ON 

INSERT [dbo].[tbl_Role] ([ID], [Name]) VALUES (1, N'Hiệu trưởng')
INSERT [dbo].[tbl_Role] ([ID], [Name]) VALUES (2, N'Phó hiệu trưởng')
INSERT [dbo].[tbl_Role] ([ID], [Name]) VALUES (3, N'Giảng viên')
INSERT [dbo].[tbl_Role] ([ID], [Name]) VALUES (4, N'Giảng viên thực tập')
SET IDENTITY_INSERT [dbo].[tbl_Role] OFF
SET IDENTITY_INSERT [dbo].[tbl_Student] ON 

INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (15, N'S0001', N'Ngô Thị Anh', N'012332112', N'Le.NT@gmail.com', N'Phạm Văn Đồng, Bắc Từ Liêm, Hà Nội', CAST(N'2004-01-09' AS Date), 2, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (16, N'S0002', N'Ngô Thị Duyên', N'03309134', N'Duyen.NT@gmail.com', N'Lạc Long Quân, Bắc Từ Liêm, Hà Nội', CAST(N'2004-01-27' AS Date), 2, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (17, N'S0003', N'Lê Văn Hải', N'01804288', N'Hai.LV@gmail.com', N'Phạm Văn Đồng, Bắc Từ Liêm, Hà Nội', CAST(N'2004-01-28' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (18, N'S0004', N'Trịnh Văn Mạnh', N'06930886 ', N'Manh.TV@gmail.com', N'Âu Cơ, Bắc Từ Liêm, Hà Nội', CAST(N'2004-02-27' AS Date), 1, N'', 1, 5)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (19, N'S0005', N'Đoạn Văn Trường', N'08169277', N'Truong.DV@gmail.com', N'Khuất Duy Tiến, Nam Từ Liêm, Hà Nội', CAST(N'2004-05-24' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (20, N'S0006', N'Đàm Vĩnh Quang', N'01463691', N'Quang.DV@gmail.com', N', Lê Trọng Tấn, Thanh Xuân, Hà Nội', CAST(N'2004-04-12' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (21, N'S0007', N'Hạ Như Quỳnh', N'04238335', N'Quynh.HN@gmail.com', N'Định Công, Hoàng Mai, Hà Nội', CAST(N'2004-09-11' AS Date), 2, N'', 1, 3)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (22, N'S0008', N'Trần Bảo Ý', N'0785386', N'Bao_Y.TB@gmail.com', N'Nguyễn Trãi, Thanh Xuân, Hà Nội', CAST(N'2004-12-23' AS Date), 2, N'', 1, 3)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (23, N'S0009', N'Hạ Liên Liên', N'0976049', N'Lien.HLL@gmail.com', N'Nhân Chính, Thanh Xuân, Hà Nội', CAST(N'2004-11-11' AS Date), 2, N'', 1, 3)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (24, N'S0010', N'Hà Như Yên', N'0516649', N'Yen.HN@gmail.com', N'Trung Hòa, Thanh Xuân, Hà Nội', CAST(N'2004-03-09' AS Date), 2, N'', 1, 5)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (25, N'S0011', N'Nguyễn Bảo Anh', N'019641421', N'Anh.NB@gmail.com', N'Phạm Văn Đồng, Bắc Từ Liêm, Hà Nội', CAST(N'2005-02-09' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (26, N'S0012', N'Ngô Thị Ánh', N'01002362', N'Anh.NT@gmail.com', N'Yên Hòa, Đống Đa, Hà Nội', CAST(N'2005-01-18' AS Date), 2, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (27, N'S0013', N'Hải Hạ Duyên', N'01349002', N'Duyen.H2@gmail.com', N'Kim Mã, Ngọc Khánh, Ba Đình, Hà Nội', CAST(N'2005-11-09' AS Date), 2, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (28, N'S0014', N'Cao Văn Bình', N'07368690', N'Binh.CVC@gmail.com', N'Quan Hòa Hà Nội, Hà Nội', CAST(N'2005-12-03' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (29, N'S0015', N'Lò Văn Đến', N'02520059', N'Den.LV@gmail.com', N'Dịch Vọng, Cầu Giấy, Hà Nội', CAST(N'2005-12-02' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (30, N'S0016', N'Đoạn Văn Hoàng', N'01751392', N'Hoang.DV2@gmail.com', N'Xuân Thủy, Cầu Giấy, Hà Nội', CAST(N'2005-05-01' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (31, N'S0017', N'Hải Lê Hoàng', N'00383426', N'Hoang.HL1@gmail.com', N'Xuân Phương, Nam Từ Liêm, Hà Nội', CAST(N'2005-07-09' AS Date), 1, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (32, N'S0018', N'Nguyễn Thị Duy Loan', N'04089172', N'Loan.NTD@gmail.com', N'Vân Canh, Từ Liêm, Hà Nội', CAST(N'2005-06-06' AS Date), 2, N'', 1, 2)
INSERT [dbo].[tbl_Student] ([ID], [RollNo], [Name], [Phone], [Email], [Address], [DOB], [Gender], [img], [Status], [Class_ID]) VALUES (33, N'S0020', N'Ngô Cao Ánh', N'0903455645', N'Anh.NCC@gmail.com', N'Lê Quang Đạo, Mễ Trì, Từ Liêm, Hà Nội', CAST(N'2005-09-01' AS Date), 1, N'', 1, 2)
SET IDENTITY_INSERT [dbo].[tbl_Student] OFF
SET IDENTITY_INSERT [dbo].[tbl_Subject] ON 

INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (1, N'Kinh Tế Vĩ Mô', 15, 45000, 2)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (2, N'Kinh tế phát triển', 12, 45000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (3, N'Kinh tế môi trường', 20, 45000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (4, N'Lịch sử các học thuyết kinh tế', 15, 40000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (5, N'Toán cao cấp', 25, 55000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (6, N'Triết học Mác Lênin', 15, 45000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (7, N'Tư tưởng Hồ Chí Minh', 18, 55000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (8, N'Quan hệ kinh tế quốc tế', 17, 95000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (9, N'Nguyên lý thống kê kinh tế', 25, 60000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (10, N'Giao nhận vận tải', 10, 45000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (11, N'Tin học đại cương', 10, 45000, 1)
INSERT [dbo].[tbl_Subject] ([ID], [Name], [accredit], [price], [status]) VALUES (12, N'Tiếng Anh giao tiếp', 20, 45000, 1)
SET IDENTITY_INSERT [dbo].[tbl_Subject] OFF
SET IDENTITY_INSERT [dbo].[tbl_Teacher] ON 

INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (1, N'Hưng', N'0123456789', N'admin@gmail.com', N'123456', N'HN', CAST(N'1995-02-24' AS Date), 1, 1)
INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (2, N'Trần Thu Trang', N'0961114104', N'chang@gmail.com', N'123456', N'HN', CAST(N'1999-11-12' AS Date), 1, 2)
INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (3, N'Nguyễn Thái Hưng', N'0886860224', N'hung@gmail.com', N'123456', N'HP', CAST(N'1995-02-24' AS Date), 1, 1)
INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (4, N'Nguyễn Thái Minh Anh', N'0987152452', N'minhanh@gmail.com', N'123456', N'BN', CAST(N'1997-01-12' AS Date), 1, 3)
INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (5, N'Ngyễn Thái Việt Anh', N'0961117584', N'vietanh@gmail.com', N'123456', N'HN', CAST(N'1998-11-24' AS Date), 1, 4)
INSERT [dbo].[tbl_Teacher] ([ID], [Name], [Phone], [Email], [Password], [Address], [DOB], [Status], [Role_ID]) VALUES (6, N'David Nguyễn', N'0961114888', N'david@gmail.com', N'123456', N'hp', CAST(N'2002-11-30' AS Date), 1, 2)
SET IDENTITY_INSERT [dbo].[tbl_Teacher] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_Stud__5C7E359E2532A955]    Script Date: 20/06/2020 13:43:08 ******/
ALTER TABLE [dbo].[tbl_Student] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_Stud__7886D5A1B7FA8F3F]    Script Date: 20/06/2020 13:43:08 ******/
ALTER TABLE [dbo].[tbl_Student] ADD UNIQUE NONCLUSTERED 
(
	[RollNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_Stud__A9D105340B3CFEB7]    Script Date: 20/06/2020 13:43:08 ******/
ALTER TABLE [dbo].[tbl_Student] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_Teac__5C7E359E483E9E1C]    Script Date: 20/06/2020 13:43:08 ******/
ALTER TABLE [dbo].[tbl_Teacher] ADD UNIQUE NONCLUSTERED 
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tbl_Teac__A9D1053415C559EB]    Script Date: 20/06/2020 13:43:08 ******/
ALTER TABLE [dbo].[tbl_Teacher] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_Class]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[tbl_Course] ([ID])
GO
ALTER TABLE [dbo].[tbl_Class]  WITH CHECK ADD FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[tbl_Teacher] ([ID])
GO
ALTER TABLE [dbo].[tbl_Mark]  WITH CHECK ADD FOREIGN KEY([Student_ID])
REFERENCES [dbo].[tbl_Student] ([ID])
GO
ALTER TABLE [dbo].[tbl_Mark]  WITH CHECK ADD FOREIGN KEY([Sub_ID])
REFERENCES [dbo].[tbl_Subject] ([ID])
GO
ALTER TABLE [dbo].[tbl_Student]  WITH CHECK ADD FOREIGN KEY([Class_ID])
REFERENCES [dbo].[tbl_Class] ([ID])
GO
ALTER TABLE [dbo].[tbl_Teacher]  WITH CHECK ADD FOREIGN KEY([Role_ID])
REFERENCES [dbo].[tbl_Role] ([ID])
GO
