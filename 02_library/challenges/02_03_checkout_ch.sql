-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
SELECT PatronID FROM Patrons WHERE LastName = 'Vaan';
SELECT BookID FROM Books WHERE  Barcode = 2855934983;
SELECT BookID FROM Books WHERE  Barcode = 4043822646;

SELECT LoanID FROM Loans 
WHERE (BookID = 11 OR BookID = 93) 
AND ReturnedDate IS NULL;

INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES (11, 50, '2022-08-25', '2022-09-08'),
       (93, 50, '2022-08-25', '2022-09-08');

SELECT * FROM Loans ORDER BY LoanID DESC
LIMIT 5;

SELECT * FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
WHERE PatronID = 50
ORDER BY LoanDate DESC;