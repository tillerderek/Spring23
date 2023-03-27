--           Hands On Exam 2: Chapters 3, 4 & 6 
--       105 points available, but 100 points is the max grade – point values indicated

 
-- Total Points per section as shown.
-- Please note: You may omit one from Section D only.     
--    Section A = 8 points
--    Section B = 20 points  
--    Section C = 8 points 
--    Section D = 40 points (choose 5) 
--    Section E = 24 points  
--    Bonus     = 5 points

-- Use cut and paste from your putty window to show SQL and results, including the number of rows 
-- returned from your query for full point value.   
-- All work to be done on vweb-cit.abtech.edu using the MGS database.

-- ***Important Information, READ!
-- Before submitting your completed file make sure to add your name or initials to the file name.
-- Excluding Section A, all answers must contain SQL Statement and results set.  
-- Missing SQL and/or results set will be scored as incorrect.  
-- Even if it does not run appropriately, show me what your thought process was and perhaps I can 
-- give you partial credit.


-- Section A: Retreive data from a single table  (2 x 4 ea  = 8 pts)

-- 1.	a. Use the appropriate MySQL command to find the column definitions for the categories 
--      and the products tables …paste them here.  
desc categories;
desc products;


--		b. If you were to join these two tables, what field(s) would you use in your join condition?  
		category_id

-- Section B: Retreive data from a single table  (4 x 5 ea  = 20 pts)

-- 2.	Write a SELECT statement that returns four columns from the Products table:   
--		product_code,   product_name, list_price, and discount_percent. 
--		Then, run this  statement to make sure it works correctly.
SELECT product_code, product_name, list_price, discount_percent
    -> FROM products;

--		Add an ORDER BY clause to this statement that sorts the result set by list price 
--		in descending sequence. Then, run this statement again to make sure it works correctly.
--		This is a good way to build and test a statement, one clause at a time.
--		Place SQL and result set here. 
SELECT product_code, product_name, list_price, discount_percent FROM products ORDER BY list_price DESC;
-- +--------------+--------------------------------------+------------+------------------+
-- | product_code | product_name                         | list_price | discount_percent |
-- +--------------+--------------------------------------+------------+------------------+
-- | sg           | Gibson SG                            |    2517.00 |            52.00 |
-- | les_paul     | Gibson Les Paul                      |    1199.00 |            30.00 |
-- | precision    | Fender Precision                     |     799.99 |            30.00 |
-- | tama         | Tama 5-Piece Drum Set with Cymbals   |     799.99 |            15.00 |
-- | ludwig       | Ludwig 5-piece Drum Set with Cymbals |     699.99 |            30.00 |
-- | strat        | Fender Stratocaster                  |     699.00 |            30.00 |
-- | hofner       | Hofner Icon                          |     499.99 |            25.00 |
-- | fg700s       | Yamaha FG700S                        |     489.99 |            38.00 |
-- | rodriguez    | Rodriguez Caballero 11               |     415.00 |            39.00 |
-- | washburn     | Washburn D10S                        |     299.00 |             0.00 |
-- +--------------+--------------------------------------+------------+------------------+
-- 10 rows in set (0.000 sec)


-- 3.	Write a SELECT statement that returns one column from the Customers table named full_name 
--		that joins the last_name and first_name columns.
--		Format this column with the last name, a comma, a space, and the first name like this:  
--		Doe, John
--		Sort the result set by last name in ascending sequence.
--		Return only the customers whose last name begins with letters from M to Z.
--		Place SQL and result set here. 
 SELECT CONCAT_WS(", ", last_name, first_name) AS full_name FROM customers WHERE last_name >= 'm' ORDER BY last_name;
-- +-------------------+
-- | full_name         |
-- +-------------------+
-- | Sherwood, Allan   |
-- | Valentino, Erin   |
-- | Wilson, Frank Lee |
-- | Zimmer, Barry     |
-- +-------------------+
-- 4 rows in set (0.000 sec)


-- 4.	Write a SELECT statement that returns these columns from the Products table:

