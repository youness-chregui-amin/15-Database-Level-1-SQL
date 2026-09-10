-- Rename column 'Gendor' to 'Gender' in table 'Employees'
EXEC sp_rename 'Employees.Gendor', 'Gender', 'COLUMN';
