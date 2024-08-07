-- Joining on Multiple Conditions



SELECT *
FROM customer_orders
;

SELECT *
FROM customer_orders_review
;


-- Example 1: First Condition "co.customer_id = cor.customer_id"

SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
    AND co.customer_id = cor.customer_id
;


-- Example 2: Second Condition "co.order_date = cor.order_date"

SELECT *
FROM customer_orders co
JOIN customer_orders_review cor
	ON co.order_id = cor.order_id
    AND co.customer_id = cor.customer_id
    AND co.order_date = cor.order_date
;