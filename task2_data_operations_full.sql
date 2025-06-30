
-- Use the LibraryDB
USE LibraryDB;

-- INSERT INTO Authors
INSERT INTO Authors (name) VALUES 
('J.K. Rowling'),
('George Orwell'),
('Jane Austen'),
('Agatha Christie'),
('Mark Twain'),
('Leo Tolstoy'),
('Ernest Hemingway'),
('F. Scott Fitzgerald'),
('Isaac Asimov'),
('Unknown');

-- INSERT INTO Categories
INSERT INTO Categories (name) VALUES 
('Fiction'),
('Science Fiction'),
('Classics'),
('Mystery'),
('Biography'),
('Fantasy'),
('Horror'),
('Romance'),
('Historical'),
('Adventure');

-- INSERT INTO Books
INSERT INTO Books (title, category_id) VALUES 
('1984', 2),
('Pride and Prejudice', 3),
('Harry Potter and the Philosopher\'s Stone', 6),
('The Murder of Roger Ackroyd', 4),
('Adventures of Huckleberry Finn', 10),
('War and Peace', 9),
('The Old Man and the Sea', 9),
('The Great Gatsby', 3),
('Foundation', 2),
('Untitled Manuscript', NULL);

-- INSERT INTO Books_Authors
INSERT INTO Books_Authors (book_id, author_id) VALUES
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- INSERT INTO Members
INSERT INTO Members (name, email) VALUES 
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com'),
('Charlie Davis', NULL),
('Diana Prince', 'diana@example.com'),
('Ethan Hunt', 'ethan@example.com'),
('Fiona Gallagher', 'fiona@example.com'),
('George Clooney', 'george@example.com'),
('Hannah Baker', 'hannah@example.com'),
('Ian Malcolm', 'ian@example.com'),
('Jenny Sparks', 'jenny@example.com');

-- INSERT INTO Loans
INSERT INTO Loans (book_id, member_id, loan_date, return_date) VALUES 
(1, 1, '2025-06-20', '2025-06-23'),
(2, 2, '2025-06-21', NULL),
(3, 3, '2025-06-22', '2025-06-23'),
(4, 4, '2025-06-22', '2025-06-24'),
(5, 5, '2025-06-23', NULL),
(6, 6, '2025-06-23', '2025-06-25'),
(7, 7, '2025-06-24', NULL),
(8, 8, '2025-06-24', '2025-06-26'),
(9, 9, '2025-06-25', NULL),
(10, 10, '2025-06-25', '2025-06-27');

-- UPDATE: Mark return date for Bob's loan
UPDATE Loans
SET return_date = '2025-06-24'
WHERE member_id = 2 AND book_id = 2;

-- UPDATE: Assign category to "Untitled Manuscript"
UPDATE Books
SET category_id = 4
WHERE title = 'Untitled Manuscript';

-- DELETE: Remove author "Unknown"
DELETE FROM Authors
WHERE name = 'Unknown';

-- DELETE: Remove members with no email
DELETE FROM Members
WHERE email IS NULL;
