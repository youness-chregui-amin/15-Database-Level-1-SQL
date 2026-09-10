SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


SELECT Customers.Name,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
where Orders.CustomerID is NULL;


SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM     Customers LEFT OUTER JOIN
                  Orders ON Customers.CustomerID = Orders.CustomerID



                  SELECT Customers.CustomerID, Customers.Name, Orders.Amount
FROM     Customers LEFT  JOIN
                  Orders ON Customers.CustomerID = Orders.CustomerID

