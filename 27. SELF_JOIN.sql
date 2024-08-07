-- SELF JOIN

-- Example 0
SELECT *
FROM customers c
JOIN customers ss
	ON c.first_name = ss.first_name
;


-- Example 1 Self Join(sirve para extrapolar información de la misma tabla

SELECT c.customer_id, c.first_name, c.last_name, ss.customer_id, ss.first_name, ss.last_name
FROM customers c
JOIN customers ss
	ON c.customer_id + 1 = ss.customer_id 
;

-- QUIZ: Provide an output that includes the employee name matched with the name of their boss.
-- If they don't have a boss still include them in the output.
-- Order output on employee name alphabetically.

SELECT b.employee_name, ss.employee_name as Boss_name
FROM boss b
LEFT JOIN boss ss
  ON b.boss_id = ss.employee_id
ORDER BY 1 asc
;
