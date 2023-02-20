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

--	3.	Set the database for your mgs_userid  (My Guitar Shop) database as your active database.  
--		How many tables are in the new database?  (hint: use a variation of the show command)  
--		Select the area of the putty output window you need, cut and paste here.   (2 pts) 

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
--      Select the area of the putty output window you need, cut and paste here. 


--	4B.	SELECT * FROM categories; 
--      Select the area of the putty output window you need, cut and paste here. 


--	5A.	Write an UPDATE statement that modifies the row you just added to the Categories table in 4A. 
--		This statement should change the category_name column to “Woodwinds”, and it should use the 
--		category_id column to identify the row.
--      Select the area of the putty output window you need, cut and paste here. 


--	5B.	SELECT * FROM categories;
--      Select the area of the putty output window you need, cut and paste here. 


--	6A.	Write a DELETE statement that deletes the row you added to the Categories table in number 4A. 
--		This statement should use the category_id column to identify the row.
--       Select the area of the putty output window you need, cut and paste here. 


--	6B. SELECT * FROM categories; 
--       Select the area of the putty output window you need, cut and paste here. 


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
 
 
--	7B. SELECT  * FROM products WHERE product_code = ‘dgx_640’; 
--      Select the area of the putty output window you need, cut and paste here. 


--	8A.	Write an UPDATE statement that modifies the product you added in question 7A.  
--		This statement should change the discount_percent column from 0% to 35%.
--      Select the area of the putty output window you need, cut and paste here. 


--	8B. SELECT  * FROM products WHERE product_code = ‘dgx_640’;
--      Select the area of the putty output window you need, cut and paste here. 


--	9A.	Write a DELETE statement that deletes the row for Category ID 4 from the categories table.  
--		When you execute this statement, it will produce an error since the category has related 
--		rows in the Products table. To fix that, precede the DELETE statement with another DELETE 
--		statement that deletes all products in this category.  
--      Select the area of the putty output window you need, cut and paste here. 


--	9B. SELECT * FROM categories;
--		SELECT product_id, category_id FROM products;
--      Select the area of the putty output window you need, cut and paste here.  


--	10A. Using a column list, write an INSERT statement that adds this row to the customers table:
--		 +-------------------+-----------------------------------------+
--		 |email_address		|	rick@raven.com                         |
--		 |password 			|	"this field should be left empty"      |
--		 |first_name 		|	Rick                                   |
--		 |last_name  		|	Raven                                  |
--		 +-------------------+-----------------------------------------+
--       Select the area of the putty output window you need, cut and paste here. 


--	10B. SELECT * FROM customers ORDER BY customer_id desc limit 1;
--       Select the area of the putty output window you need, cut and paste here.  


--	11A. Write an UPDATE statement that modifies the Customers table. 
--		 Change the password column to “secret” for the customer with an email address of rick@raven.com.
--       Select the area of the putty output window you need, cut and paste here.  


--	11B. SELECT * FROM customers ORDER BY customer_id desc limit 1;
--       Select the area of the putty output window you need, cut and paste here. 


--	12A. Write an UPDATE statement that modifies the Customers table. 
--		 Change the password column to “reset” for every customer in the table. 
--       Select the area of the putty output window you need, cut and paste here.  


--	12B. SELECT customer_id, password FROM customers;
--       Select the area of the putty output window you need, cut and paste here.  


--************************************************************************************************************************
--	13.	Write an SQL statement that adds an index (orders_order_date_ix) to your mgs_userid 
--		database for the order date field in the Orders table.  
--		Afterwards use the ‘SHOW INDEX FROM orders’ command to display the indexes.  
--		Copy and paste your SQL statement, as well as, output from the SHOW statement here.  (5 pts)
--      Select the area of the putty output window you need, cut and paste here.  



--	14.	Write an SQL statement that adds an index (customers_zip_code_ix) to your mgs_userid 
--		database for the zip code field in the Addresses table.  
--		Afterwards use the ‘SHOW INDEX FROM addresses’ command to display the indexes.  
--		Copy and paste your SQL statement, as well as, output from the SHOW statement here.  (5 pts)
--      Select the area of the putty output window you need, cut and paste here. 
