-- EXISTS

SELECT *
FROM customers
WHERE customer_id IN
	(SELECT customer_id
    FROM customer_orders)
;


-- EXAMPLE 1

SELECT *
FROM customers c
WHERE EXISTS
	(SELECT customer_id
    FROM customer_orders
    WHERE customer_id = c.customer_id)
;