-- IN Operator

SELECT *
FROM customers
WHERE state ='PA' OR state = 'TX' OR state = 'IL';

-- 'IN' Example 1 

SELECT *
FROM customers
WHERE state IN ('PA', 'TX', 'IL');


-- 'IN' Example 2 

SELECT *
FROM customers
WHERE first_name IN ('Kevin', 'Kelly', 'Frodo')
;


-- 'NOT IN' Example 1

SELECT *
FROM customers
WHERE first_name NOT IN ('Kevin', 'Kelly', 'Frodo')
;