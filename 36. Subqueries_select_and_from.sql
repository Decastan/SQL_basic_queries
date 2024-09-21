-- Subqueries in SELECT and FROM statements

-- Example 1
SELECT product_id, 
quantity, 
(SELECT AVG(quantity)
	FROM ordered_items) as avg_quantity
FROM ordered_items
;



-- Example 2
-- Esta es una forma de utilizar las subqueries en el select statement
-- Sirve por ejemplo para realizar cálculos
SELECT product_id, 
quantity, 
(SELECT SUM(quantity)
	FROM ordered_items)sum_quantity,
(quantity/(SELECT SUM(quantity)
	FROM ordered_items)*100) as percent_of_quantity
FROM ordered_items
;




-- Example 3

SELECT product_id, avg_quantity
FROM (SELECT product_id, 
quantity, 
(SELECT AVG(quantity)
	FROM ordered_items) as avg_quantity
FROM ordered_items) AS avg_quant
;


---- Quiz solution

SELECT first_name
FROM users
WHERE user_id IN(
    SELECT user_id
    FROM user_time
    WHERE media_time_minutes > (
      SELECT AVG(media_time_minutes)
      FROM user_time
    )
)
ORDER BY 1;
