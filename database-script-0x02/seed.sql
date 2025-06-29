-- ================================
-- Airbnb Clone - Seed Sample Data
-- ================================

-- USERS
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hashed_pwd_1', '0123456789', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pwd_2', '0987654321', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Admin', 'admin@example.com', 'hashed_pwd_3', NULL, 'admin');

-- PROPERTIES
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'Nice and quiet place in the city center.', 'Cairo, Egypt', 450.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Nile View Suite', 'Luxury apartment overlooking the Nile.', 'Giza, Egypt', 800.00);

-- BOOKINGS
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-05', 1800.00, 'confirmed'),
  ('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-08-10', '2025-08-12', 1600.00, 'pending');

-- PAYMENTS
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('p1111111-pppp-pppp-pppp-pppppppppppp', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1800.00, 'credit_card');

-- REVIEWS
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Great place, loved the stay!'),
  ('r2222222-rrrr-rrrr-rrrr-rrrrrrrrrrrr', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Amazing view but a bit pricey.');

-- MESSAGES
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hello, I have a question about the property.'),
  ('m2222222-mmmm-mmmm-mmmm-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Sure! Let me know what you need.');
