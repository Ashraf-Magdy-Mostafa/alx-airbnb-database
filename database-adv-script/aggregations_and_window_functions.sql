SELECT 
    user_id, 
    COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;

-- 2. Rank properties based on number of bookings using RANK()
-- ===========================================================
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM
    Property p
LEFT JOIN
    Booking b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    booking_rank;

-- ==================================================================
-- 3. Rank properties based on number of bookings using ROW_NUMBER()
-- ==================================================================
SELECT
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_row_number
FROM
    Property p
LEFT JOIN
    Booking b ON p.property_id = b.property_id
GROUP BY
    p.property_id, p.name
ORDER BY
    booking_row_number;