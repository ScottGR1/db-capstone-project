CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN booking_date DATE, IN table_number INT)
BEGIN
  DECLARE is_booked INT;
  
  SELECT COUNT(*) INTO is_booked FROM Bookings 
  WHERE BookingDate = booking_date AND TableNumber = table_number;
  
  IF is_booked > 0 THEN
    SELECT 'Table is already booked' AS Status;
  ELSE
    SELECT 'Table is available' AS Status;
  END IF;
END