SELECT CustomerID, SUM(TotalCost)  AS TotalCartsCost,
COUNT(CustomerID) AS Number  
FROM CustomerGivesOrder
JOIN Cart ON (Cart.CartID = CustomerGivesOrder.CartID)
GROUP BY CustomerID