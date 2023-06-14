# ALL and ANY Statements


SELECT *
FROM ordered_items
;


SELECT MAX(quantity * unit_price) as total_order_price
FROM ordered_items
WHERE shipper_id = 1
;



SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) >	(SELECT MAX(quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1)
;


SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) >	ALL (SELECT (quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1)
;




SELECT shipper_id, order_id, quantity, unit_price, (quantity * unit_price) AS total_order_price
FROM ordered_items
WHERE (quantity * unit_price) >=	ANY (SELECT (quantity * unit_price) AS total_order_price
			FROM ordered_items
			WHERE shipper_id = 1)
;


































