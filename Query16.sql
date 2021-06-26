SELECT AVG(Cost) AS AverageCost99, COUNT(Cost) AS NumberOfOrders99 FROM Orders
JOIN ShippedBy 
ON (Orders.OrderID = ShippedBy.OrderID)
WHERE Date LIKE '99%'
SELECT AVG(Cost) AS AverageCost98, COUNT(Cost) AS NumberOfOrders98 FROM Orders
JOIN ShippedBy 
ON (Orders.OrderID = ShippedBy.OrderID)
WHERE Date LIKE '98%'
