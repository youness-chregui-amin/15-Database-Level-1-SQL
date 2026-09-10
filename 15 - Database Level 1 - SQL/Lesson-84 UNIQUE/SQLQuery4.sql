CREATE TABLE Persons (
   ID INT NOT NULL,
   LastName VARCHAR(255) NOT NULL,
   FirstName VARCHAR(255),
   Age INT,

   CONSTRAINT UC_Person
   UNIQUE (ID, LastName)
);

select * from Persons;