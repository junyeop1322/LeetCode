# Write your MySQL query statement below
SELECT c.name AS "Customers"
FROM Customers AS c
WHERE c.id NOT IN (
    SELECT customerId
    FROM Orders
)
;