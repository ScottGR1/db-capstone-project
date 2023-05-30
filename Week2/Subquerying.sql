select Cuisine from Menu 
where MenuItemID=any (select MenuItemID 
				  from Orders 
                  where Quantity>2) 