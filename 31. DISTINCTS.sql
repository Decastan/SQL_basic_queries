-- UNIONS

SELECT *
FROM customers
;

SELECT *
FROM products
;

-- Example 1: what not to do
SELECT first_name, last_name
FROM customers
UNION
SELECT product_id, product_name
FROM products;

-- Example 2: how unions works
SELECT first_name, last_name, 'Old'
FROM customers
WHERE YEAR(birth_date) < 1950
UNION
SELECT first_name, last_name, 'Good Tipper'
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
;



-- Example 3: Multiple Unions
SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION
SELECT first_name, last_name, 'Good Tipper'
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
UNION 
SELECT first_name, last_name, 'Big Spender'
FROM customers c 
WHERE total_money_spent > 1000
ORDER BY first_name, last_name
;



-- Example 4: UNION DISTINCT

SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION DISTINCT
SELECT first_name, last_name, 'Good Tipper'
FROM customers c 
JOIN customer_orders co
	ON c.customer_id = co.customer_id
WHERE tip > 3
UNION DISTINCT
SELECT first_name, last_name, 'Big Spender'
FROM customers c 
WHERE total_money_spent > 1000
ORDER BY first_name, last_name
;



-- Example 5: Union All

SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION ALL
SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
;



-- Example 6: Union All VS Union Distinct

SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
UNION DISTINCT
SELECT first_name, last_name, 'Old' as Label
FROM customers
WHERE YEAR(birth_date) < 1950
;