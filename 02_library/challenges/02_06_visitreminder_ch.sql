-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT COUNT (Loans.LoanID) AS LoanCount, Patrons.FirstName, Patrons.LastName
FROM Loans
JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Loans.PatronID
ORDER BY LoanCount
LIMIT 10;