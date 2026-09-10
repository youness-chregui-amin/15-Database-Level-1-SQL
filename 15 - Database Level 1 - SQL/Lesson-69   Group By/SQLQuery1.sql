SELECT 
	TotalCount =  COUNT (MonthlySalary),
	TotalSum = Sum(MonthlySalary),
	Average = Avg(MonthlySalary),
	Min = Min(MonthlySalary),
	Max = Max(MonthlySalary),
	ResignedEmployees= count(ExitDate)
	FROM Employees;

	-- ResignedEmployees اخد استقال الموظفين عن طريق عد تاريخ الخروج من الشركة


	SELECT DepartmentID ,
	TotalCount =  COUNT (MonthlySalary),
	TotalSum = Sum(MonthlySalary),
	Average = Avg(MonthlySalary),
	Min = Min(MonthlySalary),
	Max = Max(MonthlySalary),
	ResignedEmployees= count(ExitDate)

	FROM Employees 
	GROUP BY DepartmentID
	ORDER BY DepartmentID;


