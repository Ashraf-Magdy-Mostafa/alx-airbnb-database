SELECT *
FROM Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
JOIN Payment ON Booking.booking_id = Payment.booking_id;


-- Optimized query

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
