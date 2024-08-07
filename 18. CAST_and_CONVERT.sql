## Cast and Convert Functions



SELECT CAST('2022-01-01' AS DATETIME);


##Example 1
SELECT birth_date,
CAST(birth_date AS DATETIME)
FROM customers
;


##Example 2  CAST AND CONVERT
SELECT birth_date,
CAST(birth_date AS DATETIME),
CONVERT(birth_date, DATETIME)
FROM customers
;


