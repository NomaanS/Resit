INSERT INTO [Branch] ([BranchName], [Location], [ContactNumber])
VALUES
  ('Downtown Gym', '123 Main St, City A', '555-1234'),
  ('Fitness Haven', '456 Oak Ave, City B', '987-5678'),
  ('Elite Fitness Center', '789 Maple Rd, City C', '111-2222'),
  ('FitZone', '321 Elm St, City D', '444-3333'),
  ('PowerGym', '555 Pine Rd, City E', '999-8888');

  INSERT INTO [Trainer] ([EmployeeNumber], [TrainerName], [DateOfBirth], [CertificationLevel], [BranchID])
VALUES
  ('T001', 'John Doe', '1985-05-10', 'Advanced', 100),
  ('T002', 'Jane Smith', '1990-12-15', 'Intermediate', 101),
  ('T003', 'Mike Johnson', '1988-08-20', 'Expert', 102),
  ('T004', 'Emily Brown', '1993-03-25', 'Intermediate', 103),
  ('T005', 'David Lee', '1980-11-05', 'Expert', 104);

  INSERT INTO [Machine] ([MachineName], [Manufacturer], [EquipmentType])
VALUES
  ('Treadmill', 'Company A', 'Cardio'),
  ('Bench Press', 'Company B', 'Strength'),
  ('Yoga Mat', 'Company C', 'Flexibility'),
  ('Elliptical Trainer', 'Company D', 'Cardio'),
  ('Dumbbells', 'Company E', 'Strength');

  INSERT INTO [Session] ([Schedule], [MaxCapacity], [TrainerID])
VALUES
  ('Mon 10:00 AM', '10', 100),
  ('Tue 5:00 PM', '15', 101),
  ('Wed 8:00 AM', '8', 102),
  ('Thu 6:30 PM', '12', 103),
  ('Fri 7:00 AM', '10', 104);

  INSERT INTO [Member] ([MembershipNumber], [FullName], [Address], [PhoneNumber], [EmailAddress], [Gender])
VALUES
  ('M001', 'Alice Johnson', '123 Oak St, City X', '111-2222', 'alice@email.com', 'F'),
  ('M002', 'Bob Smith', '456 Elm Rd, City Y', '333-4444', 'bob@email.com', 'M'),
  ('M003', 'Ella Davis', '789 Maple Ave, City Z', '555-6666', 'ella@email.com', 'F'),
  ('M004', 'Jack Brown', '321 Pine St, City W', '777-8888', 'jack@email.com', 'M'),
  ('M005', 'Sophia Lee', '555 Cedar Rd, City V', '999-0000', 'sophia@email.com', 'F');

  INSERT INTO [Program] ([DateCreated], [NextReviewDate], [ProgramType], [MemberID])
VALUES
  ('2023-07-01', '2023-08-01', 'Weight Loss', 100),
  ('2023-07-05', '2023-08-05', 'Strength Training', 101),
  ('2023-07-10', '2023-08-10', 'Flexibility', 102),
  ('2023-07-15', '2023-08-15', 'Cardio', 103),
  ('2023-07-20', '2023-08-20', 'Endurance', 104);

  INSERT INTO [ProgrameDetails] ([ProgramID], [MachineID], [Reps], [Sets])
VALUES
  (100, 100, '12', '3'),
  (100, 101, '10', '4'),
  (101, 102, '15', '3'),
  (101, 100, '10', '3'),
  (102, 103, '8', '3');
