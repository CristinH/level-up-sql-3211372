-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell. 

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT Customers.FirstName, 
       Customers.LastName,
       Reservations.Date,
       Reservations.PartySize
FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName LIKE 'Ste%' 
      OR 
      Customers.LastName LIKE 'Ste%'
      AND PartySize = 4
ORDER BY Reservations.Date DESC;