# Group By


SELECT customer_id, SUM(tip)
FROM customer_orders
GROUP BY customer_id
;

SELECT product_id, AVG(order_total)
FROM customer_orders
GROUP BY product_id
ORDER BY AVG(order_total) DESC
;



































