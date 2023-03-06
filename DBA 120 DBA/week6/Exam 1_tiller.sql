--************************************************************************************************************************
--	Hands-on EXAM 1: Chapters 1, 10, 11, 8, & 5 
--	104 points available – point values indicated
--************************************************************************************************************************
-- Questions 2 - 14
--
--
--	2.	Logon to MySQL.  Issue a command to show you which databases you have.  (show databases).
--		Look and see what databases are listed there.   
--		Select the area of the putty output window you need, cut and paste here.   (2 pts) 
show databases;
-- +--------------------+
-- | Database           |
-- +--------------------+
-- | ap                 |
-- | ap_derekatiller    |
-- | derekatiller       |
-- | ex                 |
-- | information_schema |
-- | mgs_derekatiller   |
-- +--------------------+


--	3.	Set the database for your mgs_userid  (My Guitar Shop) database as your active database.  
--		How many tables are in the new database?  (hint: use a variation of the show command)  
--		Select the area of the putty output window you need, cut and paste here.   (2 pts) 
use mgs_derekatiller;
-- no tables until source command is run.
source /home/derekatiller/create_db_mgs_derekatiller.sql

--  after source command the following output:
show tables;
-- +----------------------------+
-- | Tables_in_mgs_derekatiller |
-- +----------------------------+
-- | addresses                  |
-- | administrators             |
-- | categories                 |
-- | customers                  |
-- | order_items                |
-- | orders                     |
-- | products                   |
-- +----------------------------+
-- 7 rows in set (0.001 sec)

--************************************************************************************************************************
--	For 4 - 12, you should have two answers. You will be given the SQL to check and see that your table has been modified 
--	correctly for the second answer.  (5 pts each)
--		Part A:  Show SQL and results to solve each problem.
--		Part B:  Show SQL and results to check/verify Part A.   
--************************************************************************************************************************

--	4A.	Write an INSERT statement that adds this row to the categories table:
--		+---------------+-----------------------------------------+
--		|category_id	|	the next automatically generated ID   |
--		|category_name	|	Brass                                 |
--		+---------------+-----------------------------------------+
INSERT INTO categories(category_name) VALUES('Brass');

--      Select the area of the putty output window you need, cut and paste here. 
-- Query OK, 1 row affected (0.002 sec)


--	4B.	SELECT * FROM categories; 
--      Select the area of the putty output window you need, cut and paste here. 
-- +-------------+---------------+
-- | category_id | category_name |
-- +-------------+---------------+
-- |           2 | Basses        |
-- |           5 | Brass         |
-- |           3 | Drums         |
-- |           1 | Guitars       |
-- |           4 | Keyboards     |
-- +-------------+---------------+


--	5A.	Write an UPDATE statement that modifies the row you just added to the Categories table in 4A. 
--		This statement should change the category_name column to “Woodwinds”, and it should use the 
--		category_id column to identify the row.
UPDATE categories
    -> SET category_name = 'Woodwinds'
    -> WHERE category_id = 5;

