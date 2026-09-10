

CREATE VIEW ActiveEmployees AS
SELECT * FROM Employees
where ExitDate is Null;

create view ResignedEmployees as
SELECT * FROM Employees
where ExitDate is not Null;


select * FRom ResignedEmployees;



SELECT * FROM ActiveEmployees;


CREATE VIEW ActiveNames AS
SELECT ID , FirstName , LastName , Gendor from Employees


select * from ActiveNames;


// or 
Select * from
(
SELECT ID , FirstName , LastName , Gendor from Employees
)R1