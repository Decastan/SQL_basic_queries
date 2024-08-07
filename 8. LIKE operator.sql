## Like Operator

# % - zero, one, or multiple characters
# _ - single character

##Example 1: Sí se incluye el % incluirá zero one o muchos caracteres 
SELECT *
FROM customers
WHERE first_name LIKE 'K%'
;

##Example 2 
SELECT *
FROM customers
WHERE first_name LIKE '%n'
;

##Example 3 
SELECT *
FROM customers
WHERE first_name LIKE '%n%'
;


##Example 4 
SELECT *
FROM customers
WHERE first_name LIKE '__n'
;

##Example 5
SELECT *
FROM customers
WHERE first_name LIKE '_o_'
;

##Example 6
SELECT *
FROM customers
WHERE first_name LIKE '___kin'
;

##Example 7
SELECT *
FROM customers
WHERE first_name LIKE '%kin'
;

##Example 8
SELECT *
FROM customers
WHERE last_name LIKE 's_____%'
;

##Example 9
SELECT *
FROM customers
WHERE phone LIKE '975%'
;