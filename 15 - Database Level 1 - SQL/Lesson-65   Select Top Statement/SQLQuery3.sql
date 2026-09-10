SELECT * From Employees;

SELECT TOP 3 * from Employees;

-- This will show top 10% of the data.
SELECT TOP 10 percent * from Employees;


SELECT MonthlySalary FROM Employees
order by MonthlySalary desc;


SELECT DISTINCT MonthlySalary FROM Employees
order by MonthlySalary desc;

SELECT DISTINCT TOP 3 MonthlySalary  FROM Employees
order by MonthlySalary desc;




SELECT ID , FirstName , LastName, MonthlySalary FROM Employees
WHERE MonthlySalary 
IN
(
SELECT DISTINCT TOP 3 MonthlySalary  FROM Employees
order by MonthlySalary desc
)
order by MonthlySalary Desc;



SELECT ID , FirstName , LastName, MonthlySalary FROM Employees
WHERE MonthlySalary 
IN
(
SELECT DISTINCT TOP 3 MonthlySalary  FROM Employees
order by MonthlySalary  desc
)
order by MonthlySalary Desc;