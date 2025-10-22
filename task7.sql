-- Task 7: Creating Views in Library Management System

-- Make sure you are using your database and that you've created all the tables that are specified in 'Task1'
USE librarydb;

-- View: List of currently borrowed books
CREATE OR REPLACE VIEW CurrentlyBorrowedBooks AS
SELECT 
    t.transaction_id,
    m.name AS member_name,
    b.title AS book_title,
    t.loan_date,
    t.due_date
FROM TransactionRecord t
JOIN Member m ON t.member_id = m.member_id
JOIN Book b ON t.book_id = b.book_id
WHERE t.status = 'Loaned';

-- Example usage:
SELECT * FROM CurrentlyBorrowedBooks;

-- View: Book availability summary
CREATE OR REPLACE VIEW BookAvailability AS
SELECT 
    b.book_id,
    b.title,
    b.copies_total,
    b.copies_available,
    (b.copies_total - b.copies_available) AS copies_borrowed
FROM Book b;

-- Example usage:
SELECT * FROM BookAvailability;
SELECT * FROM BookAvailability WHERE copies_available < 2;
