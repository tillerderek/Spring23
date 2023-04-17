--     Production Exam 3: Chapters 7, 9
--     100 points max – point value as indicated
   
-- Use the database indicated in each question.  Show all SQL statements and result sets for each problem. 
 
-- 1.	(MGS database – 10 points)  
--		Write a SELECT statement that returns the same result set as this SELECT statement, 
--		but do not use a join. Instead, use a subquery in a WHERE clause that uses the IN keyword. 
SELECT DISTINCT category_name
FROM categories c JOIN products p
  ON c.category_id = p.category_id
ORDER BY category_name;



-- 2.	(MGS database – 10 points)  
--		Write a SELECT statement that answers this question: Which products have a list price 
--		that’s greater than the average list price for all products?
--			Return the product_name and list_price columns for each product.
--			Sort the results by the list_price column in descending sequence.  



--3.	(MGS database – 10 points)  
--		Write a SELECT statement that returns the category_name column from the Categories table.
--		Return one row for each category that has never been assigned to any product in the Products table.  
--		Use a subquery introduced with the NOT EXISTS operator, not an outer join. 

	

-- 4.	(MGS database – 10 points)  
--		Write a SELECT statement that returns three columns:  email_address,  order_id,  
--		order total for each customer.   
--		HINT:  You will most likely need to group by two columns.  In addition, you must calculate the order total from the 
--		columns in the Order_Items table.
--		Write a second SELECT statement that uses the first SELECT statement in its FROM clause. 
--		The main query should return two columns: the customer’s email address and the largest order for that customer.  



--	5.	(MGS database – 10 points)  
--		Write a SELECT statement that returns the name and discount percent of each product that has 
--		a unique discount percent. In other words, don’t include products that have the same discount percent as another product.  
--		Use a HAVING clause in your subquery.
--		Sort the results by the product_name column.  



--	6.	(MGS database – 10 points)  
--		Use a correlated subquery to return one row per customer, representing the customer’s oldest order.
--		Each row should include these three columns: email_address, order_id, and order_date. 



--	7.	(MGS database – 10 points)  
--		Write a SELECT statement that returns these columns from the Products table:
--			The list_price column
--			The discount_percent column
--			A column named discount_amount that uses the previous two columns to calculate the discount amount and 
--				uses the ROUND function to round the result so it has 2 decimal digits.  
--				Be sure to follow up and see that your discount amount is “reasonable”.



-- 8.	MGS database – 10 points)  
--		Write a SELECT statement that returns these columns from the Orders table:
--			The order_date column
--			A column that uses the DATE_FORMAT function to return the four-digit year that’s stored in the order_date column
--			A column that uses the DATE_FORMAT function to return the order_date column in this format: Mon-DD-YYYY. 
--				In other words, use abbreviated months and separate each date component with dashes.
--			A column that uses the DATE_FORMAT function to return the order_date column with only the hours and minutes 
--				on a 12-hour clock with an am/pm indicator
--			A column that uses the DATE_FORMAT function to return the order_date column in this format: MM/DD/YY HH:MM. 
--				In other words, use two-digit months, days, and years and separate them by slashes. Use 2-digit hours and minutes on a 24-hour clock. And use leading zeros for all date/time components.  



-- 9.	(MGS database – 10 points)  
--		Write a SELECT statement that returns these columns from the Orders table:
--			The card_number column
--			The length of the card_number column
--			The last four digits of the card_number column
--		When you get that working right, add the columns that follow to the result set. This is more difficult because these columns 
--			require the use of functions within functions.
--		A column that displays the last four digits of the card_number column in this format: XXXX-XXXX-XXXX-1234. 
--			In other words, use Xs for the first 12 digits of the card number and actual numbers for the last four digits of the number.  



-- 10.	(MGS database – 10 points)  
--		Write a SELECT statement that returns these columns from the Orders table:
--			The order_id column
--			The order_date column
--			A column named approx_ship_date that’s calculated by adding 2 days to the order_date column
--			The ship_date column
--			A column named days_to_ship that shows the number of days between the order date and the ship date
--		When you have this working, add a WHERE clause that retrieves just the orders for May 2018.




