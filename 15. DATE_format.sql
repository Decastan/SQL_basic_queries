## Date and Date Format Functions

SELECT * 
FROM customers
;

SELECT NOW(), 
CURDATE(),
CURTIME();

## Selecting just the currently year
SELECT YEAR(NOW());

## Selecting the currently year, month and day
SELECT 
YEAR(NOW()),
MONTH(NOW()),
DAY(NOW());


SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW());


SELECT *
FROM customer_orders
WHERE YEAR(order_date)  = YEAR(NOW()) -1
;


SELECT DAYNAME (NOW());


SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
FROM customer_orders;



##date format into a new format

SELECT birth_date, DATE_FORMAT(birth_date, '%M %d %Y')
FROM customers;



SELECT birth_date, DATE_FORMAT(birth_date, '%m %d %Y')
FROM customers;



SELECT birth_date, DATE_FORMAT(birth_date, '%m-%d-%Y')
FROM customers;


