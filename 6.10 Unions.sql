#7 - The LIKE Operator:
----------------------

#The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

#There are two wildcards often used in conjunction with the LIKE operator:

#% - The percent sign represents zero, one, or multiple characters
#_ - The underscore represents a single character

#The percent sign and the underscore can also be used in combinations which we will look at in this lesson.alter


#So let's try out some different LIKE Statements to see how this works:

#Let's write k with a % - this means start with "K"		
SELECT *
FROM customers
WHERE first_name LIKE 'K%'; 

#We could do the opposite and say a value that ends in 'n'
SELECT *
FROM customers
WHERE first_name LIKE '%n'; 

#Now it's not cas