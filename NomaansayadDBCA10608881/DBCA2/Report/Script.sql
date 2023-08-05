USE [master]
GO
/****** Object:  Database [Db.Resit]    Script Date: 05-08-2023 19:46:22 ******/
CREATE DATABASE [Db.Resit]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db.Resit', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Db.Resit.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db.Resit_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Db.Resit_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Db.Resit] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db.Resit].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db.Resit] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db.Resit] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db.Resit] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db.Resit] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db.Resit] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db.Resit] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db.Resit] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db.Resit] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db.Resit] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db.Resit] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db.Resit] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db.Resit] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db.Resit] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db.Resit] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db.Resit] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db.Resit] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db.Resit] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db.Resit] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db.Resit] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db.Resit] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db.Resit] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db.Resit] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db.Resit] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Db.Resit] SET  MULTI_USER 
GO
ALTER DATABASE [Db.Resit] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db.Resit] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db.Resit] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db.Resit] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db.Resit] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db.Resit] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Db.Resit] SET QUERY_STORE = ON
GO
ALTER DATABASE [Db.Resit] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Db.Resit]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(100,1) NOT NULL,
	[MembershipNumber] [nvarchar](50) NULL,
	[FullName] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
	[PhoneNumber] [nvarchar](10) NULL,
	[EmailAddress] [varchar](50) NULL,
	[Gender] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Program]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Program](
	[ProgramID] [int] IDENTITY(100,1) NOT NULL,
	[DateCreated] [date] NULL,
	[NextReviewDate] [date] NULL,
	[ProgramType] [varchar](50) NULL,
	[MemberID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_MembersWithPrograms]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_MembersWithPrograms] AS
SELECT m.FullName AS MemberName, m.Address AS MemberAddress, p.ProgramType
FROM [Member] m
JOIN [Program] p ON m.MemberID = p.MemberID;


GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[TrainerID] [int] IDENTITY(100,1) NOT NULL,
	[EmployeeNumber] [nvarchar](5) NULL,
	[TrainerName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[CertificationLevel] [varchar](50) NULL,
	[BranchID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_TrainersByCertificationLevel]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vw_TrainersByCertificationLevel] AS
SELECT TrainerID, TrainerName, CertificationLevel, DateOfBirth
FROM [Trainer];

GO
/****** Object:  Table [dbo].[Machine]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[MachineID] [int] IDENTITY(100,1) NOT NULL,
	[MachineName] [varchar](50) NULL,
	[Manufacturer] [varchar](50) NULL,
	[EquipmentType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MachineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_UniqueEquipmentTypes]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 CREATE VIEW [dbo].[vw_UniqueEquipmentTypes] AS
SELECT DISTINCT EquipmentType
FROM [Machine];


GO
/****** Object:  View [dbo].[vw_ProgramInfo]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


 CREATE VIEW [dbo].[vw_ProgramInfo] AS
SELECT ProgramID AS ProgramNumber, DateCreated AS CreatedDate, NextReviewDate AS ReviewDate, ProgramType AS Type, MemberID AS MemberNumber
FROM [Program];


GO
/****** Object:  Table [dbo].[Branch]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch](
	[BranchID] [int] IDENTITY(100,1) NOT NULL,
	[BranchName] [varchar](50) NULL,
	[Location] [varchar](50) NULL,
	[ContactNumber] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProgramDetails]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProgramDetails](
	[ProgrameDetailID] [int] IDENTITY(100,1) NOT NULL,
	[ProgramID] [int] NULL,
	[MachineID] [int] NULL,
	[Reps] [nvarchar](5) NULL,
	[Sets] [nvarchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProgrameDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionID] [int] IDENTITY(100,1) NOT NULL,
	[Schedule] [datetime] NULL,
	[MaxCapacity] [nvarchar](50) NULL,
	[TrainerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Program]  WITH CHECK ADD  CONSTRAINT [FK_Program.MemberID] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Program] CHECK CONSTRAINT [FK_Program.MemberID]
GO
ALTER TABLE [dbo].[ProgramDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameDetails.MachineID] FOREIGN KEY([MachineID])
REFERENCES [dbo].[Machine] ([MachineID])
GO
ALTER TABLE [dbo].[ProgramDetails] CHECK CONSTRAINT [FK_ProgrameDetails.MachineID]
GO
ALTER TABLE [dbo].[ProgramDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProgrameDetails.ProgramID] FOREIGN KEY([ProgramID])
REFERENCES [dbo].[Program] ([ProgramID])
GO
ALTER TABLE [dbo].[ProgramDetails] CHECK CONSTRAINT [FK_ProgrameDetails.ProgramID]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session.TrainerID] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([TrainerID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session.TrainerID]
GO
ALTER TABLE [dbo].[Trainer]  WITH CHECK ADD  CONSTRAINT [FK_Trainer.BranchID] FOREIGN KEY([BranchID])
REFERENCES [dbo].[Branch] ([BranchID])
GO
ALTER TABLE [dbo].[Trainer] CHECK CONSTRAINT [FK_Trainer.BranchID]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteProgram]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_DeleteProgram]
    @ProgramID int
AS
BEGIN
    DELETE FROM [ProgramDetails]
    WHERE ProgramID = @ProgramID;

    DELETE FROM [Program]
    WHERE ProgramID = @ProgramID;
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMember]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertMember]
    @MembershipNumber nvarchar(50),
    @FullName varchar(50),
    @Address varchar(100),
    @PhoneNumber nvarchar(10),
    @EmailAddress varchar(50),
    @Gender varchar(1)
AS
BEGIN
    INSERT INTO [Member] (MembershipNumber, FullName, Address, PhoneNumber, EmailAddress, Gender)
    VALUES (@MembershipNumber, @FullName, @Address, @PhoneNumber, @EmailAddress, @Gender);
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_SearchSessionsBetweenDates]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



 CREATE PROCEDURE [dbo].[sp_SearchSessionsBetweenDates]
    @StartDate Date,
    @EndDate Date
AS
BEGIN
    SELECT *
    FROM [Session]
    WHERE Schedule BETWEEN @StartDate AND @EndDate;
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTrainersByName]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




 CREATE PROCEDURE [dbo].[sp_SearchTrainersByName]
    @TrainerNameSearch varchar(50)
AS
BEGIN
    SELECT *
    FROM [Trainer]
    WHERE TrainerName LIKE '%' + @TrainerNameSearch + '%';
END;


GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateTrainerBranch]    Script Date: 05-08-2023 19:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_UpdateTrainerBranch]
    @TrainerID int,
    @BranchID int
AS
BEGIN
    IF EXISTS (SELECT 1 FROM [Branch] WHERE BranchID = @BranchID)
    BEGIN
        UPDATE [Trainer]
        SET BranchID = @BranchID
        WHERE TrainerID = @TrainerID;
    END
    ELSE
    BEGIN
        PRINT 'Invalid BranchID. The specified BranchID does not exist.';
    END
END;

GO
USE [master]
GO
ALTER DATABASE [Db.Resit] SET  READ_WRITE 
GO
