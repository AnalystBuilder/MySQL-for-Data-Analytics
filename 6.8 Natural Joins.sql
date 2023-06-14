# Natural Joins


SELECT *
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
ORDER BY p.product_id
;


SELECT *
FROM products p
NATURAL JOIN customer_orders co
ORDER BY p.product_id
;





































