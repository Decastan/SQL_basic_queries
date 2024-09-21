### Regular Expression Metacharacters


# [-.^$*+?}

## Example 0:
SELECT *
FROM customers
WHERE first_name REGEXP 'K'
;

## Example 1: En este caso busca los nombres que tengan letras de la 'a' a la 'c'
SELECT *
FROM customers
WHERE first_name REGEXP '[a-c]'
;

## Example 2:

SELECT *
FROM customers
WHERE total_money_spent REGEXP'[0-9]'
;

## Example 3:
SELECT *
FROM customers
WHERE phone REGEXP '6.'
;

##Example 4:
SELECT *
FROM customers
WHERE first_name REGEXP 'k...n'
;

##Example 5: Palabras que inician con la letra 'k' al inicio usando '^k'
SELECT *
FROM customers
WHERE first_name REGEXP '^k'
;


##Example6palabras que terminan con la letra 'n' al final usando 'n$'
SELECT *
FROM customers
WHERE first_name REGEXP 'n$'
;

##Example 7:
SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.*'
;


##Example 8:
SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.+'
;



##Example 9:
SELECT *
FROM customers
WHERE first_name REGEXP 'Obi.?'
;


##Example 10:
SELECT *
FROM customers
WHERE first_name REGEXP 'k.{3}n'   ### Or 'k...n' es lo mismo
;


##Example 10:
SELECT *
FROM customers
WHERE first_name REGEXP 'kev|fro';