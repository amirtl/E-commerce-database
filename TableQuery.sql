CREATE TABLE OrderRateProduct (
	ProductID int NOT NULL FOREIGN KEY REFERENCES Product(ProductID),
	CustomerID int NOT NULL FOREIGN KEY REFERENCES Customer(CustomerID),
	OrderID int NOT NULL FOREIGN KEY REFERENCES Orders(OrderID),
	Rate int NOT NULL,
	CONSTRAINT PK_OrderRateProduct PRIMARY KEY (ProductID, CustomerID, OrderID)
);