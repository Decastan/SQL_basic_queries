#### REGULAR EXPRESSION
#### EXAMPLES AND USE CASES



SELECT *
FROM z_regular_expression;


SELECT *
FROM z_regular_expression
WHERE email REGEXP '@gmail';

###Exaple extraer información usando '@.+'
SELECT email, REGEXP_SUBSTR(email, '@.+')
FROM z_regular_expression
;


###Exaple extraer información usando '@[a-z]+'
SELECT email, REGEXP_SUBSTR(email, '@[a-z]+')
FROM z_regular_expression
;


### Forma especial para extraer números de telefono con caracteristicas específicas
SELECT phone 
FROM z_regular_expression
WHERE phone REGEXP '[0-9]{3}.[0-9]{3}.[0-9]{4}'
;

###Ejemplo usando '.+SQL.+'
SELECT *
FROM z_regular_expression
WHERE phrase REGEXP '.+SQL.+'
;