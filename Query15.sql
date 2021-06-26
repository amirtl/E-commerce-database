SELECT AVG(Cost) AS AverageCost FROM Orders
JOIN ShippedBy 
ON (Orders.OrderID = ShippedBy.OrderID)
WHERE Date LIKE '99/01%'