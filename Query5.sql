Select CartID, Count(ProductID) AS Count
FROM ProductInCart
GROUP BY CartID
ORDER BY Count;