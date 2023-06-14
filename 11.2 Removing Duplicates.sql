# ROW_ NUMBER
#Row number is just going to assign a number to each row - simple, but pretty powerful too. 

#Okay so this is the query that we finished with in our last lesson. Let's reuse this to look at row_number
SELECT c.customer_id, first_name, order_total, max(order_total) over(PARTITION BY first_name) as Max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;


#We just need to say....

SELECT c.customer_id, first_name, order_total, ROW_NUMBER() OVER()
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id;
    
#Now Let's use the partition by  on first name like we did in the query above.

SELECT c.customer_id, first_name, order_total, ROW_NUMBER() OVER(PARTITION BY first_name)
FROM customers c
JOIN custom