#Importing product_suggestions using Wizard

# Option 1

#Use import Wizard to import CSV


# Option 2:

# Create Table in Database, then import CSV into Table

use bakery;
 
CREATE TABLE product_suggestions2 (
product_suggestion_id INT,
product_suggestion_name TEXT,
date_received TEXT,
PRIMARY KEY (product_suggestion_id)
);