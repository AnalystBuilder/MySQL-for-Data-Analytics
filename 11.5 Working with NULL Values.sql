# Working with NULL Values


SELECT *
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET phone = NULL
WHERE phone = ''
;

UPDATE customer_sweepstakes
SET income = NULL
WHERE income = ''
;

SELECT AVG(income)
FROM customer_sweepstakes
;

SELECT AVG(income)
FROM customer_sweepstakes
WHERE income IS NOT NULL
;

SELECT AVG(COALESCE(income,0))
FROM customer_sweepstakes
;


SELECT birth_date, `Are you over 18?`
FROM customer_sweepstakes
WHERE (YEAR(NOW()) - 18) > YEAR(birth_date)
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'N'
WHERE (YEAR(NOW()) - 18) < YEAR(birth_date)
;

UPDATE customer_sweepstakes
SET `Are you over 18?` = 'Y'
WHERE (YEAR(NOW()) - 18) > YEAR(birth_date)
;


SELECT  *
FROM customer_sweepstakes
;





























































