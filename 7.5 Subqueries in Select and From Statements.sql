#WHERE Clause:
#-------------
#The WHERE clause is used to filter records (rows of data)

#It's going to extract only those records that fulfill a specified condition.

# So basically if we say "Where name is = 'Alex' - only rows were the name = 'Alex' will return
# So this is only effecting the rows, not the columns


#Let's take a look at how this looks
SELECT *
FROM customers
WHERE total_money_spent > 3000;

SELECT *
FROM customers
WHERE city = 'Scranton';


#We can also return rows that do have not "Scranton"
SELECT *
FROM customers
WHERE city != 'Scr