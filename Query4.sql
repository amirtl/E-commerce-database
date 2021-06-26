Select * 
From ProductInCart
WHERE CartID NOT IN(
Select Cart.CartID From Cart JOIN CustomerGivesOrder 
ON (Cart.CartID = CustomerGivesOrder.CartID));