Update Employees 
set FirstName ='Mohammed' , LastName='Abu-Hadhoud'
where ID= 285;


Update Employees 
set FirstName ='Mohammad' , LastName='Maher'
where ID= 286;


select ID, FirstName, LastName from Employees
Where firstName = 'Mohammed' or FirstName ='Mohammad'; 



select ID, FirstName, LastName from Employees
Where firstName Like 'Mohamm[ae]d'; 

select ID, FirstName, LastName from Employees
Where firstName Not like 'Mohamm[ae]d';

select ID, FirstName, LastName from Employees
Where firstName like 'a%' or firstName like 'b%' or firstName like 'c%';


select ID, FirstName, LastName from Employees
Where firstName like '[abc]%';

select ID, FirstName, LastName from Employees
Where firstName like '[a-l]%';

