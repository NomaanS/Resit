-- Test the sp_InsertMember stored procedure
EXEC sp_InsertMember
    @MembershipNumber = 'M123',
    @FullName = 'John Doe',
    @Address = '123 Main St',
    @PhoneNumber = '1234567890',
    @EmailAddress = 'john.doe@example.com',
    @Gender = 'M';

-- Test the sp_DeleteProgram stored procedure
DECLARE @ProgramIDToDelete int;
SET @ProgramIDToDelete = 103; 
EXEC sp_DeleteProgram @ProgramID = @ProgramIDToDelete;

-- Test the sp_SearchSessionsBetweenDates stored procedure
DECLARE @StartDate Date;
DECLARE @EndDate Date;
SET @StartDate = '2023-08-09';
SET @EndDate = '2023-08-11';
EXEC sp_SearchSessionsBetweenDates @StartDate = @StartDate, @EndDate = @EndDate;

-- Test the sp_SearchTrainersByName stored procedure
DECLARE @TrainerNameSearch varchar(50);
SET @TrainerNameSearch = 'Smith'; 
EXEC sp_SearchTrainersByName @TrainerNameSearch = @TrainerNameSearch;

-- Test the sp_UpdateTrainerBranch stored procedure
DECLARE @TrainerIDToUpdate int;
DECLARE @NewBranchID int;
SET @TrainerIDToUpdate = 101; 
SET @NewBranchID = 103; 
EXEC sp_UpdateTrainerBranch @TrainerID = @TrainerIDToUpdate, @BranchID = @NewBranchID;
