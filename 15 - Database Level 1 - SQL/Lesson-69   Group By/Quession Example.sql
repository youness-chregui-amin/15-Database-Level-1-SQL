

	SELECT DepartmentID ,
	DepatmentCount = COUNT(DepartmentID),
	TotalCountSalary =  COUNT(MonthlySalary),
	MinSalaryBYDepartment = MIN(MonthlySalary),
	MAXSalaryBYDepartment = MAX(MonthlySalary),
	MAXHireDate = MAX(HireDate),
	MINHireDate = MIN(HireDate)
	FROM Employees 
	GROUP BY DepartmentID
	ORDER BY DepartmentID;


	SELECT
	DISTINCT_YEAR = YEAR(HireDate),
	HirdEmployees = count(*) ,
	AVGEMPLOyesssSalary = AVG(MonthlySalary)
	FROM Employees
	GROUP BY YEAR(HireDate)
	ORDER BY YEAR(HireDate)



	
	SELECT
	DISTINCT_YEAR = YEAR(HireDate),
	HirdEmployees = count(ID) 

	FROM Employees
	GROUP BY YEAR(HireDate)
	ORDER BY YEAR(HireDate) DESC

--SELECT * From Employees;