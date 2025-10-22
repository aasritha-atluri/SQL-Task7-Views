# Task 7 - Creating Views

This repository contains the SQL script for **Task 7** of the SQL Developer Internship.  
It demonstrates how to create and use **views** in the Library Management System database.


## Objective
Learn how to use **CREATE VIEW** to:
- Simplify complex SELECT queries  
- Provide abstraction and security  
- Reuse query logic easily  


## Tools
- **MySQL Workbench**  
- **DB Browser for SQLite**  


## What is Covered

1. **CREATE VIEW with complex SELECTs**
   - Joins multiple tables
   - Filtering (WHERE)
   - Calculations (derived columns)

2. **Views for Abstraction and Security**
   - Hide table complexity
   - Avoid exposing sensitive columns (like emails/phone)

3. **Usage Examples**
   - Querying views like normal tables  
   - Applying additional filters


## Files
- **task7.sql** → Contains view definitions for:
  1. `CurrentlyBorrowedBooks` → List of books currently loaned to members
  2. `BookAvailability` → Summary of each book’s total, available, and borrowed copies  


## How to Run

1. Open your SQL tool (MySQL Workbench or DB Browser for SQLite).  
2. Make sure your **Library Management System** schema exists.  
3. Run `task7.sql` to create the views.  
4. Execute example queries on views to see the results:

```sql
-- See all currently borrowed books
SELECT * FROM CurrentlyBorrowedBooks;

-- Check book availability summary
SELECT * FROM BookAvailability;
SELECT * FROM BookAvailability WHERE copies_available < 2;
