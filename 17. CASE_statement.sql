# Case Statement


SELECT order_total,
tip,
IF (tip > 2, order_total * 0.75, order_total*1.1) as new_total,
IF (tip > 2, order_total * 0.75, order_total*1.1) as new_total
FROM customer_orders
;

##Example 1 of CASE statement
SELECT
units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'check in 3 days'
    WHEN units_in_stock > 51 THEN 'In stock'
END AS 'Order_Status'
FROM products
;


##Example 2 of CASE statement
SELECT
units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN 'ORDER NOW!'
    WHEN units_in_stock BETWEEN 21 AND 50 THEN 'check in 3 days'
    ELSE 'In stock'
END AS 'Order_Status'
FROM products
;



SELECT 
order_id,
order_date,
CASE
	WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Active'
    WHEN YEAR(order_date) = YEAR(NOW()) - 2 THEN 'Last Year'
    ELSE 'Archived'
    END as 'Years'
FROM customer_orders;


### QUIZZZ

SELECT
employee_id,
pay_level,
salary,
CASE
    WHEN pay_level = 1 THEN salary * 1.1
    WHEN pay_level = 2 THEN salary * 1.15
    WHEN pay_level = 3 THEN salary * 3
    END as new_salary
FROM employees;