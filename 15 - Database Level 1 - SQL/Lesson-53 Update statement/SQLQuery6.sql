UPDATE Employees
set salary = salary + 5000
where salary < 5000;


UPDATE Employees
SET salary = salary * 1.1
where salary >= 5000 and salary < 10000;

SELECT * FROM Employees
