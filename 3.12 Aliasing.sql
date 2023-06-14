# Aliasing


SELECT product_name AS 'Goodie Name', units_in_stock 'uis'
FROM products
;

SELECT units_in_stock * sale_price AS Potential_Revenue
FROM products
;


SELECT p.units_in_stock * p.sale_price AS Potential_Revenue, c.colum_name
FROM products p
JOIN customer c
;



