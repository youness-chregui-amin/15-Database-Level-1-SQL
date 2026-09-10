CREATE TABLE EmployeesTesAi (
    ID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Status VARCHAR(20) DEFAULT 'Active'
);


CREATE TABLE StudentsAi(
StudentID int PRIMARY KEY ,
Name varchar(100) not null,
Age int
);


CREATE TABLE EmployeesTestAi2(
ID int primary key,
firstName varchar(100) not null,
email varchar(200) unique not null,
salary INT CHECK (salary > 0)

);



