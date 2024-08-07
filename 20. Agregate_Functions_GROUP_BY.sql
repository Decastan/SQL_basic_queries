## Agregate Functions


## Example 1
SELECT customer_id, AVG(tip) AS avg_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY avg_tips DESC
;


## Example 2
SELECT customer_id, MAX(tip) AS max_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY max_tips DESC
;

## Example 3
SELECT customer_id, MIN(tip) AS min_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY min_tips DESC
;


## Example 4 COUNT (how many times)
SELECT customer_id, COUNT(tip) AS count_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY count_tips DESC
;


##Example 5
SELECT first_name, last_name, COUNT(phone)
FROM customers
GROUP BY first_name, last_name
;


## Example 6 
SELECT product_id, tip, COUNT(tip), COUNT(DISTINCT tip)
FROM customer_orders
GROUP BY product_id, tip
ORDER BY product_id
;


##QUIZZ

SELECT email, COUNT(email) as count
FROM emails
GROUP BY email
HAVING count > 1
ORDER BY email ASC
;
