#This is the bakery database
# This is also a note
-- This is a note
USE bakery;


SELECT customer_id, first_name
FROM customers;


SELECT *
FROM customer_orders
WHERE product_id = 1001
;