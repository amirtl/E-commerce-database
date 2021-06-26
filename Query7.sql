SELECT SupplierID, AVG(Rate) AS Average FROM Supplies
JOIN OrderRateProduct 
ON (Supplies.ProductID = OrderRateProduct.ProductID)
GROUP BY SupplierID
ORDER BY Average;