
#We can also select a specefic number of column based on our requirement. 

#Now remember we can just select everything by saying:
SELECT * 
FROM customers;

# If our table contains a large number of records it may create a negative 
#impact in the database server and the network also.
#It could take a long time to retrieve the output so often it's best to select only the
#columns you actually want to see or need




#Let's try selecting a specific column
SELECT first_name
FROM customers;

#As you can see from the output, we only have the one column here now and don't see the others

#Now let's add some more columns, we just need to separate the columns with columns
SELECT first_name, last_name
FROM c