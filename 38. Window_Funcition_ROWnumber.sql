### Window Functions Basics
### ROW NUMBER

##Example 1

SELECT c.customer_id,
first_name,
order_total,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total ASC)
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id

;


## Example 2:
SELECT *
FROM (
SELECT c.customer_id,
first_name,
order_total,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_total ASC) AS row_num
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id
) AS row_table
WHERE row_num < 3
;


## quiz 

SELECT customer_id, amount,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY amount DESC) AS rm
FROM purchases;