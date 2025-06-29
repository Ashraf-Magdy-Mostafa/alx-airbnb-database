# Airbnb Database Schema (0x01)


This directory contains the SQL schema for the Airbnb Clone project database. The schema is written in compliance with **Third Normal Form (3NF)**, ensuring optimized data integrity and performance.

---

## 📜 Files

- `schema.sql`  
  Contains all SQL `CREATE TABLE` statements for the core entities of the Airbnb system, including primary keys, foreign keys, constraints, and indexes for performance optimization.

- `README.md`  
  This file, explaining the purpose of the schema and key design choices.

---

## 🏗️ Tables Overview

| Table     | Description |
|-----------|-------------|
| `User`    | Stores user details (guests, hosts, admins) |
| `Property`| Contains listings information created by hosts |
| `Booking` | Holds reservations made by users for properties |
| `Payment` | Payment info related to bookings |
| `Review`  | User-submitted reviews of properties |
| `Message` | Internal messaging system between users |

---

## 🔐 Constraints and Indexes

- **UUIDs** are used for all primary keys.
- **Foreign keys** maintain relationships (e.g., user-property, booking-user).
- **ENUMs** are used for categorical fields (role, status, payment_method).
- **Indexes** are added on all foreign key columns to optimize JOIN performance.

---


