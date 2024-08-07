-- Inner Join


SELECT *
FROM customers;

SELECT *
FROM customer_orders;

-- Example 1 : Inner Join (Solo cruzan los datos que hacen match en ambas tablas
SELECT *
FROM customers c
INNER JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id
;



-- Example 2 
SELECT *
FROM products;

SELECT *
FROM customer_orders;

SELECT *
FROM products p
INNER JOIN customer_orders co
	ON p.product_id = co.product_id
ORDER BY p.product_id
;


-- Example 3
SELECT product_name, SUM(order_total) as Total
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2
;

-- Example 4

SELECT *
FROM suppliers;

SELECT *
FROM ordered_items;

SELECT *
FROM suppliers s
INNER JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id;
    
    
    
-- Quiz solution: Find the customer who has watched the greatest number of movies. 
-- Return the Customer Name.
SELECT name
FROM customers c
JOIN date_viewed dv
    ON c.customer_id = dv.customer_id
GROUP BY 1
ORDER BY COUNT(movie_id) DESC
LIMIT 1;