----------------------+----------------------------+
-- 		Column Title  |	Column Contains ....       |
----------------------+----------------------------+
-- 		Product Name  |	The product_name column    |
-- 		List Price	  |	The list_price column      |
-- 		Date Added	  |	The date_added column      |
---------------------------------------------------+

--		Return only the rows with a list price that’s greater than 500 and less than 2000.
--		Sort the result set in descending sequence by the date_added column.
--		Place SQL and result set here. 
 SELECT product_name AS 'Product Name', list_price AS 'List Price', date_added AS 'Date Added' FROM products WHERE list_price > 500 AND list_price < 2000 ORDER BY date_added DESC;
-- +--------------------------------------+------------+---------------------+
-- | Product Name                         | List Price | Date Added          |
-- +--------------------------------------+------------+---------------------+
-- | Tama 5-Piece Drum Set with Cymbals   |     799.99 | 2018-07-30 13:14:15 |
-- | Ludwig 5-piece Drum Set with Cymbals |     699.99 | 2018-07-30 12:46:40 |
-- | Fender Precision                     |     799.99 | 2018-06-01 11:29:35 |
-- | Gibson Les Paul                      |    1199.00 | 2017-12-05 16:33:13 |
-- | Fender Stratocaster                  |     699.00 | 2017-10-30 09:32:40 |
-- +--------------------------------------+------------+---------------------+
-- 5 rows in set (0.000 sec)


-- 5.	Write a SELECT statement that returns these column names and data from the Products table:

----------------------------+-----------------------------------------------------------------+
--		Column Title		|	Column Contains ...                                           |
----------------------------+-----------------------------------------------------------------+
--		Product Name		|	The product_name column                                       |
--		List Price			|	The list_price column                                         |
--		Discount %			|	The discount_percent column                                   |
--		Amount of Discount	|	A column that’s calculated from the previous two columns      |
--		Discount Price		|	A column that’s calculated from the previous three columns    |
----------------------------+-----------------------------------------------------------------+

--		Round the Amount of Discount and Discount Price columns to 2 decimal places.
--		Sort the result set by discount price in descending sequence.
--		Use the LIMIT clause so the result set contains only the first 5 rows.
--		Place SQL and result set here. 
 SELECT product_name AS 'Product Name', list_price AS 'List Price', discount_percent AS 'Discount %', ROUND((discount_percent / 100) * list_price, 2) AS 'Amount of Discount', ROUND(list_price - ((discount_percent / 100) * list_price), 2) AS 'Discount Price' FROM products ORDER BY ROUND(list_price - ((discount_percent / 100) * list_price), 2) DESC LIMIT 5;
-- +--------------------------------------+------------+------------+--------------------+----------------+
-- | Product Name                         | List Price | Discount % | Amount of Discount | Discount Price |
-- +--------------------------------------+------------+------------+--------------------+----------------+
-- | Gibson SG                            |    2517.00 |      52.00 |            1308.84 |        1208.16 |
-- | Gibson Les Paul                      |    1199.00 |      30.00 |             359.70 |         839.30 |
-- | Tama 5-Piece Drum Set with Cymbals   |     799.99 |      15.00 |             120.00 |         679.99 |
-- | Fender Precision                     |     799.99 |      30.00 |             240.00 |         559.99 |
-- | Ludwig 5-piece Drum Set with Cymbals |     699.99 |      30.00 |             210.00 |         489.99 |
-- +--------------------------------------+------------+------------+--------------------+----------------+
-- 5 rows in set (0.001 sec)



-- Section C: Work with nulls and test expressions  (2 x 4 ea  = 8 pts)

-- 6.	Write a SELECT statement that returns these columns from the Orders table:

----------------------+------------------------------+
--		Column Title  |	Column Contains ...          | 
----------------------+------------------------------+
--		Order ID	  |	The order_id column          |
--		Date of Order |	The order_date column        |
--		Date Shipped  |	The ship_date column         |
----------------------+------------------------------+

-- 		Return only the rows where the ship_date column contains a null value.
-- 		Place SQL and result set here. 
 SELECT order_id AS 'Order ID', order_date AS 'Date of Order', ship_date AS 'Date Shipped' FROM orders WHERE ship_date IS  NULL;
