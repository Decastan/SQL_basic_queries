# Aliasing -> Change the name of the column

# Example 1:
SELECT product_name AS 'Goodie Name', units_in_stock 'uis'
FROM products
;

# Example 2:
SELECT units_in_stock * sale_price AS Potential_Revenue
FROM products
;


# Example 3:
SELECT prod.units_in_stock * prod.sale_price AS Potential_Revenue
FROM products prod
;

# Example 4:
SELECT p.units_in_stock * p.sale_price AS Potential_Revenue
FROM products p
;
