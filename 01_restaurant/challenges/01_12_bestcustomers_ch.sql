-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(Orders.orderID) as OrderCount, Customers.FirstName, Customers.LastName, Customers.Email
FROM Customers
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 5;
