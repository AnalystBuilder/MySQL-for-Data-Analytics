# Inner Join


SELECT *
FROM customers;

SELECT *
FROM customer_orders
ORDER BY customer_id;


SELECT *
FROM customers c
INNER JOIN customer_orders co
	ON c.customer_id = co.customer_id
ORDER BY c.customer_id
;



SELECT *
FROM products;

SELECT *
FROM customer_orders;


SELECT product_name, SUM(order_total) as Total
FROM products p
JOIN customer_orders co
	ON p.product_id = co.product_id
GROUP BY product_name
ORDER BY 2
;




SELECT *
FROM suppliers;

SELECT *
FROM ordered_items;


SELECT *
FROM suppliers s
INNER JOIN ordered_items oi
	ON s.supplier_id = oi.shipper_id
;































