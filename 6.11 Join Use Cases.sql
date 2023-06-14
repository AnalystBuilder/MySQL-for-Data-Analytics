# Join Use Cases


SELECT DISTINCT p.product_name, 
oi.unit_price, 
p.sale_price, 
p.units_in_stock,
p.sale_price - oi.unit_price AS profit,
(p.sale_price - oi.unit_price) * p.units_in_stock AS potential_profit
FROM ordered_items oi
JOIN products p
	USING(product_id)
ORDER BY potential_profit DESC
;
SELECT *
FROM products;





SELECT *
FROM supplier_delivery_status;
SELECT *
FROM ordered_items;
SELECT *
FROM suppliers;

SELECT *
FROM ordered_items oi
JOIN supplier_delivery_status sds
	ON oi.status = sds.order_status_id
JOIN suppliers s
	ON oi.shipper_id = s.supplier_id;
    
    
    
SELECT oi.order_id, sds.name, oi.status, oi.shipped_date, s.name
FROM ordered_items oi
JOIN supplier_delivery_status sds
	ON oi.status = sds.order_status_id
JOIN suppliers s
	ON oi.shipper_id = s.supplier_id
WHERE sds.name <> 'Delivered'
AND YEAR(shipped_date) < YEAR(NOW()) - 1
    ;






































