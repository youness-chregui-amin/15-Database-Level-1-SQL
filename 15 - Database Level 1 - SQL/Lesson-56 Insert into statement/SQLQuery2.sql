create table oldperson (
	id int primary key,
	name varchar(255) not null,
	age int not null
);

create table Person (
	id int primary key,
	name varchar(255) not null,
	age int not null
);
select * from oldperson
where age >= 50;

insert into oldperson (id, name, age) values 
(1, 'John Doe', 75),
(2, 'Jane Smith', 80),
(3, 'Bob Johnson', 85);


insert into Person
Select * from oldperson;


select * from Person;