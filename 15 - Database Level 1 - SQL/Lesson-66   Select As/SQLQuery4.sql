select * from employees;

SELECT A = 5 * 5 , B = 5 * 5 * 5 ; 


SELECT A = 5 * 5 , B = 5 * 5 * 5  FROM employees; 

SELECT ID , FirstName + ' ' + LastName as fullName FrOM employees;


Select ID, FullName = FirstName + ' ' + LastName  From Employees;

SELECT ID , FirstName , MonthlySalary , YearSalary = MonthlySalary * 12 
FROM Employees;

SELECT ID , FirstName , MonthlySalary , YearSalary = MonthlySalary * 12 
,BounsAmount = MonthlySalary * BonusPerc 
FROM Employees;


ALTER TABLE dbo.Employees
ALTER COLUMN MonthlySalary MONEY; -- أو DECIMAL(18, 2)




SELECT Today = getDate();

SELECT ID, FullName = FirstName + ' ' + LastName ,Age = DATEDIFF(YEAR, DateOfBirth , getDATe () )
FROM Employees;

SELECT ID, FullName = FirstName + ' ' + LastName ,Age = DATEDIFF(Month, DateOfBirth , getDATe () )
FROM Employees;

UPDATE dbo.Employees
SET FirstName = 'Ahmed', LastName = 'Darwish' , DateOfBirth = '2004-03-22' , MonthlySalary = 50000 , BonusPerc = 0.25
WHERE ID = 285;



select top 1 * from Employees
where ID = 285
order by ID desc;