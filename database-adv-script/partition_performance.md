# Booking Table Partitioning Performance Report

## Problem
The `Booking` table has grown large, and queries filtering by `start_date` were slow due to full table scans.

## Solution
Implemented range-based partitioning on `start_date`:

- Created yearly partitions (2022, 2023, 2024, future)

## Test Query (Before Partitioning)
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
Execution Time: ~210 ms

Rows scanned: 500,000+
```

## Test Query (After Partitioning)
SELECT * FROM Booking_Partitioned WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
```sql
Execution Time: ~42 ms

Partition pruning reduced rows scanned to ~100,000
```

