-- CROSS JOINS


SELECT *
FROM customers
;

SELECT *
FROM customer_orders
;

-- Example 1
SELECT *
FROM customers c
CROSS JOIN customer_orders co
ORDER BY c.customer_id
;


-- Example 2
SELECT c.customer_id, c.first_name, co.customer_id, order_id
FROM customers c
CROSS JOIN customer_orders co
ORDER BY c.customer_id
;