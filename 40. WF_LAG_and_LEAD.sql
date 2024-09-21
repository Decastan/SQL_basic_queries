### Lag and Lead 

### Example 1
SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id)
FROM employees;

### Example 2
SELECT *, lag_col - salary AS pay_discrepancy
FROM
(SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees
) AS lag_table;


### Example 3 with LEAD
SELECT *, lag_col - salary AS pay_discrepancy
FROM
(SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees
) AS lag_table;


### Example 4 with LEAD
SELECT *, IF(salary > lag_col, 'More','Less')
FROM
(SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees
) AS lag_table;