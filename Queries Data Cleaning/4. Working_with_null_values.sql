#Working with NULL Values


SELECT *
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET phone = NULL
WHERE phone = ''
;

UPDATE customer_sweepstakes
SET income = NULL
WHERE income = ''
;


SELECT AVG(COALESCE(income,0))
FROM customer_sweepstakes
;

SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
WHERE (2023 - 18) < YEAR(birth_date)
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'N'
WHERE (2023 - 18) < YEAR(birth_date)
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'Y'
WHERE (2023 - 18) > YEAR(birth_date)
;

SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
;

#### Solución Quiz

SELECT p.first_name, 
p.last_name, 
CASE 
    WHEN c.email IS NULL THEN TRIM(CONCAT(LOWER(first_name),'.',LOWER(last_name),'@gmail.com'))
    ELSE c.email
    END AS email
FROM people p
LEFT JOIN contacts c
ON p.id = c.id
ORDER BY email;



