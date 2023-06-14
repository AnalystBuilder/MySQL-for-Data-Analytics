this column which was named poorly

SELECT Are you over 18?
FROM customer_sweepstakes;
#This doesn't work

#Let's try quotes nd double quotes
SELECT 'Are you over 18?'
FROM customer_sweepstakes;


#What you need to use is what's called a backtik. On my computer it's right next to the 1 above my keyboard, above the tab on my right side
SELECT `Are you over 18?`
FROM customer_sweepstakes;
#Now it works properly. Best thing to do is not name columns like this 


SELECT `Are you over 18?`, 
CASE
	WHEN `Are you over 18?` = 'Yes' THEN 'Y'
    WHEN `Are you over 18?` = 'No' THEN 'N'
    ELSE `Are you