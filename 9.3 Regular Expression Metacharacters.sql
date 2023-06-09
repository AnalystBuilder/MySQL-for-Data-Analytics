# Exists

#Exists kind of works like the IN statement - it checks to see if something exists and it it does it will give an output

#Here is something we did in an earlier lesson. Let's try this out and then rewrite it using the Exists statement

SELECT * 
FROM bakery.customers
WHERE customer_id IN (SELECT customer_id
FROM bakery.customer_orders);



#This is the same thing

SELECT * 
FROM bakery.customers c
WHERE EXISTS (SELECT customer_id
FROM bakery.customer_orders
WHERE customer_id = c.customer_id);

#Now why would you want to use this? Mostly performance. I personally don't use this a lot unless the dataset I'm working with is huge and I 
#actually need to improve performance                                                                                                     