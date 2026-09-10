select * from Employees;

--Finds any values that start with "a"
select ID, FirstName from Employees
where FirstName like 'a%';

--Finds any values that end with "a"
select ID, FirstName from Employees
where FirstName like '%a';

--Finds any values that have "tell" in any position
select ID, FirstName from Employees
where FirstName like '%tell%';

-- Finds any values that start with "a" and ends with "a"
select ID, FirstName from Employees
where FirstName like 'a%a'


--Finds any values that have "a" in the second position
select ID, FirstName from Employees
where FirstName like '_a%';

--Finds any values that have "a" in the third position
select ID, FirstName from Employees
where FirstName like '__a%';


--Finds any values that start with "a" and are at least 3 characters in length
select ID, FirstName from Employees
where FirstName like 'a__%';

--Finds any values that start with "a" and are at least 4 characters in length
select ID, FirstName from Employees
where FirstName like 'a___%';


-- اعرض الموظفين الذين يبدأ اسمهم بحرف M.
select ID, FirstName from Employees
where FirstName like 'M%';

-- اعرض الموظفين الذين ينتهي اسمهم بحرف N.

select ID, FirstName from Employees
where FirstName like '%N';

-- اعرض الموظفين الذين يحتوي اسمهم على:
select ID, FirstName from Employees
where FirstName like '%ah%';

-- اعرض الموظفين الذين الحرف الثالث في اسمهم هو:m
select ID, FirstName from Employees
where FirstName like '__m%';


--اعرض الموظفين الذين يبدأ اسمهم بـ A أو B.
select ID, FirstName from Employees
where FirstName like 'A%' or FirstName Like 'B%';

--اعرض الموظفين الذين:

--يبدأ اسمهم بـ A
--وينتهي بـ D
select ID, FirstName from Employees
where FirstName like 'A%D';

--اعرض الموظفين الذين:

--الحرف الثاني = a
--والحرف الرابع = m



select ID, FirstName from Employees
where FirstName like '_a_m%';