-- +----------+---------------------+--------------+
-- | Order ID | Date of Order       | Date Shipped |
-- +----------+---------------------+--------------+
-- |        6 | 2018-03-31 18:37:22 | NULL         |
-- |        8 | 2018-04-02 11:26:38 | NULL         |
-- |        9 | 2018-04-03 12:22:31 | NULL         |
-- +----------+---------------------+--------------+
-- 3 rows in set (0.000 sec)

	
-- 7.	Write a SELECT statement without a FROM clause that creates a result set with these columns:

------------------------+----------------------------------------+
--		Column Title	|	Column Contains ...                  |
------------------------+----------------------------------------+
--		Price			|	100 (dollars)                        |
--		Tax Rate		|	.07 (7 percent)                      |
--		Amount of Tax	|	The price multiplied by the tax      |
--		Total Amount	|	The price plus the tax               |
------------------------+----------------------------------------+

-- 		To calculate the fourth column, add the expressions you used for the first and third columns.
--		Place SQL and result set here. 
 SELECT 100 AS Price, .07 AS `Tax Rate`, (100 * .07) AS `Amount of Tax`, (100 + (100 * .07)) AS `Total Amount`;
-- +-------+----------+---------------+--------------+
-- | Price | Tax Rate | Amount of Tax | Total Amount |
-- +-------+----------+---------------+--------------+
-- |   100 |     0.07 |          7.00 |       107.00 |
-- +-------+----------+---------------+--------------+
-- 1 row in set (0.000 sec)



-- Section D: Retrieve data from two or more tables  (choose 5 x 8 ea  = 40 pts)

-- 8.	Write a SELECT statement that joins the Categories table to the Products table and returns 
--  	these columns:     

----------------------+-----------------------------+
--		Column Title  |		Column Contains ...     |
----------------------+-----------------------------+
--		Category	  |		category_name           |
--		Product		  |		product_name            |
--		Price		  |		list_price              |
----------------------+-----------------------------+

--		Sort the result set by category_name and then by product_name in ascending sequence.  
--		There are several ways to code this using different syntax (4 come to mind immediately), 
--		please show "two different ways syntactically." 
--		Place SQL and result set here for both. 
SELECT c.category_name AS Category, p.product_name AS Product, p.list_price AS Price FROM categories c JOIN products p ON c.category_id = p.category_id ORDER BY c.category_name ASC, p.product_name ASC;
-- +----------+--------------------------------------+---------+
-- | Category | Product                              | Price   |
-- +----------+--------------------------------------+---------+
-- | Basses   | Fender Precision                     |  799.99 |
-- | Basses   | Hofner Icon                          |  499.99 |
-- | Drums    | Ludwig 5-piece Drum Set with Cymbals |  699.99 |
-- | Drums    | Tama 5-Piece Drum Set with Cymbals   |  799.99 |
-- | Guitars  | Fender Stratocaster                  |  699.00 |
-- | Guitars  | Gibson Les Paul                      | 1199.00 |
-- | Guitars  | Gibson SG                            | 2517.00 |
-- | Guitars  | Rodriguez Caballero 11               |  415.00 |
-- | Guitars  | Washburn D10S                        |  299.00 |
-- | Guitars  | Yamaha FG700S                        |  489.99 |
-- +----------+--------------------------------------+---------+
-- 10 rows in set (0.001 sec)

SELECT category_name AS Category, product_name AS Product, list_price AS Price FROM categories NATURAL JOIN products ORDER BY category_name ASC, product_name ASC;
-- +----------+--------------------------------------+---------+
-- | Category | Product                              | Price   |
-- +----------+--------------------------------------+---------+
-- | Basses   | Fender Precision                     |  799.99 |
-- | Basses   | Hofner Icon                          |  499.99 |
-- | Drums    | Ludwig 5-piece Drum Set with Cymbals |  699.99 |
-- | Drums    | Tama 5-Piece Drum Set with Cymbals   |  799.99 |
-- | Guitars  | Fender Stratocaster                  |  699.00 |
-- | Guitars  | Gibson Les Paul                      | 1199.00 |
-- | Guitars  | Gibson SG                            | 2517.00 |
-- | Guitars  | Rodriguez Caballero 11               |  415.00 |
-- | Guitars  | Washburn D10S                        |  299.00 |
-- | Guitars  | Yamaha FG700S                        |  489.99 |
-- +----------+--------------------------------------+---------+
-- 10 rows in set (0.001 sec)



