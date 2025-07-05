SELECT * FROM Booking 
INNER JOIN User ON Booking.user_id = User.user_id

-- property -- review

SELECT * FROM Property 
LEFT JOIN Review ON property.property_id = Review.property_id

SELECT * FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id