SELECT * FROM Employees
WHERE Gendor = 'f';

SELECT * FROM Employees
WHERE MonthlySalary < 500;

SELECT * FROM Employees
WHERE NOT MonthlySalary < 500 AND Gendor= 'f';

SELECT * FROM Employees
WHERE  CountryID <> 1;

SELECT * FROM Employees
WHERE NOT ExitDate IS NULL;

SELECT * FROM Employees
WHERE NOT ExitDate IS NULL;


SELECT * FROM Employees
WHERE  ExitDate IS NULL;