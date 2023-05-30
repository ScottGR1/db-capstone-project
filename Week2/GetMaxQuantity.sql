CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
  SELECT OrderID, Quantity, TotalCost
  FROM Orders
  ORDER BY Quantity DESC
  LIMIT 1;
END