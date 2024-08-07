# Order By

##Example 1

SELECT *
FROM customers
ORDER BY first_name
;

##Example 2

SELECT *
FROM customers
ORDER BY first_name DESC
;

##Example 3

SELECT *
FROM customers
ORDER BY state, total_money_spent
;


##Example 4

SELECT *
FROM customers
ORDER BY state DESC , total_money_spent DESC
;

##Example 5

SELECT *
FROM customers
ORDER BY 8 DESC, 9 ASC
; 