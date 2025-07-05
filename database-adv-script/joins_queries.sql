SELECT * FROM Booking 
INNER JOIN User ON Booking.user_id = User.user_id;


SELECT * FROM Property 
LEFT JOIN Review ON property.property_id = Review.property_id
ORDER BY Property.name

SELECT * FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id;