--      Select the area of the putty output window you need, cut and paste here. 
-- Query OK, 1 row affected (0.002 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0
-- 

--	5B.	SELECT * FROM categories;
--      Select the area of the putty output window you need, cut and paste here. 
-- +-------------+---------------+
-- | category_id | category_name |
-- +-------------+---------------+
-- |           2 | Basses        |
-- |           3 | Drums         |
-- |           1 | Guitars       |
-- |           4 | Keyboards     |
-- |           5 | Woodwinds     |
-- +-------------+---------------+
-- 5 rows in set (0.001 sec)


--	6A.	Write a DELETE statement that deletes the row you added to the Categories table in number 4A. 
--		This statement should use the category_id column to identify the row.
--       Select the area of the putty output window you need, cut and paste here. 
DELETE FROM categories
    -> WHERE category_id = 5;
-- Query OK, 1 row affected (0.002 sec)


--	6B. SELECT * FROM categories; 
--       Select the area of the putty output window you need, cut and paste here. 
-- +-------------+---------------+
-- | category_id | category_name |
-- +-------------+---------------+
-- |           2 | Basses        |
-- |           3 | Drums         |
-- |           1 | Guitars       |
-- |           4 | Keyboards     |
-- +-------------+---------------+
-- 4 rows in set (0.000 sec)


--	7A. Using a column list, write an INSERT statement that adds this row to the products table: 
--		+-------------------+-----------------------------------------+
--		|product_id			|	the next automatically generated ID   |
--		|category_id		|	4                                     |
--		|product_code		|	dgx_640                               |
--		|product_name		|	Yamaha DGX 640 88-Key Digital Piano   |
--		|description		|	Long description to come.             |
--		|list_price			|	799.99                                |
--		|discount_percent	|	0                                     |
--		|date_added			|	Today’s date/time.                    |
--		+-------------------+-----------------------------------------+
--      Select the area of the putty output window you need, cut and paste here. 
  INSERT INTO products (product_id, category_id, product_code, product_name, description, list_price, discount_percent, date_added)
    -> VALUES (NULL, 4, 'dgx_640 ', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, now());


--	7B. SELECT  * FROM products WHERE product_code = ‘dgx_640’; 
--      Select the area of the putty output window you need, cut and paste here. 

--   WHERE product_code = 'dgx_640';
-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+
-- | product_id | category_id | product_code | product_name                        | description               | list_price | discount_percent | date_added          |
-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+
-- |         11 |           4 | dgx_640      | Yamaha DGX 640 88-Key Digital Piano | Long description to come. |     799.99 |             0.00 | 2023-02-21 11:42:17 |
-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+


--	8A.	Write an UPDATE statement that modifies the product you added in question 7A.  
--		This statement should change the discount_percent column from 0% to 35%.
--      Select the area of the putty output window you need, cut and paste here. 
 UPDATE products
    -> SET discount_percent = 35
    -> WHERE product_code = 'dgx_640';
-- Query OK, 1 row affected (0.003 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


--	8B. SELECT  * FROM products WHERE product_code = ‘dgx_640’;
--      Select the area of the putty output window you need, cut and paste here. 

-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+
-- | product_id | category_id | product_code | product_name                        | description               | list_price | discount_percent | date_added          |
-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+
-- |         11 |           4 | dgx_640      | Yamaha DGX 640 88-Key Digital Piano | Long description to come. |     799.99 |            35.00 | 2023-02-21 11:42:17 |
-- +------------+-------------+--------------+-------------------------------------+---------------------------+------------+------------------+---------------------+

--	9A.	Write a DELETE statement that deletes the row for Category ID 4 from the categories table.  
--		When you execute this statement, it will produce an error since the category has related 
--		rows in the Products table. To fix that, precede the DELETE statement with another DELETE 
--		statement that deletes all products in this category.  
--      Select the area of the putty output window you need, cut and paste here. 
 DELETE FROM products
    -> WHERE category_id = 4;
-- Query OK, 1 row affected (0.004 sec)

DELETE FROM categories
  WHERE category_id = 4;
-- Query OK, 1 row affected (0.005 sec)

--	9B. SELECT * FROM categories;
--		SELECT product_id, category_id FROM products;
--      Select the area of the putty output window you need, cut and paste here.  
-- +-------------+---------------+
-- | category_id | category_name |
-- +-------------+---------------+
-- |           2 | Basses        |
-- |           3 | Drums         |
-- |           1 | Guitars       |
-- +-------------+---------------+
-- 3 rows in set (0.000 sec)


--	10A. Using a column list, write an INSERT statement that adds this row to the customers table:
--		 +-------------------+-----------------------------------------+
--		 |email_address		|	rick@raven.com                         |
--		 |password 			|	"this field should be left empty"      |
--		 |first_name 		|	Rick                                   |
--		 |last_name  		|	Raven                                  |
--		 +-------------------+-----------------------------------------+
--       Select the area of the putty output window you need, cut and paste here. 
INSERT INTO customers (email_address, password, first_name, last_name)
    -> VALUES ('rick@raven.com', '"this field should be left empty"', 'Rick', 'Raven');
-- Query OK, 1 row affected (0.002 sec)


--	10B. SELECT * FROM customers ORDER BY customer_id desc limit 1;
--       Select the area of the putty output window you need, cut and paste here.  
-- +-------------+----------------+-----------------------------------+------------+-----------+---------------------+--------------------+
-- | customer_id | email_address  | password                          | first_name | last_name | shipping_address_id | billing_address_id |
-- +-------------+----------------+-----------------------------------+------------+-----------+---------------------+--------------------+
-- |           9 | rick@raven.com | "this field should be left empty" | Rick       | Raven     |                NULL |               NULL |
-- +-------------+----------------+-----------------------------------+------------+-----------+---------------------+--------------------+
-- 1 row in set (0.001 sec)


--	11A. Write an UPDATE statement that modifies the Customers table. 
--		 Change the password column to “secret” for the customer with an email address of rick@raven.com.
--       Select the area of the putty output window you need, cut and paste here.  
UPDATE customers
    -> SET password = "secret"
    -> WHERE email_address = 'rick@raven.com';
-- Query OK, 1 row affected (0.002 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0


--	11B. SELECT * FROM customers ORDER BY customer_id desc limit 1;
--       Select the area of the putty output window you need, cut and paste here. 

-- +-------------+----------------+----------+------------+-----------+---------------------+--------------------+
-- | customer_id | email_address  | password | first_name | last_name | shipping_address_id | billing_address_id |
-- +-------------+----------------+----------+------------+-----------+---------------------+--------------------+
-- |           9 | rick@raven.com | secret   | Rick       | Raven     |                NULL |               NULL |
-- +-------------+----------------+----------+------------+-----------+---------------------+--------------------+
-- 1 row in set (0.000 sec)


--	12A. Write an UPDATE statement that modifies the Customers table. 
--		 Change the password column to “reset” for every customer in the table. 
--       Select the area of the putty output window you need, cut and paste here.  
 UPDATE customers
    -> SET password = "reset";
-- Query OK, 9 rows affected (0.002 sec)
-- Rows matched: 9  Changed: 9  Warnings: 0


--	12B. SELECT customer_id, password FROM customers;
--       Select the area of the putty output window you need, cut and paste here.  

-- +-------------+----------+
-- | customer_id | password |
-- +-------------+----------+
-- |           1 | reset    |
-- |           2 | reset    |
-- |           3 | reset    |
-- |           4 | reset    |
-- |           5 | reset    |
-- |           6 | reset    |
-- |           7 | reset    |
-- |           8 | reset    |
-- |           9 | reset    |
-- +-------------+----------+
-- 9 rows in set (0.000 sec)


--************************************************************************************************************************
--	13.	Write an SQL statement that adds an index (orders_order_date_ix) to your mgs_userid 
--		database for the order date field in the Orders table.  
--		Afterwards use the ‘SHOW INDEX FROM orders’ command to display the indexes.  
--		Copy and paste your SQL statement, as well as, output from the SHOW statement here.  (5 pts)
--      Select the area of the putty output window you need, cut and paste here.  
 CREATE INDEX orders_order_date_ix
    -> ON orders (order_date);
-- Query OK, 0 rows affected (0.010 sec)
-- Records: 0  Duplicates: 0  Warnings: 0

SHOW INDEX FROM orders
    -> WHERE column_name='order_date';
-- +--------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- | Table  | Non_unique | Key_name             | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
-- +--------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- | orders |          1 | orders_order_date_ix |            1 | order_date  | A         |           9 |     NULL | NULL   |      | BTREE      |         |               |
-- +--------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- 1 row in set (0.001 sec)



--	14.	Write an SQL statement that adds an index (customers_zip_code_ix) to your mgs_userid 
--		database for the zip code field in the Addresses table.  
--		Afterwards use the ‘SHOW INDEX FROM addresses’ command to display the indexes.  
--		Copy and paste your SQL statement, as well as, output from the SHOW statement here.  (5 pts)
--      Select the area of the putty output window you need, cut and paste here. 
CREATE INDEX customers_zip_code_ix
    -> ON addresses (zip_code);
-- Query OK, 0 rows affected (0.010 sec)
-- Records: 0  Duplicates: 0  Warnings: 0

SHOW INDEX FROM addresses WHERE column_name='zip_code';
-- +-----------+------------+-----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- | Table     | Non_unique | Key_name              | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
-- +-----------+------------+-----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- | addresses |          1 | customers_zip_code_ix |            1 | zip_code    | A         |          12 |     NULL | NULL   |      | BTREE      |         |               |
-- +-----------+------------+-----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
-- 1 row in set (0.000 sec)
