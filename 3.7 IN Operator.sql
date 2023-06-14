# IN Operator



SELECT *
FROM customers
WHERE state = 'PA' OR city = 'Dallas' OR address = 'IL'
;

SELECT *
FROM customers
WHERE state IN ('PA','TX', 'IL')
;



SELECT *
FROM customers
WHERE first_name NOT IN ('Kevin','Kelly','Frodo')
;






































