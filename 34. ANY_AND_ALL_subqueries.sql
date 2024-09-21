-- Any and All Operators


SELECT MAX(quantity * unit_price) as total_order_price
FROM ordered_items
WHERE shipper_id = 1
;

-- Example 1 -> En esta Subquery se selecciona el valor maximo 
SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ( SELECT MAX(quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1
)
;



-- Example 2 ALL -> En esta subquery se utiliza ALL que hace eveluar de todos los campos de la subquery tiene que ser mayor el "total_order_price"
SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ALL ( SELECT (quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1
)
;

-- Example 3 -> Con ANY retorna todos los valores de la subquery que sean mayor a cualquiera de ellos, 
-- podría decirse que con ser mayor que el menor valor de la subquery, aparecerá en el output


SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) > ANY ( SELECT (quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1
)
;

-- QUIZ

SELECT customer_id, number_of_orders 
FROM orders 
WHERE number_of_orders = (
    SELECT MAX(number_of_orders)
    FROM orders
);