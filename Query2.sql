/* Average Cost Each Customer in Different Cities Pays For Orders */
SELECT City, AVG(TotalCost) AS Average
FROM PersonalInfoCustomer 
JOIN 
CustomerGivesOrder
ON (PersonalInfoCustomer.CustomerID = CustomerGivesOrder.CustomerID)
JOIN 
Cart 
ON (CustomerGivesOrder.CartID = Cart.CartID)
GROUP BY(City)