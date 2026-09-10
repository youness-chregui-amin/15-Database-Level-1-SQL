SELECT ID , FirstName , MonthlySalary From Employees
Where DepartmentID In ( 1 , 2 , 3);

-- This will order the result by the FirstName column in ascending order (A-Z). If you want to order it in descending order (Z-A), you can use:
SELECT ID , FirstName , MonthlySalary From Employees
Where DepartmentID In ( 1 , 2 , 3)
ORDER BY FirstName; 


SELECT ID , FirstName , MonthlySalary From Employees
Where DepartmentID In ( 1 , 2 , 3)
ORDER BY FirstName ASC;


-- This will order the result by the MonthlySalary column in ascending order (lowest to highest). If you want to order it in descending order (highest to lowest), you can use:
SELECT ID , FirstName , MonthlySalary From Employees
Where DepartmentID In ( 1 , 2 , 3)
ORDER BY ID Desc; 




SELECT ID , FirstName , MonthlySalary From Employees
where DepartmentID = 1
ORDER BY MonthlySalary DESC;


SELECT ID , FirstName , MonthlySalary From Employees
where DepartmentID = 1
ORDER BY MonthlySalary ASC;

SELECT ID , FirstName , MonthlySalary From Employees
where DepartmentID = 1
ORDER BY FirstName , MonthlySalary ASC;

SELECT ID , FirstName , MonthlySalary From Employees
where DepartmentID = 1
ORDER BY FirstName , MonthlySalary DESC;