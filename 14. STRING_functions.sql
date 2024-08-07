## String Functions


## Example 1
SELECT *
FROM customers
;

SELECT LENGTH('sky');


## Example 2 LENGTH
SELECT first_name, LENGTH(first_name) as Len_first
FROM customers
ORDER BY LENGTH(first_name) DESC
;

##Example 3 UPPER and LOWER

SELECT first_name, UPPER(first_name), LOWER(first_name)
FROM customers;



##Example 4 TRIM

SELECT '     sky     ', TRIM('     sky'), LTRIM('     sky     '), RTRIM('     sky     ');

##Example 5 TRIM -> In this case doesn't function 
SELECT 'I     Love    SQL', TRIM('I     Love    SQL');




#Example 6 LEFT

SELECT LEFT ('Alexander', 4);


#Example 7 LEFT and RIGHT

SELECT first_name, LEFT(first_name,3), RIGHT(first_name,3)
FROM customers;



#Example 8 SUBSTRING

SELECT SUBSTRING('Alexander',2,3);

#Example 9 SUBSTRING

SELECT phone, SUBSTRING(phone,1,3), SUBSTRING(phone,5,3), SUBSTRING(phone, 9,3)
FROM customers
;


## Example 10 REPLACE

SELECT REPLACE(first_name, 'a', 'z')
FROM customers;


## Example 11 REPLACE

SELECT REPLACE(phone, '-','')
FROM customers;

## Example 12 LOCATE

SELECT LOCATE('x', 'Alexander');

## Example 13 LOCATE
SELECT first_name, LOCATE('Mic', first_name)
FROM customers;


## Example 14 CONCAT
SELECT CONCAT('Alex', 'Freberg');

## Example 15 CONCAT
SELECT CONCAT('Alex', ' ','Freberg');

##Example 16 SUBSTRING + CONCAT -> Data Cleaning example
SELECT phone,
SUBSTRING(phone,1,3),
SUBSTRING(phone,5,3),
SUBSTRING(phone,9,4),
CONCAT(SUBSTRING(phone,1,3), SUBSTRING(phone,5,3), SUBSTRING(phone,9,4))
FROM customers;