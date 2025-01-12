# Write your MySQL query statement below
SELECT d.name AS "Department", e.name AS "Employee", e.salary AS "Salary"
FROM Employee AS e
JOIN Department AS d
ON e.departmentId = d.id
WHERE (e.salary, e.departmentId) IN (
    SELECT MAX(salary), departmentId
    FROM Employee
    GROUP BY departmentId
)
;