-- 9.	Write a SELECT statement that joins the Customers table to the Addresses table and returns 
--		these columns:  

----------------------------+----------------------------+
--		Column Title		| 	Column Contains ...      |
----------------------------+----------------------------+
--		First Name			|	first_name               |
--		Last Name			|	last_name                |
--		Shipping Address	|	line1                    |
--		City				|	city                     |
--		States				|	state                    |
--		Zip					|	zip_code                 |
----------------------------+----------------------------+

-- 		Return one row for each customer, but only return addresses that are the shipping address for a 
-- 		customer.
--		Place SQL and result set here. 
 SELECT first_name AS 'First Name', last_name AS 'Last Name', line1 AS 'Shipping Address', city AS City, state AS States, zip_code AS Zip FROM customers c NATURAL JOIN addresses a WHERE c.shipping_address_id = a.address_id;
-- +------------+-----------+-------------------------+---------------+--------+-------+
-- | First Name | Last Name | Shipping Address        | City          | States | Zip   |
-- +------------+-----------+-------------------------+---------------+--------+-------+
-- | Allan      | Sherwood  | 100 East Ridgewood Ave. | Paramus       | NJ     | 07652 |
-- | Barry      | Zimmer    | 16285 Wendell St.       | Omaha         | NE     | 68135 |
-- | Christine  | Brown     | 19270 NW Cornell Rd.    | Beaverton     | OR     | 97006 |
-- | David      | Goldstein | 186 Vermont St.         | San Francisco | CA     | 94110 |
-- | Erin       | Valentino | 6982 Palm Ave.          | Fresno        | CA     | 93711 |
-- | Frank Lee  | Wilson    | 23 Mountain View St.    | Denver        | CO     | 80208 |
-- | Gary       | Hernandez | 7361 N. 41st St.        | New York      | NY     | 10012 |
-- | Heather    | Esway     | 2381 Buena Vista St.    | Los Angeles   | CA     | 90023 |
-- +------------+-----------+-------------------------+---------------+--------+-------+
-- 8 rows in set (0.001 sec)



-- 10.	Write a SELECT statement that joins the Customers, Orders, Order_Items, and Products tables.
--		This statement should return these columns:    

-------------------------+-------------------------+
--		Column Title	 |	Column Contents        |
-------------------------+-------------------------+
--		Last Name		 |	last_name              |
--		First Name		 |	first_name             |
--		Date of Order	 |	order_date             |
--		Product			 |	product_name           |
--		Price			 |	item_price             |
--		Discount		 |	discount_amount        |  
--		Quantity		 |	quantity               |
-------------------------+-------------------------+

-- 		Use aliases for the tables.
-- 		Sort the final result set by last_name, order_date, and product_name.
-- 		Place SQL and result set here. 
 SELECT c.last_name AS 'Last Name', c.first_name AS 'First Name', o.order_date AS 'Date of Order', p.product_name AS Product, oi.item_price AS Price, oi.discount_amount AS Discount, oi.quantity AS Quantity FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id JOIN products p ON oi.product_id = p.product_id ORDER BY c.last_name ASC, o.order_date ASC, p.product_name ASC;
