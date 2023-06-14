# Subqueries


SELECT *
FROM customers
;

SELECT *
FROM customers
WHERE customer_id IN 
	(SELECT customer_id
	FROM customer_orders)
;


SELECT *
FROM customers
WHERE customer_id IN 
	(SELECT customer_id
	FROM customer_orders
    WHERE tip > 1)
;



SELECT *
FROM customers
WHERE total_money_spent > (SELECT AVG(total_money_spent)
							FROM customers)
;

































