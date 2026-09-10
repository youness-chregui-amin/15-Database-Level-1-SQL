
USE DB;
CREATE TABLE PersonsNew2 (
    Personid int IDENTITY(10,10) PRIMARY KEY,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255),
   Age int
);

insert into PersonsNew2  values
('Smith', 'John', 30);

select * from PersonsNew2;