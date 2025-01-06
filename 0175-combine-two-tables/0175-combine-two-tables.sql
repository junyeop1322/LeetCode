# Write your MySQL query statement below
SELECT p.firstName, p.lastName, (
    SELECT city
    FROM Address AS a
    WHERE p.personId = a.personId
) AS city, (
    SELECT state
    FROM Address AS a
    WHERE p.personId = a.personId
) AS state
FROM Person AS p
;