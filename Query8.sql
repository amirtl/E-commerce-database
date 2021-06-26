SELECT * FROM Product 
WHERE Color = 'Red' and Price > (SELECT AVG(Price) FROM Product);
