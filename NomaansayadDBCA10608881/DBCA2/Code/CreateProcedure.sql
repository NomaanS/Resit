CREATE PROCEDURE sp_InsertMember
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


CREATE PROCEDURE sp_DeleteProgram
    @ProgramID int
AS
BEGIN
    DELETE FROM [ProgramDetails]
    WHERE ProgramID = @ProgramID;

    DELETE FROM [Program]
    WHERE ProgramID = @ProgramID;
END;

GO



 CREATE PROCEDURE sp_SearchSessionsBetweenDates
    @StartDate Date,
    @EndDate Date
AS
BEGIN
    SELECT *
    FROM [Session]
    WHERE Schedule BETWEEN @StartDate AND @EndDate;
END;

GO




 CREATE PROCEDURE sp_SearchTrainersByName
    @TrainerNameSearch varchar(50)
AS
BEGIN
    SELECT *
    FROM [Trainer]
    WHERE TrainerName LIKE '%' + @TrainerNameSearch + '%';
END;

GO 



CREATE PROCEDURE sp_UpdateTrainerBranch
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
