## Numeric Functions

SELECT *
FROM products
;


SELECT ROUND(123.456789, 2);

#Example 1
SELECT sale_price, ROUND(sale_price,1)
FROM products
;


SELECT CEILING(5.7);

SELECT CEILING(5.3);

#Example 2
SELECT sale_price, CEILING(sale_price)
FROM products;

#Example 3
SELECT sale_price, CEILING(sale_price), FLOOR(sale_price)
FROM products;


SELECT ABS(-4.6);