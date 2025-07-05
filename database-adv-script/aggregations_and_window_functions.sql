SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;



SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings_received,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_row_number
FROM
    Property AS p
LEFT JOIN
    Booking AS b ON p.property_id = b.property_id
GROUP BY
    p.property_id,
    p.name
ORDER BY
    booking_rank ASC, total_bookings_received DESC; 