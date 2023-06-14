# Standardize Data

SELECT *
FROM customer_sweepstakes;

#First let's standardize the phone numbers
#We should remove all of the special characters, then we can use substring to format how we want

SELECT *
FROM customer_sweepstakes;

#Here we can use Regular Expression to remove all special characters
SELECT phone, REGEXP_REPLACE(phone, ('[\]\\[!@#$%.&*`~^_{}:;<>/\\|()-]+'),'')
FROM customer_sweepstakes;

#Now we can update and  
UPDATE customer_sweepstakes
SET phone = REGEXP_REPLACE(phone, ('[\]\\[!@#$%.&*`~^_{}:;<>/\\|()-]+'),'');

SELECT *
FROM customer_sweepstakes;

#Now we can set our own standardized format like this

SELECT