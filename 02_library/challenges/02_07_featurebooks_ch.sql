-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT DISTINCT Title FROM Books
JOIN Loans ON Books.BookID = Loans.BookID
WHERE Loans.ReturnedDate IS NOT NULL 
AND Books.Published >= 1890 AND Books.Published <= 1899;

/*
SELECT Title, Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
AND (BookID NOT IN 
  (SELECT BookID 
  FROM Loans 
  WHERE ReturnedDate IS NULL)) 
ORDER BY Title; */