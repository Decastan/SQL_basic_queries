## Regular Expression Methods

-- Example 0

SELECT *
FROM customers
WHERE first_name LIKE '%K%'
;


-- Example 0.1
SELECT *
FROM customers
WHERE first_name REGEXP 'K'
;

-- Exammple 1:  PUEDES REEMPLAZAR LETRAS O PALABRAS POR OTRO PARAMETRO

SELECT first_name, REGEXP_REPLACE(first_name, 'a','b')
FROM customers;


-- Example 2: También sirve para buscar de la siguiente forma

SELECT first_name, REGEXP_LIKE(first_name, 'a')
FROM customers;


-- Example 3: Location of the word
-- Cuenta en la posición en la que está la palabra en este caso

SELECT first_name, REGEXP_INSTR(first_name, 'a')
FROM customers;


-- Example 4:

SELECT first_name, REGEXP_SUBSTR(first_name, 'char')
FROM customers;