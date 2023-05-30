CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN order_id INT)
BEGIN
  DELETE FROM Orders
  WHERE OrderID = order_id;
END


