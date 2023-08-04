CREATE TABLE [Branch] (
  [BranchID] int IDENTITY(100,1),
  [BranchName] varchar(50),
  [Location] varchar(50),
  [ContactNumber] nvarchar(10),
  PRIMARY KEY ([BranchID])
);

CREATE TABLE [Trainer] (
  [TrainerID] int IDENTITY(100,1),
  [EmployeeNumber] nvarchar(5),
  [TrainerName] varchar(50),
  [DateOfBirth] Date,
  [CertificationLevel] varchar(50),
  [BranchID] int,
  PRIMARY KEY ([TrainerID]),
  CONSTRAINT [FK_Trainer.BranchID]
    FOREIGN KEY ([BranchID])
      REFERENCES [Branch]([BranchID])
);

CREATE TABLE [Machine] (
  [MachineID] int IDENTITY(100,1),
  [MachineName] varchar(50),
  [Manufacturer] varchar(50),
  [EquipmentType] varchar(50),
  PRIMARY KEY ([MachineID])
);

CREATE TABLE [Session] (
  [SessionID] int IDENTITY(100,1),
  [Schedule] datetime,
  [MaxCapacity] nvarchar(50),
  [TrainerID] int,
  PRIMARY KEY ([SessionID]),
  CONSTRAINT [FK_Session.TrainerID]
    FOREIGN KEY ([TrainerID])
      REFERENCES [Trainer]([TrainerID])
);

CREATE TABLE [Member] (
  [MemberID] int IDENTITY(100,1),
  [MembershipNumber] nvarchar(50),
  [FullName] varchar(50),
  [Address] varchar(100),
  [PhoneNumber] nvarchar(10),
  [EmailAddress] varchar(50),
  [Gender] varchar(1),
  PRIMARY KEY ([MemberID])
);

CREATE TABLE [Program] (
  [ProgramID] int IDENTITY(100,1),
  [DateCreated] Date,
  [NextReviewDate] Date,
  [ProgramType] varchar(50),
  [MemberID] int,
  PRIMARY KEY ([ProgramID]),
  CONSTRAINT [FK_Program.MemberID]
    FOREIGN KEY ([MemberID])
      REFERENCES [Member]([MemberID])
);

CREATE TABLE [ProgramDetails] (
  [ProgrameDetailID] int IDENTITY(100,1),
  [ProgramID] int,
  [MachineID] int,
  [Reps] nvarchar(5),
  [Sets] nvarchar(5),
  PRIMARY KEY ([ProgrameDetailID]),
  CONSTRAINT [FK_ProgrameDetails.MachineID]
    FOREIGN KEY ([MachineID])
      REFERENCES [Machine]([MachineID]),
  CONSTRAINT [FK_ProgrameDetails.ProgramID]
    FOREIGN KEY ([ProgramID])
      REFERENCES [Program]([ProgramID])
);