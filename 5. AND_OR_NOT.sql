#And, Or, Not operators

SELECT *
FROM customers
WHERE state = 'PA' AND total_money_spent > 1000;

SELECT *
FROM customers
WHERE state = 'PA' OR total_money_spent > 1000;

SELECT *
FROM customers
WHERE (state = 'PA' OR city = 'New York' ) AND total_money_spent > 1000;



SELECT *
FROM customers
WHERE (state = 'PA' AND total_money_spent > 1000)  OR birth_date > '1998-01-01';

## NOT 
SELECT *
FROM customers
WHERE NOT state = 'PA';


## NOT 
SELECT *
FROM customers
WHERE NOT (total_money_spent > 1000 AND state = 'TX');