# Between Operator

SELECT *
FROM customers
WHERE total_money_spent BETWEEN 500 AND 1000
;

-- 'BETWEEN' incluye los números que se indican, el orden en el que se pone es importante 
SELECT *
FROM customers
WHERE total_money_spent BETWEEN 534 AND 1009
;

-- Example 2
SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2020-01-01'
;


-- Example 3 con letras
SELECT *
FROM customers
WHERE city BETWEEN 'D' AND 'S'
;

