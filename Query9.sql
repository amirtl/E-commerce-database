SELECT CategoryName, AVG(Price) 
AS AveragePrice, MAX(Price) AS MaxPrice, MIN(Price) 
AS MinPrice FROM
Category JOIN Product 
ON (Category.CategoryID = Product.CategoryID)
GROUP BY Category.CategoryName
ORDER BY AveragePrice;