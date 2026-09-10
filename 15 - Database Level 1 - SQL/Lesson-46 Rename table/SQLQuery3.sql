

--ALTER TABLE dbo.Employees
--RENAME TO dbo.Emp;

exec sp_rename 'dbo.Employees', 'Emp';