# Like Operator

# % - zero, one, or multiple characters
# _ - single character

SELECT *
FROM customers
WHERE first_name LIKE 'k%'
;

SELECT *
FROM customers
WHERE first_name LIKE '%n%'
;


SELECT *
FROM customers
WHERE first_name LIKE '%kin'
;


SELECT *
FROM customers
WHERE last_name LIKE 's_____%'
;

SELECT *
FROM customers
WHERE phone LIKE '975%'
;


