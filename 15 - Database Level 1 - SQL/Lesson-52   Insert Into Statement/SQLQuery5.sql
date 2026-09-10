-- ============================================
-- Lesson 52 - INSERT INTO Statement
-- Extra Practice
-- ============================================

-- Create a simple Students table
CREATE TABLE Students (
    StudentID   INT PRIMARY KEY,
    FirstName   VARCHAR(50) NOT NULL,
    LastName    VARCHAR(50) NOT NULL,
    Email       VARCHAR(100),
    EnrollDate  DATE,
    GPA         DECIMAL(3, 2)
);

-- ----------------------------------------
-- 1. Insert with column names (Recommended)
-- ----------------------------------------
INSERT INTO Students (StudentID, FirstName, LastName, Email, EnrollDate, GPA)
VALUES (1, 'Youness', 'Chergui', 'Chergui@gmail.com', '2023-09-01', 3.90);

-- ----------------------------------------
-- 2. Insert without column names
-- ----------------------------------------
INSERT INTO Students
VALUES (2, 'Sara', 'Benani', 'sara@gmail.com', '2022-09-01', 3.75);

-- ----------------------------------------
-- 3. Insert multiple rows at once
-- ----------------------------------------
INSERT INTO Students (StudentID, FirstName, LastName, Email, EnrollDate, GPA)
VALUES 
    (3, 'John',    'Doe',      'john@gmail.com',    '2021-09-01', 3.50),
    (4, 'Alice',   'Johnson',  'alice@gmail.com',   '2023-01-15', 3.80),
    (5, 'Michael', 'Brown',    'michael@gmail.com', '2020-09-01', 3.20);

-- ----------------------------------------
-- View all inserted data
-- ----------------------------------------
SELECT * FROM Students;
