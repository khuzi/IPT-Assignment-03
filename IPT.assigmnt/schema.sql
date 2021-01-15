USE [newdata]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 22-Dec-20 6:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[department_no] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](50) NULL,
	[emp_no] [int] NOT NULL,
	[employe_experience] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unique_enrollment] UNIQUE NONCLUSTERED 
(
	[department_name] ASC,
	[emp_no] ASC,
	[employe_experience] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 22-Dec-20 6:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[emp_no] [int] NOT NULL,
	[birth_date] [varchar](15) NULL,
	[first_name] [varchar](10) NULL,
	[last_name] [varchar](10) NULL,
	[gender] [int] NULL,
	[hire_date] [varchar](15) NULL,
	[contact] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[experience]    Script Date: 22-Dec-20 6:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[experience](
	[employe_experience] [int] NOT NULL,
	[employe_level] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[employe_experience] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salaries]    Script Date: 22-Dec-20 6:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salaries](
	[emp_no] [int] NOT NULL,
	[salary] [int] NULL,
	[from_date] [varchar](15) NULL,
	[to_date] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[title]    Script Date: 22-Dec-20 6:17:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[title](
	[emp_no] [int] NOT NULL,
	[title] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK_departments_departments] FOREIGN KEY([employe_experience])
REFERENCES [dbo].[experience] ([employe_experience])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK_departments_departments]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [FK_departments_Employees] FOREIGN KEY([emp_no])
REFERENCES [dbo].[employees] ([emp_no])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [FK_departments_Employees]
GO