-- +-----------+------------+---------------------+--------------------------------------+---------+----------+----------+
-- | Last Name | First Name | Date of Order       | Product                              | Price   | Discount | Quantity |
-- +-----------+------------+---------------------+--------------------------------------+---------+----------+----------+
-- | Brown     | Christine  | 2018-03-30 15:22:31 | Gibson Les Paul                      | 1199.00 |   359.70 |        2 |
-- | Goldstein | David      | 2018-03-31 05:43:11 | Washburn D10S                        |  299.00 |     0.00 |        1 |
-- | Goldstein | David      | 2018-04-03 12:22:31 | Fender Stratocaster                  |  699.00 |   209.70 |        1 |
-- | Hernandez | Gary       | 2018-04-02 11:26:38 | Tama 5-Piece Drum Set with Cymbals   |  799.99 |   120.00 |        1 |
-- | Sherwood  | Allan      | 2018-03-28 09:40:28 | Gibson Les Paul                      | 1199.00 |   359.70 |        1 |
-- | Sherwood  | Allan      | 2018-03-29 09:44:58 | Gibson SG                            | 2517.00 |  1308.84 |        1 |
-- | Sherwood  | Allan      | 2018-03-29 09:44:58 | Rodriguez Caballero 11               |  415.00 |   161.85 |        1 |
-- | Valentino | Erin       | 2018-03-31 18:37:22 | Washburn D10S                        |  299.00 |     0.00 |        1 |
-- | Wilson    | Frank Lee  | 2018-04-01 23:11:12 | Fender Precision                     |  799.99 |   240.00 |        1 |
-- | Wilson    | Frank Lee  | 2018-04-01 23:11:12 | Fender Stratocaster                  |  699.00 |   209.70 |        1 |
-- | Wilson    | Frank Lee  | 2018-04-01 23:11:12 | Ludwig 5-piece Drum Set with Cymbals |  699.99 |   210.00 |        1 |
-- | Zimmer    | Barry      | 2018-03-28 11:23:20 | Yamaha FG700S                        |  489.99 |   186.20 |        1 |
-- +-----------+------------+---------------------+--------------------------------------+---------+----------+----------+
-- 12 rows in set (0.001 sec)


-- 11.	Write a SELECT statement that returns these two columns:
 
-----------------------+----------------------------------------------------+
--		Column Title   |	Column Contains ...                             |
-----------------------+----------------------------------------------------+
--		Product		   |	The product_name column Products table          |
--		Price		   |	The list_price column from the Products table   |
-----------------------+----------------------------------------------------+

-- 		Return one row for each product that has the same list price as another product. 
-- 		Hint: Use a self-join to check that the product_id columns aren’t equal but the list_price 
--		columns are equal.
-- 		Sort the result set by product_name.
-- 		Place SQL and result set here. 

SELECT p1.product_name AS Product, p1.list_price AS Price FROM products p1 JOIN products p2 ON p1.list_price = p2.list_price AND p1.product_id <> p2.product_id ORDER BY p1.product_name ASC;
-- +------------------------------------+--------+
-- | Product                            | Price  |
-- +------------------------------------+--------+
-- | Fender Precision                   | 799.99 |
-- | Tama 5-Piece Drum Set with Cymbals | 799.99 |
+------------------------------------+

-- 12.	Write a SELECT statement that returns these two columns: 

-----------------------+-------------------------------------------------------+
--		Column Title   |	Column Contains ...                                |
-----------------------+-------------------------------------------------------+
--		Category	   |	The category_name column from the Categories table |
--		Product ID	   |	The product_id column from the Products table      |
-----------------------+-------------------------------------------------------+

-- 		Return one row for each category that has never been used. 
--		Hint: Use a left or right join and return only the unmatched rows.
-- 		Place SQL and result set here. 
SELECT c.category_name AS Category, p.product_id AS 'Product ID' FROM categories c LEFT JOIN products p ON c.category_id = p.category_id WHERE p.category_id IS NULL;
-- +-----------+------------+
-- | Category  | Product ID |
-- +-----------+------------+
-- | Keyboards |       NULL |
-- +-----------+------------+
-- 1 row in set (0.000 sec)


-- 13.	Use the UNION operator to generate a result set consisting of three columns from the 
--		Orders table: 

-----------------------+-------------------------------------------------+
--		Column Title   |	Column Contains ...                          |
-----------------------+-------------------------------------------------+
--		Ship_Status	   |	Contains a value of SHIPPED or NOT SHIPPED   |
--		Order_ID	   |	The order_id column                          |
--		Order_Date	   |	The order_date column                        |
-----------------------+-------------------------------------------------+

