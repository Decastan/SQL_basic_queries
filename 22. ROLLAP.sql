#Roll up

##It's a super quick way of adding up your agregate column
SELECT customer_id, SUM(tip) as total_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP
;

#Example 2 
SELECT customer_id, COUNT(tip) as count_tips
FROM customer_orders
GROUP BY customer_id WITH ROLLUP
;