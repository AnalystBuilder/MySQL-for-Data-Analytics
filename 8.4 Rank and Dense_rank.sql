# Rank and Dense_Rank



SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM Employees
;

SELECT *
FROM
(SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as rank_row
FROM Employees) AS ranked
WHERE rank_row < 3
;


SELECT *,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) as rank_,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) as dense_
FROM Employees
;



