--		If the order has a value in the ship_date column, the ship_status column should contain a 
--		value of SHIPPED. Otherwise, it should contain a value of NOT SHIPPED.
--		Sort the final result set by order_date.  
--		Hint: Write two separate statements that you can test and then union them together once 
--		they produce the desired result. 
--		Place SQL and result set here. 

SELECT 'SHIPPED' AS Ship_Status, order_id AS Order_ID, order_date AS Order_Date FROM orders WHERE ship_date IS NOT NULL UNION SELECT 'NOT SHIPPED' AS Ship_Status, order_id AS Order_ID, order_date AS Order_Date FROM orders WHERE ship_date IS NULL ORDER BY Order_Date;
-- +-------------+----------+---------------------+
-- | Ship_Status | Order_ID | Order_Date          |
-- +-------------+----------+---------------------+
-- | SHIPPED     |        1 | 2018-03-28 09:40:28 |
-- | SHIPPED     |        2 | 2018-03-28 11:23:20 |
-- | SHIPPED     |        3 | 2018-03-29 09:44:58 |
-- | SHIPPED     |        4 | 2018-03-30 15:22:31 |
-- | SHIPPED     |        5 | 2018-03-31 05:43:11 |
-- | NOT SHIPPED |        6 | 2018-03-31 18:37:22 |
-- | SHIPPED     |        7 | 2018-04-01 23:11:12 |
-- | NOT SHIPPED |        8 | 2018-04-02 11:26:38 |
-- | NOT SHIPPED |        9 | 2018-04-03 12:22:31 |
-- +-------------+----------+---------------------+
-- 9 rows in set (0.001 sec)


--  Section E: Summary queries  (4 x 6 ea  = 24 pts)

-- 14.	Write a SELECT statement that returns one row with these columns:

-----------------------+----------------------------------------------------------+
--		Column Title   |	Column Contains ...                                   |
-----------------------+----------------------------------------------------------+
--		Order Count	   |	The count of the number of orders in the Orders table |
--		Total Tax	   |	The sum of the tax_amount columns in the Orders table | 
-----------------------+----------------------------------------------------------+

--		Place SQL and result set here. 
 SELECT COUNT(order_id) AS 'Order Count', SUM(tax_amount) AS 'Total Tax' FROM orders;
-- +-------------+-----------+
-- | Order Count | Total Tax |
-- +-------------+-----------+
-- |           9 |    122.24 |
-- +-------------+-----------+
-- 1 row in set (0.000 sec)



-- 15.	Write a SELECT statement that returns one row for each category that has products.  
--		Each row should contain the following columns:

-----------------------------+----------------------------------------------------------------------+
--		Column Title         |	Column Contains ...                                                 |
-----------------------------+----------------------------------------------------------------------+
--		Category 			 | 	The category_name column from the Categories table                  |  
--		Number of Products	 |	The count of the products in the Products table                     |
--		Most Expensive Price | 	The list price of the most expensive product in the Products table  |
-----------------------------+----------------------------------------------------------------------+

--		Sort the result set so the category with the most products appears first.
--		Place SQL and result set here. 
SELECT c.category_name AS Category, COUNT(*) AS 'Number of Products', MAX(p.list_price) AS 'Most Expensive Price' FROM categories c INNER JOIN products p ON c.category_id = p.category_id GROUP BY c.category_id ORDER BY COUNT(*) DESC;
-- +----------+--------------------+----------------------+
-- | Category | Number of Products | Most Expensive Price |
-- +----------+--------------------+----------------------+
-- | Guitars  |                  6 |              2517.00 |
-- | Basses   |                  2 |               799.99 |
-- | Drums    |                  2 |               799.99 |
-- +----------+--------------------+----------------------+
-- 3 rows in set (0.001 sec)


-- 16.	Write a SELECT statement that returns one row for each customer that has orders with 
--		these columns:

