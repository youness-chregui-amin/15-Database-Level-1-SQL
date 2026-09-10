SELECT * FROM Employees
WHERE DepartmentID = 1 OR DepartmentID = 2 OR DepartmentID = 3;

SELECT * FROM Employees
WHERE DepartmentID in (1 , 2 , 3 , 4);

SELECT * FROM EMPLOYEES
WHERE FirstName IN ('John' , 'Jane' , 'Doe' , 'Smith');

SELECT Departments.Name FROM Departments
WHERE 
ID IN (SELECT DepartmentID FROM Employees where MonthlySalary <= 210);


SELECT Departments.Name FROM Departments
WHERE 
ID NOT IN (SELECT DepartmentID FROM Employees where MonthlySalary <= 210);
