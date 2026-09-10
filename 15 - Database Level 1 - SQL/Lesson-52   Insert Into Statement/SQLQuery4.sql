CREATE TABLE Employees (
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
	HireDate DATE,
	Salary DECIMAL(10, 2)
);

INSERT INTO Employees 
VALUES 
--(1, 'Youness', 'Chergui', 'Chergui@gmil.com', '2020-01-15', 50000.00),
(2, 'Sara',  'Benani',     'added@gmail.com', '2019-03-10', 60000.00),
(3, 'John',  'Doe',     'adfakl2@gmil.com', '2021-07-20', 55000.00);


INSERT INTO Employees
VALUES 
(6, 'Emily', 'Smith','adf@gmail.com', '2022-05-01', 62000.00)

delete from Employees where EmployeeID = 1;

SELECT * FROM Employees 
WHERE Salary >= 1000;

INSERT INTO Employees
VALUES 

(7, 'Michael', 'Johnson', 'ald@gamil.com', '2023-02-15', 1500.00),
(8, 'Jessica', 'Williams', 'kig@gmail.com', '2020-11-30', 2000.00),
(9, 'David', 'Brown', 'jie@gamil.com', '2018-08-25', 500.00);



INSERT INTO Employees
VALUES 
(1, 'Youness', 'Chergui', 'Chergui@gamil.com', '2020-01-15', 50000.00),
(4, 'Alice', 'Johnson', 'aljoh@gmill.com', '2019-05-20', 70000.00),
(5, 'Bob', 'Smith', 'jdi@gmail.com', '2021-09-10', 45000.00);