# Breaking Column into Multiple Columns


SELECT *
FROM customer_sweepstakes
;

SELECT address, SUBSTRING_INDEX(address,',',1)
FROM customer_sweepstakes
;


SELECT address, SUBSTRING_INDEX(address,',',1),SUBSTRING_INDEX(address,',',-1)
FROM customer_sweepstakes
;

SELECT address, 
SUBSTRING_INDEX(address,',',1) AS Street,
SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1) AS City,
SUBSTRING_INDEX(address,',',-1) AS State
FROM customer_sweepstakes
;

SELECT *
FROM customer_sweepstakes
;


ALTER TABLE customer_sweepstakes
ADD COLUMN street VARCHAR(50) AFTER address
;

ALTER TABLE customer_sweepstakes
ADD COLUMN city VARCHAR(50) AFTER street,
ADD COLUMN state VARCHAR(50) AFTER city
;


SELECT address, 
SUBSTRING_INDEX(address,',',1) AS Street,
SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1) AS City,
SUBSTRING_INDEX(address,',',-1) AS State
FROM customer_sweepstakes
;
UPDATE customer_sweepstakes
SET street = SUBSTRING_INDEX(address,',',1)
;
UPDATE customer_sweepstakes
SET city = SUBSTRING_INDEX(SUBSTRING_INDEX(address,',',2),',',-1)
;
UPDATE customer_sweepstakes
SET state = SUBSTRING_INDEX(address,',',-1)
;




SELECT state, TRIM(state)
FROM customer_sweepstakes
;


UPDATE customer_sweepstakes
SET state = UPPER(state)
;

UPDATE customer_sweepstakes
SET city  = TRIM(city)
;

UPDATE customer_sweepstakes
SET state  = TRIM(state)
;





SELECT *
FROM customer_sweepstakes
;






































































