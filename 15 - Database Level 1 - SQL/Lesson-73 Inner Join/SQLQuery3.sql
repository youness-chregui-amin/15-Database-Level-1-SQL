SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DepartmentName
FROM     Departments INNER JOIN
                  Employees ON Departments.ID = Employees.DepartmentID


                  SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DepartmentName
FROM     Departments INNER JOIN
                  Employees ON Departments.ID = Employees.DepartmentID
                  WHERE Departments.Name= 'IT';

                  
                  SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DepartmentName
FROM     Departments INNER JOIN
                  Employees ON Departments.ID = Employees.DepartmentID
                  WHERE Departments.Name= 'HR';




SELECT Employees.ID, Employees.LastName, Employees.FirstName, Departments.Name as DeptName, Countries.Name AS CountryName
FROM     Employees INNER JOIN
                  Departments ON Employees.DepartmentID = Departments.ID INNER JOIN
                  Countries ON Employees.CountryID = Countries.ID