CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `littlelemondb`.`ordersview` AS
    SELECT 
        `littlelemondb`.`orders`.`OrderId` AS `OrderID`,
        `littlelemondb`.`orders`.`Quantity` AS `Quantity`,
        `littlelemondb`.`orders`.`TotalCost` AS `TotalCost`
    FROM
        `littlelemondb`.`orders`
    WHERE
        (`littlelemondb`.`orders`.`Quantity` > 2)