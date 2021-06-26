SELECT AVG(TotalCost)  AS AverageCostOfEachCart
FROM CustomerGivesOrder
JOIN Cart ON (Cart.CartID = CustomerGivesOrder.CartID)