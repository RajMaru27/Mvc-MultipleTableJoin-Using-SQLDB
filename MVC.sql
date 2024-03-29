USE [MVCJOIN]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[Standard] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectId] [int] NULL,
	[RegisterId] [int] NULL,
	[Marks] [decimal](5, 2) NULL,
	[OutOf] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register](
	[RegisterId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[StudentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegisterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](25) NULL,
	[Email] [nvarchar](30) NULL,
	[Birthdate] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26-05-2023 7.08.30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](10) NULL,
	[ConfirmPassword] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([ClassId], [Standard]) VALUES (1, N'1st Class')
INSERT [dbo].[Class] ([ClassId], [Standard]) VALUES (2, N'2nd Class')
INSERT [dbo].[Class] ([ClassId], [Standard]) VALUES (3, N'3rd Class')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (1, 5, 1, CAST(69.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (2, 6, 1, CAST(78.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (3, 7, 1, CAST(71.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (4, 5, 2, CAST(62.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (5, 6, 2, CAST(82.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (6, 7, 2, CAST(74.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (7, 5, 4, CAST(88.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (8, 6, 4, CAST(94.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (10, 7, 4, CAST(54.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
INSERT [dbo].[Exam] ([ExamId], [SubjectId], [RegisterId], [Marks], [OutOf]) VALUES (11, 6, 5, CAST(65.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[Register] ON 

INSERT [dbo].[Register] ([RegisterId], [ClassId], [StudentId]) VALUES (1, 2, 2)
INSERT [dbo].[Register] ([RegisterId], [ClassId], [StudentId]) VALUES (2, 3, 3)
INSERT [dbo].[Register] ([RegisterId], [ClassId], [StudentId]) VALUES (4, 1, 4)
INSERT [dbo].[Register] ([RegisterId], [ClassId], [StudentId]) VALUES (5, 1, 3)
SET IDENTITY_INSERT [dbo].[Register] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([StudentId], [StudentName], [Email], [Birthdate]) VALUES (2, N'Raj Maru', N'RajMaru@gmail.com', N'27/11/1997')
INSERT [dbo].[Student] ([StudentId], [StudentName], [Email], [Birthdate]) VALUES (3, N'Sagar Malde', N'sagar@gmail.com', N'07/07/1993')
INSERT [dbo].[Student] ([StudentId], [StudentName], [Email], [Birthdate]) VALUES (4, N'Shrey Khimasiya', N'Shrey@gmail.com', N'29/03/2000')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([SubjectId], [SubjectName]) VALUES (5, N'ENGLISH')
INSERT [dbo].[Subject] ([SubjectId], [SubjectName]) VALUES (6, N'MATHS')
INSERT [dbo].[Subject] ([SubjectId], [SubjectName]) VALUES (7, N'SCIENCE')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [Password], [ConfirmPassword]) VALUES (1, N'Raj Maru', N'123456', NULL)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [ConfirmPassword]) VALUES (2, N'', N'', NULL)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [ConfirmPassword]) VALUES (3, N'', N'', NULL)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [ConfirmPassword]) VALUES (4, N'', N'', NULL)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [ConfirmPassword]) VALUES (5, N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
