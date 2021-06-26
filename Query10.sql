SELECT AVG(Rate) AS Rate
FROM Product
JOIN OrderRateProduct
ON (Product.ProductID = OrderRateProduct.ProductID)
WHERE Discount != 0
SELECT AVG(Rate) AS Rate
FROM Product
JOIN OrderRateProduct
ON (Product.ProductID = OrderRateProduct.ProductID)
WHERE Discount = 0