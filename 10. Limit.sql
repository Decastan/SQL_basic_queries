## Limit Clause

# Example 1
SELECT *
FROM customers
LIMIT 5
;

# Example 2
SELECT *
FROM customers
WHERE total_money_spent > 10000
LIMIT 5
;

# Example 3
SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5
;

# Example 4
SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 10
;