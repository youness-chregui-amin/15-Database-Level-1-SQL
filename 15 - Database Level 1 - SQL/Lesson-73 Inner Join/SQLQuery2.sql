Select * from Customers;

Select * from Orders;

SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers 
JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers 
INNER JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM Customers 
JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID;



SELECT Customers.CustomerID, Customers.Name, Orders.OrderID, Orders.Amount, Orders.CustomerID AS Expr1
FROM     Customers INNER JOIN
                  Orders ON Customers.CustomerID = Orders.CustomerID

