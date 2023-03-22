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


--		b. If you were to join these two tables, what field(s) would you use in your join condition?  
		

-- Section B: Retreive data from a single table  (4 x 5 ea  = 20 pts)

-- 2.	Write a SELECT statement that returns four columns from the Products table:   
--		product_code,   product_name, list_price, and discount_percent. 
--		Then, run this  statement to make sure it works correctly.

--		Add an ORDER BY clause to this statement that sorts the result set by list price 
--		in descending sequence. Then, run this statement again to make sure it works correctly.
--		This is a good way to build and test a statement, one clause at a time.
--		Place SQL and result set here. 


-- 3.	Write a SELECT statement that returns one column from the Customers table named full_name 
--		that joins the last_name and first_name columns.
--		Format this column with the last name, a comma, a space, and the first name like this:  
--		Doe, John
--		Sort the result set by last name in ascending sequence.
--		Return only the customers whose last name begins with letters from M to Z.
--		Place SQL and result set here. 


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


--  Section E: Summary queries  (4 x 6 ea  = 24 pts)

-- 14.	Write a SELECT statement that returns one row with these columns:

-----------------------+----------------------------------------------------------+
--		Column Title   |	Column Contains ...                                   |
-----------------------+----------------------------------------------------------+
--		Order Count	   |	The count of the number of orders in the Orders table |
--		Total Tax	   |	The sum of the tax_amount columns in the Orders table | 
-----------------------+----------------------------------------------------------+

--		Place SQL and result set here. 


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


-- BONUS QUESTION: 5 points 

-- 18.	Write a SELECT statement that answers this question: Which customers have ordered more 
--		than one product? Return these columns:

-----------------------------+----------------------------------------------------------------------+
--		Column Title         |	Column Contains ...                                                 |
-----------------------------+----------------------------------------------------------------------+
--		Email Address		 |  The email address from the Customers table                          |
--		Number of Products   |	The count of distinct products from the customer’s orders           |
-----------------------------+----------------------------------------------------------------------+

--		Place SQL and result set here. 

