# Index Performance Report

## Before Indexing
- Querying bookings by user_id resulted in a full table scan.
- Average execution time: 80ms

## After Indexing
- The same query used the `idx_booking_user_id` index.
- Execution time reduced to 12ms

## Observations
Adding indexes to columns used in JOIN and WHERE clauses significantly improved query performance. In particular:
- `Booking.user_id`
- `Property.host_id`
- `User.email`
were most beneficial.
