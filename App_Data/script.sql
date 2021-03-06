USE [TechnoDB]
GO
/****** Object:  Table [dbo].[Tbl_WorkAllot]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_WorkAllot](
	[Employee_Name] [varchar](50) NULL,
	[Emp_Id] [varchar](100) NOT NULL,
	[Task_Name] [varchar](30) NULL,
	[Description] [varchar](max) NULL,
	[Finishing_DT] [varchar](30) NULL,
	[Allot_DT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_WorkAllot] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_WorkAllot] ([Employee_Name], [Emp_Id], [Task_Name], [Description], [Finishing_DT], [Allot_DT]) VALUES (N'raj', N'lucky@gmail.com', N'html', N'done', N'2/8/2017', N'03-Aug-17 2:52:52 AM')
INSERT [dbo].[Tbl_WorkAllot] ([Employee_Name], [Emp_Id], [Task_Name], [Description], [Finishing_DT], [Allot_DT]) VALUES (N'Rohit', N'rohit@gmail.com', N'Web design', N'must', N'05-05-2017', N'01-Aug-17 10:33:12 AM')
/****** Object:  Table [dbo].[Tbl_Upload]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Upload](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](120) NULL,
	[Files] [varchar](120) NULL,
	[UDT] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Upload] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Upload] ON
INSERT [dbo].[Tbl_Upload] ([uid], [UserId], [Files], [UDT]) VALUES (1, N'rohit@gmail.com', N'I.png', N'02-Aug-17 7:54:50 PM')
INSERT [dbo].[Tbl_Upload] ([uid], [UserId], [Files], [UDT]) VALUES (2, N'lucky@gmail.com', N'Logo.png', N'03-Aug-17 2:48:26 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Upload] OFF
/****** Object:  Table [dbo].[Tbl_Question]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Question](
	[QuesId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](max) NULL,
	[AskedBy] [varchar](100) NULL,
	[QDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Question] PRIMARY KEY CLUSTERED 
(
	[QuesId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Question] ON
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (1, N'What is C?', N'mithilesh@gmail.com', N'29-Jul-17 8:54:48 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (2, N'What is Addon', N'rohit@gmail.com', N'29-Jul-17 8:57:02 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (3, N'Texting Discussion Board Question Posting Portal', N'rohit@gmail.com', N'02-Aug-17 1:41:44 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (4, N'Next Testing After Adding Grid View', N'rohit@gmail.com', N'02-Aug-17 1:52:36 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (5, N'Hi Next One', N'rohit@gmail.com', N'02-Aug-17 1:52:57 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (6, N'This One is after adding redirection', N'rohit@gmail.com', N'02-Aug-17 1:54:47 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (7, N'its Working Properly Here', N'rohit@gmail.com', N'02-Aug-17 1:55:10 AM')
INSERT [dbo].[Tbl_Question] ([QuesId], [Question], [AskedBy], [QDT]) VALUES (8, N'how r u', N'lucky@gmail.com', N'03-Aug-17 2:43:54 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Question] OFF
/****** Object:  Table [dbo].[Tbl_Notification]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Notification](
	[NID] [int] IDENTITY(1,1) NOT NULL,
	[NMsg] [varchar](max) NULL,
	[NDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Notification] PRIMARY KEY CLUSTERED 
(
	[NID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Notification] ON
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (3, N'Next Record', N'02-Aug-17 10:07:45 AM')
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (4, N'window', N'02-Aug-17 10:10:21 AM')
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (5, N'Add new Notification', N'02-Aug-17 2:33:27 PM')
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (6, N'hey user you are notified that we are cganging our terms and policy in few days.', N'03-Aug-17 1:38:17 AM')
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (7, N'new update', N'03-Aug-17 2:54:07 AM')
INSERT [dbo].[Tbl_Notification] ([NID], [NMsg], [NDT]) VALUES (8, N'We are hiring new people just send your resume 


Regard - Company CEO', N'2/20/2018 4:42:38 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Notification] OFF
/****** Object:  Table [dbo].[Tbl_Mywork]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Mywork](
	[wid] [int] IDENTITY(1,1) NOT NULL,
	[Workname] [varchar](50) NULL,
	[Userid] [varchar](120) NULL,
	[details] [varchar](max) NULL,
	[wdate] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Mywork] PRIMARY KEY CLUSTERED 
(
	[wid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mywork] ON
INSERT [dbo].[Tbl_Mywork] ([wid], [Workname], [Userid], [details], [wdate]) VALUES (1, N'Web desining', N'mithilesh@gmail.com', N'Test', N'02-Aug-17 3:03:19 PM')
INSERT [dbo].[Tbl_Mywork] ([wid], [Workname], [Userid], [details], [wdate]) VALUES (2, N'Data Managment', N'rohit@gmail.com', N'Testing Work Test', N'02-Aug-17 7:49:50 PM')
INSERT [dbo].[Tbl_Mywork] ([wid], [Workname], [Userid], [details], [wdate]) VALUES (3, N'ffg', N'lucky@gmail.com', N'ffggh', N'03-Aug-17 2:47:58 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Mywork] OFF
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[UserId] [varchar](100) NOT NULL,
	[Passwd] [varchar](50) NULL,
	[Utype] [varchar](60) NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'admin@gmail.com', N'234', N'Admin')
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'lucky@gmail.com', N'23', N'Employee')
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'mithi@gmail.com', N'NRGSROVHS', N'Employee')
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'mithilesh@gmail.com', N'23', N'Employee')
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'rohit@gmail.com', N'rohit', N'Employee')
INSERT [dbo].[Tbl_Login] ([UserId], [Passwd], [Utype]) VALUES (N'sonupratapy@gmail.com', N'sonu', N'Employee')
/****** Object:  Table [dbo].[Tbl_FeedBack]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_FeedBack](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NULL,
	[FeedBack_Sub] [varchar](70) NULL,
	[Msg] [varchar](max) NULL,
	[MsgDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_FeedBack] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_FeedBack] ON
INSERT [dbo].[Tbl_FeedBack] ([Fid], [UserId], [FeedBack_Sub], [Msg], [MsgDT]) VALUES (1, N'rohit@gmail.com', N'System.Web.UI.WebControls.TextBox', N'System.Web.UI.WebControls.TextBox', N'27-Jul-17 10:09:56 AM')
INSERT [dbo].[Tbl_FeedBack] ([Fid], [UserId], [FeedBack_Sub], [Msg], [MsgDT]) VALUES (2, N'rohit@gmail.com', N'Good', N'hi how are u', N'27-Jul-17 10:11:13 AM')
INSERT [dbo].[Tbl_FeedBack] ([Fid], [UserId], [FeedBack_Sub], [Msg], [MsgDT]) VALUES (3, N'rohit@gmail.com', N'Test !23', N'text Area', N'02-Aug-17 2:49:53 AM')
INSERT [dbo].[Tbl_FeedBack] ([Fid], [UserId], [FeedBack_Sub], [Msg], [MsgDT]) VALUES (4, N'rohit@gmail.com', N'Next Is this', N'Next statement', N'02-Aug-17 2:51:03 AM')
INSERT [dbo].[Tbl_FeedBack] ([Fid], [UserId], [FeedBack_Sub], [Msg], [MsgDT]) VALUES (5, N'lucky@gmail.com', N'hello', N'hjkl', N'03-Aug-17 2:48:47 AM')
SET IDENTITY_INSERT [dbo].[Tbl_FeedBack] OFF
/****** Object:  Table [dbo].[Tbl_Enquiry]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Enquiry](
	[Emp_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[EmailId] [varchar](100) NULL,
	[MobNo] [varchar](30) NULL,
	[Query] [varchar](max) NULL,
	[Enq_DT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Enquiry] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] ON
INSERT [dbo].[Tbl_Enquiry] ([Emp_Id], [Name], [EmailId], [MobNo], [Query], [Enq_DT]) VALUES (2, N'DK', N'ask@mail.com', N'123456789', N'ask some to admin', N'24-Jul-17 1:30:29 PM')
INSERT [dbo].[Tbl_Enquiry] ([Emp_Id], [Name], [EmailId], [MobNo], [Query], [Enq_DT]) VALUES (3, N'abhi', N'lucky@gmail.com', N'455677', N'hellow', N'03-Aug-17 2:34:41 AM')
INSERT [dbo].[Tbl_Enquiry] ([Emp_Id], [Name], [EmailId], [MobNo], [Query], [Enq_DT]) VALUES (5, N'Sonu Yadav', N'sonupratapy@gmail.com', N'99355315026', N'How regster on this portal', N'2/20/2018 4:42:53 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] OFF
/****** Object:  Table [dbo].[Tbl_EmpRegistration]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_EmpRegistration](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Designation] [varchar](100) NULL,
	[DOJ] [varchar](30) NULL,
	[Qualification] [varchar](max) NULL,
	[MobNo] [varchar](30) NULL,
	[EmailId] [varchar](100) NOT NULL,
	[Passwd] [varchar](40) NULL,
	[Profile] [varchar](90) NULL,
	[Address] [varchar](max) NULL,
 CONSTRAINT [PK_Tbl_EmpRegistration] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_EmpRegistration] ON
INSERT [dbo].[Tbl_EmpRegistration] ([eid], [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Passwd], [Profile], [Address]) VALUES (1, N'raj', N'Male', N'Project Coordinator', N'12/06/1997', N'M.Sc(CS/IT)', N'445677', N'lucky@gmail.com', N'23', N'lucky@gmail.comIMG-20170719-WA0026.jpg', N'asddfghhjdfd;l')
INSERT [dbo].[Tbl_EmpRegistration] ([eid], [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Passwd], [Profile], [Address]) VALUES (2, N'Mithilesh Yadav', N'Male', N'Junior Saftware Developer', N'06-06-2015', N'M,Tech(CS/IT)', N'1234567890', N'mithi@gmail.com', N'NRGSROVHS', N'mithi@gmail.comlogospi.png', N'Abc')
INSERT [dbo].[Tbl_EmpRegistration] ([eid], [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Passwd], [Profile], [Address]) VALUES (3, N'Mithilesh Yadav', N'Male', N'Web Designer', N'06-06-2015', N'DIploma(CS/IT)', N'8577885299', N'mithilesh@gmail.com', N'mithilesh', NULL, N'Abc')
INSERT [dbo].[Tbl_EmpRegistration] ([eid], [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Passwd], [Profile], [Address]) VALUES (4, N'Rohit Yadav', N'Male', N'Web Designer', N'01-06-2016', N'MCA', N'99999999', N'rohit@gmail.com', N'rohit', N'logospi.png', N'abcdef')
INSERT [dbo].[Tbl_EmpRegistration] ([eid], [EmpName], [Gender], [Designation], [DOJ], [Qualification], [MobNo], [EmailId], [Passwd], [Profile], [Address]) VALUES (5, N'Sonu Yadav', N'Male', N'Project Manager', N'1998-05-01', N'MCA', N'9935531506', N'sonupratapy@gmail.com', N'sonu', N'sonupratapy@gmail.comBeautyPlusMe_20170103133739_fast.jpg', N'Malipur')
SET IDENTITY_INSERT [dbo].[Tbl_EmpRegistration] OFF
/****** Object:  Table [dbo].[Tbl_Complain]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Complain](
	[Cid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EmployeeId] [varchar](100) NULL,
	[ComplainTopic] [varchar](120) NULL,
	[Description] [varchar](max) NULL,
	[ComplainDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Complain] PRIMARY KEY CLUSTERED 
(
	[Cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Complain] ON
INSERT [dbo].[Tbl_Complain] ([Cid], [Name], [EmployeeId], [ComplainTopic], [Description], [ComplainDT]) VALUES (1, N'Rohit', N'rohit@gmail.com', N'Test', N'test Discription', N'02-Aug-17 12:55:13 AM')
INSERT [dbo].[Tbl_Complain] ([Cid], [Name], [EmployeeId], [ComplainTopic], [Description], [ComplainDT]) VALUES (2, N'lucky', N'lucky@gmail.com', N'read', N'how', N'03-Aug-17 2:49:17 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Complain] OFF
/****** Object:  Table [dbo].[Tbl_ApplyLeave]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_ApplyLeave](
	[Employee_Name] [varchar](50) NULL,
	[Emp_Id] [varchar](100) NOT NULL,
	[From_Date] [varchar](30) NULL,
	[To_Date] [varchar](30) NULL,
	[Total_days] [int] NULL,
	[ApplyDT] [varchar](40) NULL,
 CONSTRAINT [PK_Tbl_ApplyLeave] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_ApplyLeave] ([Employee_Name], [Emp_Id], [From_Date], [To_Date], [Total_days], [ApplyDT]) VALUES (N'lucky', N'lucky@gmail.com', N'2/2/2017', N'2/3/1017', 31, N'03-Aug-17 2:58:13 AM')
/****** Object:  Table [dbo].[Tbl_Answer]    Script Date: 02/22/2018 19:28:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Answer](
	[AnsId] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](max) NULL,
	[QuesId] [int] NULL,
	[AnsweredBy] [varchar](100) NULL,
	[AnsDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Answer] PRIMARY KEY CLUSTERED 
(
	[AnsId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Answer] ON
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (1, N'C is Programming Language', 1, N'rohit@gmail.com', N'29-Jul-17 9:54:42 AM')
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (2, N'AddOn is Used In Browser to Add special services', 2, N'rohit@gmail.com', N'29-Jul-17 10:31:23 AM')
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (3, N'c is not object oriented', 1, N'rohit@gmail.com', N'29-Jul-17 10:39:24 AM')
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (4, N'O ho its working properly', 7, N'rohit@gmail.com', N'02-Aug-17 2:26:07 AM')
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (5, N'Next Answer', 7, N'rohit@gmail.com', N'02-Aug-17 2:36:55 AM')
INSERT [dbo].[Tbl_Answer] ([AnsId], [Answer], [QuesId], [AnsweredBy], [AnsDT]) VALUES (6, N'fine', 8, N'lucky@gmail.com', N'03-Aug-17 2:44:09 AM')
SET IDENTITY_INSERT [dbo].[Tbl_Answer] OFF
