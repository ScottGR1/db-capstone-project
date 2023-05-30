SELECT customerdetails.CustomerID, 
	   customerdetails.Name, 
	   Orders.OrderID, 
	   Orders.TotalCost, 
	   Menu.Cuisine, 
	   Menu.Starter, 
	   Menu.Course
FROM customerdetails
JOIN Orders ON customerdetails.CustomerID = Orders.BookingID
JOIN Menu ON Orders.MenuItemID = Menu.MenuItemID
WHERE Orders.TotalCost > 150
ORDER BY Orders.TotalCost ASC;