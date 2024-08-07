#Comparison Operators

# =, <>, >,<

SELECT *
FROM customer_orders
WHERE tip = 1;


SELECT *
FROM customer_orders
WHERE tip <> 1;


SELECT *
FROM customer_orders
WHERE tip != 1;

##Mayor qué 
SELECT *
FROM customer_orders
WHERE tip > 5;


#Mayor o igual qué
SELECT *
FROM customer_orders
WHERE tip >= 5;


#menor o igual qué
SELECT *
FROM customer_orders
WHERE tip <= 5;