### Standardizing Data


## Removiendo los caracteres especiales de la columna "phone"
SELECT phone, REGEXP_REPLACE(phone, '[()-/+]', '')
FROM customer_sweepstakes
;

### Agregar los cambios de la columna "phone" a la tabla 
UPDATE customer_sweepstakes
SET phone = REGEXP_REPLACE(phone, '[()-/+]', '')
;

SELECT phone, SUBSTRING(phone,1,3), SUBSTRING(phone,4,3), SUBSTRING(phone,7,4)
FROM customer_sweepstakes
;


SELECT phone, CONCAT(SUBSTRING(phone,1,3),'-', SUBSTRING(phone,4,3),'-', SUBSTRING(phone,7,4))
FROM customer_sweepstakes
WHERE phone <> ''
;

###Agregar el ajuste a la columna 
UPDATE customer_sweepstakes
SET phone = CONCAT(SUBSTRING(phone,1,3),'-', SUBSTRING(phone,4,3),'-', SUBSTRING(phone,7,4))
WHERE phone <> '';


###Revisemos los cambios finales
SELECT phone
FROM customer_sweepstakes
;



###Continuando con la siguiente columna "birth_date"
SELECT birth_date
FROM customer_sweepstakes
;


SELECT birth_date, 
STR_TO_DATE(birth_date, '%m/%d/%Y'),
STR_TO_DATE(birth_date, '%Y/%d/%m')
FROM customer_sweepstakes
;


SELECT birth_date,
IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), 
STR_TO_DATE(birth_date, '%Y/%d/%m')) AS birth_date_dt,
STR_TO_DATE(birth_date, '%m/%d/%Y'),
STR_TO_DATE(birth_date, '%Y/%d/%m')
FROM customer_sweepstakes
;

## Forma incorrecta
UPDATE customer_sweepstakes
SET birth_date = IF(STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL, STR_TO_DATE(birth_date, '%m/%d/%Y'), 
STR_TO_DATE(birth_date, '%Y/%d/%m'))
;

## Otra forma, utilizando CASE, sin embargo, sigue sin funcionar
UPDATE customer_sweepstakes
SET birth_date = CASE 
WHEN STR_TO_DATE(birth_date, '%m/%d/%Y') IS NOT NULL THEN STR_TO_DATE(birth_date, '%m/%d/%Y')
WHEN STR_TO_DATE(birth_date, '%m/%d/%Y') IS NULL THEN STR_TO_DATE(birth_date, '%Y/%d/%m')
END;


### Forma Correcta utilizando SUBSTRING Y CONCAT
SELECT birth_date, CONCAT(SUBSTRING(birth_date,9,2), '/', SUBSTRING(birth_date,6,2), '/', SUBSTRING(birth_date,1,4))
FROM customer_sweepstakes;


UPDATE customer_sweepstakes
SET birth_date = CONCAT(SUBSTRING(birth_date,9,2), '/', SUBSTRING(birth_date,6,2), '/', SUBSTRING(birth_date,1,4))
WHERE sweepstake_id IN(9,11);

SELECT *
FROM customer_sweepstakes;


SELECT birth_date, 
STR_TO_DATE(birth_date, '%m/%d/%Y')
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET birth_date = STR_TO_DATE(birth_date, '%m/%d/%Y')
;


SELECT *
FROM customer_sweepstakes;


SELECT `Are you over 18?`
FROM customer_sweepstakes;


SELECT `Are you over 18?`,
CASE 
	WHEN `Are you over 18?` = 'Yes' THEN 'Y'
    WHEN `Are you over 18?` = 'No' THEN 'N'
    ELSE `Are you over 18?`
END
FROM customer_sweepstakes;

UPDATE customer_sweepstakes
SET `Are you over 18?` = CASE 
	WHEN `Are you over 18?` = 'Yes' THEN 'Y'
    WHEN `Are you over 18?` = 'No' THEN 'N'
    ELSE `Are you over 18?`
END;

SELECT `Are you over 18?`
FROM customer_sweepstakes;