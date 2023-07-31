

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

CREATE TABLE [Session] (
  [SessionID] int IDENTITY(100,1),
  [Schedule] nvarchar(50),
  [MaxCapacity] nvarchar(50),
  [TrainerID] int,
  PRIMARY KEY ([SessionID]),
  CONSTRAINT [FK_Session.TrainerID]
    FOREIGN KEY ([TrainerID])
      REFERENCES [Trainer]([TrainerID])
);

CREATE TABLE [ProgrameDetails] (
  [ProgrameDetailID] int IDENTITY(100,1),
  [ProgramID] int,
  [MachineID] int,
  [Reps] nvarchar(5),
  [Sets] nvarchar(5),
  PRIMARY KEY ([ProgrameDetailID]),
  CONSTRAINT [FK_ProgrameDetails.ProgramID]
    FOREIGN KEY ([ProgramID])
      REFERENCES [Program]([ProgramID]),
  CONSTRAINT [FK_ProgrameDetails.MachineID]
    FOREIGN KEY ([MachineID])
      REFERENCES [Machine]([MachineID])
);