-----------------------+----------------------------------------------------------+
--		Column Title   |	Column Contains ...                                   |
-----------------------+----------------------------------------------------------+
--		Email Address	The email_address from the Customers table                | 
--		Total Orders	A count of the number of orders                           |
-----------------------+----------------------------------------------------------+

-- 		Return only those rows where the customer has more than 1 order.
--		Sort the result set in descending sequence by the number of orders per customer.
--		Place SQL and result set here. 
 SELECT c.email_address AS 'Email Address', COUNT(*) AS 'Total Orders' FROM customers c JOIN orders o ON c.customer_id = o.customer_id GROUP BY c.customer_id HAVING COUNT(*) > 1 ORDER BY COUNT(*) DESC;
-- +-----------------------------+--------------+
-- | Email Address               | Total Orders |
-- +-----------------------------+--------------+
-- | allan.sherwood@yahoo.com    |            2 |
-- | david.goldstein@hotmail.com |            2 |
-- +-----------------------------+--------------+
-- 2 rows in set (0.000 sec)




-- 17.	Write a SELECT statement that answers this question: What is the total amount ordered for 
--		each product?  Return these columns:

-----------------------------+----------------------------------------------------------------------+
--		Column Title         |	Column Contains ...                                                 |
-----------------------------+----------------------------------------------------------------------+
--		Product Name         |	The product name from the Products table                            |
--		Total Amount	     |	The total amount for each product in the Order_Items                | 
-----------------------------+----------------------------------------------------------------------+
--		(Hint: You can calculate the total amount by subtracting the discount amount from the 
--		item price and then multiplying it by the quantity)

--		Use the WITH ROLLUP operator to include a row that gives the grand total.
--		Place SQL and result set here. 


-- Used the COALESCE function to add the grand total title to the rollup field
 SELECT COALESCE(p.product_name, 'GRAND TOTAL') AS 'Product Name', SUM((oi.item_price - oi.discount_amount) * oi.quantity) AS 'Total Amount' FROM products p JOIN order_items oi ON p.product_id = oi.product_id GROUP BY p.product_name WITH ROLLUP;
-- +--------------------------------------+--------------+
-- | Product Name                         | Total Amount |
-- +--------------------------------------+--------------+
-- | Fender Precision                     |       559.99 |
-- | Fender Stratocaster                  |       978.60 |
-- | Gibson Les Paul                      |      2517.90 |
-- | Gibson SG                            |      1208.16 |
-- | Ludwig 5-piece Drum Set with Cymbals |       489.99 |
-- | Rodriguez Caballero 11               |       253.15 |
-- | Tama 5-Piece Drum Set with Cymbals   |       679.99 |
-- | Washburn D10S                        |       598.00 |
-- | Yamaha FG700S                        |       303.79 |
-- | GRAND TOTAL                          |      7589.57 |
-- +--------------------------------------+--------------+
-- 10 rows in set (0.001 sec)


-- BONUS QUESTION: 5 points 

-- 18.	Write a SELECT statement that answers this question: Which customers have ordered more 
--		than one product? Return these columns:

-----------------------------+----------------------------------------------------------------------+
--		Column Title         |	Column Contains ...                                                 |
-----------------------------+----------------------------------------------------------------------+
--		Email Address		 |  The email address from the Customers table                          |
--		Number of Products   |	The count of distinct products from the customer’s orders           |
-----------------------------+----------------------------------------------------------------------+

SELECT c.email_address AS 'Email Address', COUNT(DISTINCT oi.product_id) AS 'Number of Products' FROM customers c JOIN orders o ON c.customer_id = o.customer_id JOIN order_items oi ON o.order_id = oi.order_id GROUP BY c.customer_id HAVING COUNT(DISTINCT oi.product_id) > 1;

-- +-----------------------------+--------------------+
-- | Email Address               | Number of Products |
-- +-----------------------------+--------------------+
-- | allan.sherwood@yahoo.com    |                  3 |
-- | david.goldstein@hotmail.com |                  2 |
-- | frankwilson@sbcglobal.net   |                  3 |
-- +-----------------------------+--------------------+
-- 3 rows in set (0.001 sec)


--		Place SQL and result set here. 

