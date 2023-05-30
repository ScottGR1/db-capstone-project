CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN booking_date DATE, IN table_number INT, IN customer_id INT)
BEGIN
  DECLARE is_booked INT;
  
  START TRANSACTION;
  
  SELECT COUNT(*) INTO is_booked FROM Bookings 
  WHERE BookingDate = booking_date AND TableNumber = table_number;
  
  IF is_booked > 0 THEN
    ROLLBACK;
    SELECT 'Booking cannot be made. Table is already booked.' AS Status;
  ELSE
    INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
    VALUES (booking_date, table_number, customer_id);
    COMMIT;
    SELECT 'Booking made successfully.' AS Status;
  END IF;
  
END
