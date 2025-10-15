use testing;

SELECT employees.ReportsTo,
COUNT(employees.ID) as Members,
ROUND(AVG(employees.Age), 0) as Average_Age
FROM employees
WHERE ReportsTo IS NOT NULL
GROUP BY employees.ReportsTo
ORDER BY employees.ReportsTo;