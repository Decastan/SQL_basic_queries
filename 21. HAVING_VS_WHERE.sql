## HAVING VS WHERE Clause


## We can't do this
SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
WHERE total_tips > 5
GROUP BY customer_id
;

##Example 1 
SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id
HAVING total_tips > 5
;

##Example 2
SELECT customer_id, SUM(order_total) as total
FROM customer_orders
GROUP BY customer_id
HAVING SUM(order_total) > 40
ORDER BY 2
;