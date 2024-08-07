### GROUP BY

## Example 1
SELECT customer_id, SUM(tip)
FROM customer_orders
GROUP BY customer_id
;


## Example 2
SELECT product_id, ROUND(AVG(order_total),1) as AVG_order_total
FROM customer_orders
GROUP BY product_id
ORDER BY AVG_order_total DESC
;






