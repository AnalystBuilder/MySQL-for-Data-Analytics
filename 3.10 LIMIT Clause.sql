# LIMIT Clause


SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5
;


SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 2, 5
;