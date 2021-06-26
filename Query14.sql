SELECT AVG(Price) AS AveragePrice, Color
FROM Product
GROUP BY (Color)