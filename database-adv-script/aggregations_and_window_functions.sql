SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

SELECT 
    p.property_id,
    p.name,
    COUNT(Booking.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(Booking.booking_id) DESC) AS booking_rank
FROM Property
LEFT JOIN Booking ON Property.property_id = Booking.property_id
GROUP BY Property.property_id, Property.name;
