
SELECT co.order_id, first_name, c.customer_id
FROM bakery.customer_orders as co
RIGHT OUTER JOIN bakery.customers as c
	ON co.customer_id = c.customer_id
ORDER BY c.customer_id, co.order_id ;


#Since the column names are the same we can use USING. Let's try it out
SELECT co.order_id, first_name, c.customer_id
FROM bakery.customer_orders as co
RIGHT OUTER JOIN bakery.customers as c
	USING(customer_id)
ORDER BY c.customer_id, co.order_id ;

#There's absolutely nothing wrong with doing this. It gives the exact same output and performs the same job.
#It may be cleaner as well. It's more of a personal preference. I don't personally use them si