
DROP DATABASE IF EXISTS `bakery`;
CREATE DATABASE `bakery`;
USE `bakery`;

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `units_in_stock` int(11) NOT NULL,
  `sale_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `products` VALUES (1001,'Chocolate Chip Cookie',200,1.50);
INSERT INTO `products` VALUES (1002,'Banana Nut Muffin',180,2.50);
INSERT INTO `products` VALUES (1003,'Croissant',70,1.75);
INSERT INTO `products` VALUES (1004,'Cheese Danish',55,1.85);
INSERT INTO `products` VALUES (1005,'Cannoli',112,2.25);
INSERT INTO `products` VALUES (1006,'Sweet Bread Loaf',32,15.50);
INSERT INTO `products` VALUES (1007,'Strawberry Macaron',98,2.00);
INSERT INTO `products` VALUES (1008,'Coffee Cake',25,13.00);
INSERT INTO `products` VALUES (1009,'Carrot Cake',15,14.50);
INSERT INTO `products` VALUES (1010,'Chocolate Covered Doughnut',80,1.00);


CREATE TABLE `suppliers` (
  `supplier_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `suppliers` VALUES (1,'Bakery LLC');
INSERT INTO `suppliers` VALUES (2,'Goods 4 U');
INSERT INTO `suppliers` VALUES (3,'Savory Loaf Delivery Co.');
INSERT INTO `suppliers` VALUES (4,'Mrs. Yums');
INSERT INTO `suppliers` VALUES (5,'Grain to Table LLC');


CREATE TABLE `supplier_delivery_status` (
  `order_status_id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `supplier_delivery_status` VALUES (1,'Processed');
INSERT INTO `supplier_delivery_status` VALUES (2,'Shipped');
INSERT INTO `supplier_delivery_status` VALUES (3,'Delivered');


CREATE TABLE `ordered_items` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(4,2) NOT NULL,
  `shipped_date` date DEFAULT NULL,
  `shipper_id` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `fk_orders_items_order_idx` (`order_id`),
  KEY `fk_order_items_products_idx` (`product_id`),
  KEY `fk_orders_order_statuses_idx` (`status`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `ordered_items` (`order_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_order_statuses` FOREIGN KEY (`status`) REFERENCES `supplier_delivery_status` (`order_status_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`shipper_id`) REFERENCES `suppliers` (`supplier_id`) ON UPDATE CASCADE
  
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `ordered_items` VALUES (1,1004,1,53,0.35,'2021-08-15',1);
INSERT INTO `ordered_items` VALUES (2,1001,2,73,0.29,'2022-03-21',2);
INSERT INTO `ordered_items` VALUES (2,1004,3,10,0.35,'2022-02-07',5);
INSERT INTO `ordered_items` VALUES (2,1006,2,63,5.28,'2021-06-09',4);
INSERT INTO `ordered_items` VALUES (3,1003,1,21,0.50,'2021-09-06',1);
INSERT INTO `ordered_items` VALUES (4,1003,2,85,0.50,'2022-06-22',3);
INSERT INTO `ordered_items` VALUES (4,1010,3,42,0.39,'2021-05-13',4);
INSERT INTO `ordered_items` VALUES (5,1002,1,100,1.89,'2022-02-03',2);
INSERT INTO `ordered_items` VALUES (6,1001,2,35,0.29,'2021-11-06',3);
INSERT INTO `ordered_items` VALUES (6,1002,2,54,1.89,'2022-12-23',5);
INSERT INTO `ordered_items` VALUES (6,1003,3,10,0.50,'2022-04-05',1);
INSERT INTO `ordered_items` VALUES (6,1005,3,55,0.47,'2021-05-22',2);
INSERT INTO `ordered_items` VALUES (7,1003,3,12,0.50,'2022-06-26',1);
INSERT INTO `ordered_items` VALUES (8,1005,2,70,0.47,'2021-09-21',5);
INSERT INTO `ordered_items` VALUES (8,1008,2,96,8.59,'2022-11-10',3);
INSERT INTO `ordered_items` VALUES (9,1006,3,43,5.28,'2022-10-15',1);
INSERT INTO `ordered_items` VALUES (10,1001,1,33,0.29,'2022-01-06',1);
INSERT INTO `ordered_items` VALUES (10,1009,3,23,4.28,'2022-07-23',1);


CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` char(2) NOT NULL,
  `total_money_spent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customers` VALUES (100101,'Kevin','Malone','1989-04-28','635-573-9754','1229 Main Street','Scranton','PA',11000);
INSERT INTO `customers` VALUES (100102,'Charles','Xavier','1965-04-11','729-287-9456','123 North Hill Drive','Dallas','TX',947);
INSERT INTO `customers` VALUES (100103,'Finley','Danish','1999-02-07','126-583-7856','432 Hilly Road','Austin','TX',534);
INSERT INTO `customers` VALUES (100104,'Obi','Kenobi','1921-04-22','975-357-7663','101 Alpine Avenue','New York','NY',3567);
INSERT INTO `customers` VALUES (100105,'Don','Draper','1948-11-07',NULL,'12 South Main Lane','San Francisco','CA',195);
INSERT INTO `customers` VALUES (100106,'Frodo','Baggins','2001-09-04',NULL,'1 Pastery Lane','Chicago','IL',56);
INSERT INTO `customers` VALUES (100107,'Michael','Scott','1978-08-20','235-357-3464','987 Croissant Street','Scranton','PA',2536);
INSERT INTO `customers` VALUES (100108,'Maggie','Muffin','2001-07-06','906-485-1542','701 North Street','Sarasota','FL',1009);
INSERT INTO `customers` VALUES (100109,'Kelly','Kapoor','1987-05-30','674-357-9151','62810 Julip Lane','Scranton','PA',540);
INSERT INTO `customers` VALUES (100110,'Anakin','Skywalker','1934-10-15','346-458-3370','122 South Street','Charleston','SC',36);


CREATE TABLE `customer_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_total` decimal(4,2) NOT NULL,
  `tip` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_customers_orders__idx` (`customer_id`),
  KEY `fk_orders_shippers_idx` (`product_id`),
  CONSTRAINT `fk_orders_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_customer_orders` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customer_orders` VALUES (1,100101,1001,'2020-01-30',26.24,2);
INSERT INTO `customer_orders` VALUES (2,100110,1002,'2021-08-25',6.19,1);
INSERT INTO `customer_orders` VALUES (3,100106,1005,'2022-12-12',3.87,0);
INSERT INTO `customer_orders` VALUES (4,100103,1007,'2018-03-22',4.00,5);
INSERT INTO `customer_orders` VALUES (5,100102,1003,'2017-08-25',9.97,10);
INSERT INTO `customer_orders` VALUES (6,100108,1009,'2018-11-18',87.01,1);
INSERT INTO `customer_orders` VALUES (7,100101,1001,'2022-09-20',2.45,5);
INSERT INTO `customer_orders` VALUES (8,100104,1008,'2018-06-08',16.42,0);
INSERT INTO `customer_orders` VALUES (9,100105,1007,'2019-07-05',8.11,1);
INSERT INTO `customer_orders` VALUES (10,100106,1006,'2018-04-22',53.12,3);
INSERT INTO `customer_orders` VALUES (11,100103,1001,'2019-11-18',27.01,1);
INSERT INTO `customer_orders` VALUES (12,100101,1003,'2018-09-20',10.45,5);
INSERT INTO `customer_orders` VALUES (13,100106,1008,'2020-06-08',90.42,0);
INSERT INTO `customer_orders` VALUES (14,100102,1009,'2022-07-05',11.11,1);
INSERT INTO `customer_orders` VALUES (15,100104,1006,'2020-04-22',24.12,3);



CREATE TABLE `customer_orders_review` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `Rating 1-10` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customer_orders_review` VALUES (1,100101,1001,'2020-01-30',8);
INSERT INTO `customer_orders_review` VALUES (2,100110,1002,'2021-08-25',5);
INSERT INTO `customer_orders_review` VALUES (3,100111,1005,'2022-12-12',10);
INSERT INTO `customer_orders_review` VALUES (4,100103,1007,'2081-03-22',7);
INSERT INTO `customer_orders_review` VALUES (5,100102,1003,'2017-08-25',6);
INSERT INTO `customer_orders_review` VALUES (7,100101,1001,'2022-09-20',8);
INSERT INTO `customer_orders_review` VALUES (8,100104,1008,'2018-06-08',9);
INSERT INTO `customer_orders_review` VALUES (9,100105,1007,'2019-07-05',6);
INSERT INTO `customer_orders_review` VALUES (10,100106,1006,'2018-04-22',8);
INSERT INTO `customer_orders_review` VALUES (11,100103,1001,'2019-11-18',6);
INSERT INTO `customer_orders_review` VALUES (12,1001001,1003,'2018-09-20',9);
INSERT INTO `customer_orders_review` VALUES (13,100106,1008,'2020-06-08',10);
INSERT INTO `customer_orders_review` VALUES (14,100102,1009,'2023-07-05',8);
INSERT INTO `customer_orders_review` VALUES (15,100104,1006,'2020-04-22',7);





CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employees` VALUES (1,'Christine','Freberg','Bakery','Lead Baker', 70000);
INSERT INTO `employees` VALUES (2,'Dwight','Schrute','Bakery','Assistant to the Lead Baker', 45000);
INSERT INTO `employees` VALUES (3,'Tom','Haveford','Bakery','Chocolatier', 45000);
INSERT INTO `employees` VALUES (4,'Ann','Perkins','Bakery','Bakery Clerk', 30000);
INSERT INTO `employees` VALUES (5,'Carl','Lorthner','Bakery','Dough Maker', 40000);
INSERT INTO `employees` VALUES (6,'Ron','Swanson','Marketing','Director of Marketing', 75000);
INSERT INTO `employees` VALUES (7,'Troy','Barnes','Marketing','Lead Marketer', 60000);
INSERT INTO `employees` VALUES (8,'Jeff','Winger','Marketing','Marketing Analyst', 60000);
INSERT INTO `employees` VALUES (9,'Annie','Edison','Marketing','Social Media Marketer', 65000);




