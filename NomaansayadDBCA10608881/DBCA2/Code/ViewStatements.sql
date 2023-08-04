CREATE VIEW vw_MembersWithPrograms AS
SELECT m.FullName AS MemberName, m.Address AS MemberAddress, p.ProgramType
FROM [Member] m
JOIN [Program] p ON m.MemberID = p.MemberID;

GO


CREATE VIEW vw_TrainersByCertificationLevel AS
SELECT TrainerID, TrainerName, CertificationLevel, DateOfBirth
FROM [Trainer];
GO
SELECT *
FROM vw_TrainersByCertificationLevel
ORDER BY CertificationLevel;

GO


 CREATE VIEW vw_UniqueEquipmentTypes AS
SELECT DISTINCT EquipmentType
FROM [Machine];

GO


 CREATE VIEW vw_ProgramInfo AS
SELECT ProgramID AS ProgramNumber, DateCreated AS CreatedDate, NextReviewDate AS ReviewDate, ProgramType AS Type, MemberID AS MemberNumber
FROM [Program];

GO