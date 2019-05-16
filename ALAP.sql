USE [ALAPDb]
GO
/****** Object:  Table [dbo].[LearningAgreement]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LearningAgreement](
	[LearningAgreementID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NULL,
	[IsApproved] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[LearningAgreementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedSubjects]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedSubjects](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectID] [int] NOT NULL,
	[LearningAgreementID] [int] NOT NULL,
	[IsSelected] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subjects]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subjects](
	[SubjectID] [int] IDENTITY(1,1) NOT NULL,
	[SubjectName] [varchar](255) NOT NULL,
	[Module] [varchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](255) NOT NULL,
	[LastName] [varchar](255) NULL,
	[MatriculationNumber] [int] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[IsAdmin] [bit] NULL,
	[Password] [nvarchar](255) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LearningAgreement] ON 

INSERT [dbo].[LearningAgreement] ([LearningAgreementID], [StudentID], [IsApproved], [IsDeleted], [CreatedDate]) VALUES (1, 1, 0, 0, CAST(N'2019-05-15T21:38:07.3900000' AS DateTime2))
INSERT [dbo].[LearningAgreement] ([LearningAgreementID], [StudentID], [IsApproved], [IsDeleted], [CreatedDate]) VALUES (2, 2, 0, 0, CAST(N'2019-05-16T10:25:38.4500000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[LearningAgreement] OFF
SET IDENTITY_INSERT [dbo].[SelectedSubjects] ON 

INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (1, 1, 1, 1, 0, CAST(N'2019-05-15T21:41:48.3233333' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (3, 2, 1, 1, 0, CAST(N'2019-05-15T21:42:18.7833333' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (4, 3, 1, 1, 0, CAST(N'2019-05-15T21:42:23.9933333' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (5, 4, 1, 1, 0, CAST(N'2019-05-15T21:42:29.3533333' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (6, 5, 1, 1, 0, CAST(N'2019-05-15T21:42:34.2966667' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (7, 1, 2, 1, 0, CAST(N'2019-05-16T10:27:05.2600000' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (8, 2, 2, 1, 0, CAST(N'2019-05-16T10:27:14.2800000' AS DateTime2))
INSERT [dbo].[SelectedSubjects] ([ID], [SubjectID], [LearningAgreementID], [IsSelected], [IsDeleted], [CreatedDate]) VALUES (9, 3, 2, 1, 0, CAST(N'2019-05-16T10:27:19.7000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[SelectedSubjects] OFF
SET IDENTITY_INSERT [dbo].[Subjects] ON 

INSERT [dbo].[Subjects] ([SubjectID], [SubjectName], [Module], [IsActive], [CreatedOn]) VALUES (1, N'Technical Logistics System', N'ML_4.04', 1, CAST(N'2019-05-09T18:42:13.3000000' AS DateTime2))
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName], [Module], [IsActive], [CreatedOn]) VALUES (2, N'Planning and Process of Logistics', N'ML_4.02', 1, CAST(N'2019-05-09T18:42:53.1800000' AS DateTime2))
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName], [Module], [IsActive], [CreatedOn]) VALUES (3, N'Business Information Systems', N'ML_4.06', 1, CAST(N'2019-05-09T18:43:04.4900000' AS DateTime2))
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName], [Module], [IsActive], [CreatedOn]) VALUES (4, N'Advanced Modelling and Simulation', N'ML_2.06', 1, CAST(N'2019-05-09T18:43:20.4133333' AS DateTime2))
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName], [Module], [IsActive], [CreatedOn]) VALUES (5, N'Fundamentals of Logistics', N'ML_1.06', 1, CAST(N'2019-05-09T18:43:37.7133333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Subjects] OFF
SET IDENTITY_INSERT [dbo].[UserDetails] ON 

INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [MatriculationNumber], [Email], [IsAdmin], [Password], [IsDeleted]) VALUES (1, N'Sriram', N'Murali', 26120, N'1sri93ram@gmail.com', 0, N'pass1234', 0)
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [MatriculationNumber], [Email], [IsAdmin], [Password], [IsDeleted]) VALUES (2, N'Scott', N'Mctominay', 39393, N'mcsause@gmail.com', 0, N'unlockpogba', 0)
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [MatriculationNumber], [Email], [IsAdmin], [Password], [IsDeleted]) VALUES (3, N'Andreas', N'Pereira', 15151, N'andreas@gmail.com', 0, N'brazil1234', 0)
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName], [MatriculationNumber], [Email], [IsAdmin], [Password], [IsDeleted]) VALUES (5, N'Victor', N'Lindelof', 2222, N'iceman@gmail.com', 0, N'pass2345', 0)
SET IDENTITY_INSERT [dbo].[UserDetails] OFF
ALTER TABLE [dbo].[LearningAgreement] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[LearningAgreement] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LearningAgreement] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SelectedSubjects] ADD  DEFAULT ((1)) FOR [IsSelected]
GO
ALTER TABLE [dbo].[SelectedSubjects] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SelectedSubjects] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Subjects] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Subjects] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserDetails] ADD  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[UserDetails] ADD  DEFAULT ('') FOR [Password]
GO
ALTER TABLE [dbo].[UserDetails] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LearningAgreement]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[UserDetails] ([UserID])
GO
ALTER TABLE [dbo].[SelectedSubjects]  WITH CHECK ADD FOREIGN KEY([LearningAgreementID])
REFERENCES [dbo].[LearningAgreement] ([LearningAgreementID])
GO
ALTER TABLE [dbo].[SelectedSubjects]  WITH CHECK ADD FOREIGN KEY([SubjectID])
REFERENCES [dbo].[Subjects] ([SubjectID])
GO
/****** Object:  StoredProcedure [dbo].[usp_GetAllSubjects]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sriram Murali
-- Create date: 09th May 2019
-- Description:	Get all the subjects
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetAllSubjects]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
		 SubjectID
		,SubjectName
		,Module
	FROM Subjects WHERE IsActive = 1 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_GetStudentData]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sriram Murali
-- Create date: 16th May 2019
-- Description:	Get the student data
-- =============================================
CREATE PROCEDURE [dbo].[usp_GetStudentData] 
   @StudentID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Personal Data
	SELECT 
		FirstName,
		LastName,
		MatriculationNumber
	FROM UserDetails
	WHERE UserID = @StudentID AND IsDeleted = 0

	-- Subject Details
	SELECT 
		SS.SubjectID,
		S.SubjectName,
		SS.IsSelected
	FROM SelectedSubjects SS
	INNER JOIN LearningAgreement LA
	ON SS.LearningAgreementID = LA.LearningAgreementID AND SS.IsDeleted = 0
	INNER JOIN UserDetails UD 
	ON UD.UserID = LA.StudentID AND UD.IsDeleted = 0
	INNER JOIN Subjects S
	ON S.SubjectID = SS.SubjectID
	WHERE LA.StudentID = @StudentID

END
GO
/****** Object:  StoredProcedure [dbo].[usp_RegisterUser]    Script Date: 16-05-2019 12:31:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Sriram Murali
-- Create date: 09th May 2019
-- Description:	Register User
-- =============================================
CREATE PROCEDURE [dbo].[usp_RegisterUser] 
	@FirstName nvarchar(255),
	@LastName nvarchar(255),
	@MatriculationNo int,
	@Email nvarchar(200),
	@Password nvarchar(100)
AS
BEGIN
	

	DECLARE @IsAdmin bit = 0;
	DECLARE @Success int = 0;
	DECLARE @AlreadyExists int = -2;
	DECLARE @SaveStatus int = @Success;

	IF NOT EXISTS(SELECT UserID from UserDetails WHERE MatriculationNumber = @MatriculationNo OR Email = @Email)
	BEGIN
	INSERT INTO [dbo].[UserDetails]
           ([FirstName]
           ,[LastName]
           ,[MatriculationNumber]
           ,[Email]
           ,[IsAdmin]
           ,[Password])
     VALUES
           (@FirstName
           ,@LastName
           ,@MatriculationNo
           ,@Email
           ,@IsAdmin
           ,@Password)

	 RETURN @Success						
	END
	ELSE
	BEGIN
	 RETURN @AlreadyExists
	END

END
GO
