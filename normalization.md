# 📘 Database Normalization Report

## 🎯 Objective

Ensure that the Airbnb clone database schema follows **Third Normal Form (3NF)** by eliminating redundancy, ensuring data integrity, and improving efficiency.

---

## 🔍 Step-by-Step Normalization Process

### ✅ 1. First Normal Form (1NF)

**Rule:**
- Eliminate repeating groups
- Ensure all attributes are atomic

**Assessment:**
- All attributes in the schema contain atomic values (e.g., strings, UUIDs, timestamps).
- No fields contain sets, arrays, or composite values.
- Each table has a unique primary key.

✅ **Conclusion: 1NF is satisfied.**

---

### ✅ 2. Second Normal Form (2NF)

**Rule:**
- Must be in 1NF
- No partial dependency on part of a composite primary key

**Assessment:**
- All tables use **single-column primary keys** (UUIDs).
- Non-key attributes are fully dependent on their table’s primary key.

✅ **Conclusion: 2NF is satisfied.**

---

### ✅ 3. Third Normal Form (3NF)

**Rule:**
- Must be in 2NF
- No transitive dependency (i.e., non-key attributes must not depend on other non-key attributes)

**Assessment per table:**

| Table      | Analysis                                                                 | 3NF Status |
|------------|--------------------------------------------------------------------------|------------|
| `User`     | All attributes directly depend on `user_id`.                             | ✅          |
| `Property` | All fields depend on `property_id`; `host_id` is a proper foreign key.   | ✅          |
| `Booking`  | `user_id` and `property_id` are FKs; other attributes depend on `booking_id`. | ✅     |
| `Payment`  | All attributes depend on `payment_id`; no derived or transitive data.    | ✅          |
| `Review`   | Attributes depend on `review_id`; `user_id` and `property_id` are FKs.   | ✅          |
| `Message`  | All fields depend on `message_id`; sender and recipient are FKs.         | ✅          |

✅ **Conclusion: 3NF is satisfied.**

---
## 📎 Summary Table
| Normal Form | Requirements Met | Schema Status |
|-------------|------------------|----------------|
| 1NF         | Atomic values, unique rows | ✅ |
| 2NF         | Full dependency on primary key | ✅ |
| 3NF         | No transitive dependencies | ✅ |

