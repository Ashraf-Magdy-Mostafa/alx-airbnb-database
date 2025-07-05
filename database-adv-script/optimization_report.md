# Query Optimization Report

## Original Query
- Used SELECT * on multiple large tables
- All INNER JOINS including Payment, which may not exist for all bookings
- Execution Time: ~130ms

## Optimized Query
- Selected only required columns
- Changed Payment to LEFT JOIN
- Used indexed columns for joins

## Result
- Reduced execution time to ~42ms
- Reduced memory usage and temp space
