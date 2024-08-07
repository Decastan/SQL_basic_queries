### JOIN USE CASES

-- Example 1: How much money we are making per Item

SELECT *
FROM ordered_items
;

SELECT *
FROM products
;

SELECT DISTINCT p.product_name, 
oi.unit_price, 
p.sale_price,
p.units_in_stock,
P.sale_price - oi.unit_price AS profit,
(P.sale_price - oi.unit_price) * p.units_in_stock AS potential_profit
FROM ordered_items oi
JOIN products p 
	USING(product_id)
ORDER BY potential_profit DESC
;



-- Example 2: CASE 2


SELECT *
FROM supplier_delivery_status;
SELECT *
FROM ordered_items;
SELECT *
FROM suppliers;



SELECT *
FROM ordered_items oi
JOIN supplier_delivery_status sds
	ON oi.status = sds.order_status_id
JOIN suppliers s
	ON oi.shipper_id = s.supplier_id
;



SELECT oi.order_id, sds.name, oi.status, oi.shipped_date, s.name
FROM ordered_items oi
JOIN supplier_delivery_status sds
	ON oi.status = sds.order_status_id
JOIN suppliers s
	ON oi.shipper_id = s.supplier_id
WHERE sds.name <> 'Delivered'
AND YEAR(shipped_date) < YEAR(NOW()) -1
;