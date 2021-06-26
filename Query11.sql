/*Query for finding the 2nd most expensive product */
SELECT DISTINCT Price FROM Product p1
WHERE 2 = (SELECT COUNT(DISTINCT Price ) FROM Product  p2
WHERE p1.Price<=p2.Price);
SELECT * FROM Product 
ORDER BY Price;