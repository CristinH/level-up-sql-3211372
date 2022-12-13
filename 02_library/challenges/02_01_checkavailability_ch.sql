-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT COUNT(BookID) FROM Books
WHERE Title = 'Dracula';

SELECT COUNT(Books.Title) 
FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
WHERE Books.Title = 'Dracula'
    AND Loans.ReturnedDate IS NULL;

SELECT
(SELECT COUNT(BookID) FROM Books
WHERE Title = 'Dracula') - 
(SELECT COUNT(Books.Title) 
FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
WHERE Books.Title = 'Dracula'
    AND Loans.ReturnedDate IS NULL)
AS AvailableCopies;
