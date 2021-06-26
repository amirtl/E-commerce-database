/* Average Of Orders Deliverd By Shipper */
SELECT ShippedBy.ShipperID, AVG(TotalCost) AS Average, 
SUM(TotalCost) AS TotalValue,
COUNT(TotalCost) AS Number
FROM ShippedBy 
JOIN CustomerGivesOrder 
ON (ShippedBy.OrderID = CustomerGivesOrder.OrderID)
JOIN Shipper
ON (Shipper.ShipperID = ShippedBy.ShipperID)
JOIN Cart
ON (Cart.CartID = CustomerGivesOrder.CartID)
GROUP BY (ShippedBy.ShipperID)