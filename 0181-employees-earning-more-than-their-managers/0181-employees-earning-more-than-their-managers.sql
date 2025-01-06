# Write your MySQL query statement below
SELECT e.name AS Employee
FROM Employee AS e
WHERE salary > (
    SELECT salary
    FROM Employee As e2
    WHERE e2.id = e.managerId
)
;