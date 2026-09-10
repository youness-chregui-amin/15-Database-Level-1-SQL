CREATE TABLE Customers (
	ID INT ,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Age INT,
	Country VARCHAR(20),
	PRIMARY KEY (ID)
);

CREATE TABLE Orders (
	OrderID INT,
	Item VARCHAR(40),
	OrderDate DATE,
	Amount int,
	--customer_Id INT REFERENCES Customers (id),
	PRIMARY KEY (OrderID)
);



-- Adding foreign key to the customer_id field using alter

ALTER TABLE Orders
ADD FOREIGN KEY (customer_id) REFERENCES Customers(id);
