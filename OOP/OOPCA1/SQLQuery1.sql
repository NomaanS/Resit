-- Create table for Students
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    County VARCHAR(50),
    Age INT,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    StudentNumber INT
);

-- Inserting fake data for Students
INSERT INTO Students (StudentID, Name, Address, County, Age, Phone, Email, StudentNumber) VALUES
    (1, 'Emma Johnson', '123 Main St', 'Dublin', 20, '123-456-7890', 'emma.johnson@example.com', 10001),
    (2, 'Oliver Wilson', '456 Elm St', 'Cork', 22, '987-654-3210', 'oliver.wilson@example.com', 10002),
    (3, 'Sophia Lee', '789 Oak St', 'Galway', 19, '111-222-3333', 'sophia.lee@example.com', 10003),
    (4, 'Noah Williams', '246 Pine St', 'Kerry', 21, '444-555-6666', 'noah.williams@example.com', 10004),
    (5, 'Ava Brown', '777 Cedar Rd', 'Dublin', 23, '888-999-0000', 'ava.brown@example.com', 10005),
    (6, 'Liam Jones', '222 Maple Ave', 'Galway', 27, '333-444-5555', 'liam.jones@example.com', 10006),
    (7, 'Mia Taylor', '333 Oak Ave', 'Cork', 26, '777-888-9999', 'mia.taylor@example.com', 10007),
    (8, 'Noah Anderson', '444 Elm St', 'Kerry', 25, '222-333-4444', 'noah.anderson@example.com', 10008),
    (9, 'Emma Smith', '111 Birch Rd', 'Dublin', 28, '666-777-8888', 'emma.smith@example.com', 10009),
    (10, 'Oliver Wilson', '222 Pine Ave', 'Cork', 24, '999-000-1111', 'oliver.wilson@example.com', 10010);

-- Create table for Lecturers
CREATE TABLE Lecturers (
    LecturerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(200),
    County VARCHAR(50),
    Age INT,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Gender VARCHAR(10), -- New column for Gender
    Pay DECIMAL(10, 2)
);

-- Inserting fake data for Lecturers
INSERT INTO Lecturers (LecturerID, Name, Address, County, Age, Phone, Email, Gender, Pay) VALUES
    (1, 'Professor Brown', '789 Maple Ave', 'Dublin', 45, '555-111-2222', 'prof.brown@example.com', 'Male', 5000.00),
    (2, 'Dr. Lee', '321 Oak Ave', 'Cork', 38, '333-444-5555', 'dr.lee@example.com', 'Female', 7500.00),
    (3, 'Mrs. Johnson', '444 Elm St', 'Galway', 55, '777-888-9999', 'mrs.johnson@example.com', 'Female', 6000.00),
    (4, 'Mr. Smith', '111 Birch Rd', 'Kerry', 32, '222-333-4444', 'mr.smith@example.com', 'Male', 5200.00),
    (5, 'Mrs. Adams', '222 Pine Ave', 'Dublin', 41, '666-777-8888', 'mrs.adams@example.com', 'Female', 5800.00),
    (6, 'Dr. White', '555 Cedar Rd', 'Cork', 49, '444-555-6666', 'dr.white@example.com', 'Male', 6200.00),
    (7, 'Mrs. Clark', '666 Elm St', 'Galway', 52, '888-999-0000', 'mrs.clark@example.com', 'Female', 5700.00),
    (8, 'Professor Green', '777 Maple Ave', 'Dublin', 48, '222-333-4444', 'prof.green@example.com', 'Male', 5400.00),
    (9, 'Dr. Allen', '333 Oak Ave', 'Cork', 37, '777-888-9999', 'dr.allen@example.com', 'Female', 7100.00),
    (10, 'Mr. Young', '444 Elm St', 'Galway', 42, '666-777-8888', 'mr.young@example.com', 'Male', 5900.00);