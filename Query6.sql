SELECT Product.ProductID, AVG(Rate) as Average
FROM Product 
JOIN OrderRateProduct 
ON (Product.ProductID = OrderRateProduct.ProductID)
GROUP BY Product.ProductID
ORDER BY Average;