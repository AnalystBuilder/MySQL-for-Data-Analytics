# Lag and Lead


SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id)
FROM employees
;

SELECT *, lag_col - salary AS pay_discrepancy
FROM
(SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees) AS lag_table
;


SELECT *, IF(salary > lag_col, 'More','Less')
FROM
(SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) AS lag_col
FROM employees) AS lag_table
;






































