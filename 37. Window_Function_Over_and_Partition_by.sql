### Window Functions Basics
### Over Clause and Patition By 


##Example 1

SELECT c.customer_id,
first_name,
order_total,
MAX(order_total) OVER(PARTITION BY customer_id) AS max_order_total
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id

;

