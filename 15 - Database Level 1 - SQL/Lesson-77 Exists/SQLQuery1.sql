SELECT X = 'yes'
where exists
	(
		select * from Orders
		where CustomerID = 3 and Amount < 600
	)


SELECT * FROM Customers T1 
WHERE EXISTS
	(
		SELECT * FROM Orders
		WHERE
			CustomerID = T1.CustomerID and Amount < 600
	)





SELECT * FROM Customers T1 
WHERE EXISTS
	(
		SELECT TOP 1 *  FROM Orders
		WHERE
			CustomerID = T1.CustomerID and Amount < 600
	)


	select  * from Customers T1
	where
		exists 
			(
				select top 1 R = '' from Orders
				Where 
					CustomerID = T1.CustomerID and Amount < 600
			)



select * from Customers C2
	WHERE EXISTS 
	(
	SELECT * FROM ORders
	WHERE 
		Orders.CustomerID = C2.CustomerID
	)

	select * from Customers C2
	WHERE EXISTS 
	(
	SELECT TOP 1 *  FROM ORders
	WHERE 
		Orders.CustomerID = C2.CustomerID
	)


	select * FROM Customers C3
	WHERE EXISTS 
	(
		SELECT TOP 1 * FROM Orders
		Where 
			Orders.CustomerID =  C3.CustomerID  and Amount > 600
	)


	 select * FROM Customers C4 
	 where not exists
	 (
		SELECT TOP 1 * FROM Orders
		Where 
			Orders.CustomerID =  C4.CustomerID  
	)

	select * from Customers
		select * from Orders