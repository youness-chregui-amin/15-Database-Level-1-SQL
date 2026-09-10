SELECT TotalCount =  COUNT (MonthlySalary),
	TotalSum = Sum(MonthlySalary),
	Average = Avg(MonthlySalary),
	Min = Min(MonthlySalary),
	Max = Max(MonthlySalary),
	ResignedEmployees= count(ExitDate)
	FROM Employees;

	-- ResignedEmployees اخد استقال الموظفين عن طريق عد تاريخ الخروج من الشركة


	SELECT TotalCount =  COUNT (MonthlySalary),
	TotalSum = Sum(MonthlySalary),
	Average = Avg(MonthlySalary),
	Min = Min(MonthlySalary),
	Max = Max(MonthlySalary)

	FROM Employees WHERE DepartmentID = 1;


	select * from employees;

	SELECT TotalEmployees = count (ID) From Employees;

	SELECT RESIGNEDEmployees = count (ExitDate) From Employees;




	SELECT 
	avg = AVG(MonthlySalary)	
	FROM Employees 
	WHERE ExitDate is null and DateofBirth  between '1997-1-1' and '1998-12-31'
	and DepartmentID in (1 ,2 );