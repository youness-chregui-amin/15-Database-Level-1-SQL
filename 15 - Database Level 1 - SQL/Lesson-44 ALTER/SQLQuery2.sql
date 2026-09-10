 ALTER TABLE dbo.Employees
 ADD BirhtDate smalldatetime ;


 exec sp_rename 'Employees.Phone', 'PhoneNumbere','COLUMN' ;
