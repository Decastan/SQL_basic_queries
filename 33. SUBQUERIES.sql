### SUBQUERIES


SELECT *
FROM customers
;

## Example 1
SELECT *
FROM customers
WHERE customer_id IN 
	(SELECT customer_id
	FROM customer_orders)
;

## Example 2: Se ouede realizar una subquiere para optimizar el código y toner que hacer un join
SELECT *
FROM customers
WHERE customer_id IN 
	(SELECT customer_id
	FROM customer_orders
    WHERE tip > 1)
;


## Example 3: wich customers have high average amount spend in bakery
SELECT *
FROM customers
WHERE total_money_spent > (SELECT AVG(total_money_spent)
							FROM customers)
;


-- QUIZ example: Everyone at Analyst Builder is supposed to receive a bonus at the end of the year.
-- Unfortunately some people didn't receive their bonus as was promised.
-- Write a query to determine the employees who did not receive their bonus so we can notify accounting.
-- Return their id and name in the output. Order the id from lowest to highest.

SELECT employee_id, name
FROM employee
WHERE employee_id NOT IN (
  SELECT emp_id
  FROM bonus
)
ORDER BY 1;

