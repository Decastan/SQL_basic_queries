SELECT 
product_name,
  ROUND((sales_price - purchase_price) * 0.93, 2) AS profit
FROM products
ORDER BY profit DESC, product_name ASC;