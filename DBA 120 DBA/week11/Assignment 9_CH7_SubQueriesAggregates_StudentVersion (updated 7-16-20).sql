--   Assignment 9_CH7_SubQueries&Aggregates
--
--
-- *  Use the ap database to complete the questions below.
-- *  Cut and paste your SQL statement and result set below each question. 
-- ** Important: When you enter your SQL statement do not key it on one line.
--               Please provide a SQL statement which I can grade without having to scroll horitizontally
--               to see the complete SQL statement.
--               When the SQL statement is long and it is all keyed on one line, I have a very difficult time
--               finding the problem and providing feedback to you. I take a lot of time trying to provide
--               feedback that will help you to understand what the problem is and how to correct it.
--				 Without feedback on errors in your SQL statements, you would not be able to learn what was
--				 incorrect in your code.
--  ** Please remember to add your name or initials on the end of this script name and type .sql
--				I have been receiving .txt files. This happens if you click Save As and you forget to type .sql at the end.
--			    I have to resave them as a .sql file to be able to grade them.

   (12.5 points each)

-- 1a.	Write a SELECT statement that returns the same result set as this SELECT statement, 
-- 		but don’t use a join.  Instead, use a subquery in a WHERE clause that uses the IN keyword. 

SELECT DISTINCT vendor_name 
FROM vendors JOIN invoices
    ON vendors.vendor_id = invoices.vendor_id
ORDER BY vendor_name; 


-- 1b.	For the SELECT statement in Q1, what is the goal of that statement? 


-- 2.	Write a SELECT statement that answers this question:  
--		Which invoices have a payment total that’s greater than the average payment total 
--		for all invoices that have a payment total greater than 0? 
--		Return the invoice_number and invoice_total columns for each invoice.  
--		This should return 20 rows. 


-- 3.	Write a select statement that returns two columns from the general_ledger_accounts 
--		table: account_number and account_description.
--		Return one row for each account number that has never been assigned to any line item 
--		in the invoice_line_items table.  
--		To do that, use a subquery introduced with the NOT EXISTS operator.  
--		Sort the results by the account_number column.
--		Hint:Refer to pgs. 214 - 215 in the textbook.
--		This should return 54 rows. 
 

-- 4.	Write a SELECT statement that returns four columns: 
--		vendor_name, invoice_id, invoice_sequence, and line_item_amount.
--		Return a row for each line item of each invoice that has more than one line item 
--		in the invoice_line_items table.  
--		Hint:  Use a subquery that tests for invoice_sequence > 1.  
--		This should return 6 rows. 


-- 5.	Write a SELECT statement that returns two columns: 
--		vendor_id and the largest unpaid invoice for each vendor.  
--		To do this, you can group the result set by the vendor_id column.  
--		This should return 7 rows. 

--		Write a second SELECT statement that uses the first SELECT statement in it’s FROM clause.  
--		The main query should return a single value that represents the sum of the largest 
--		unpaid invoices for each vendor.  
--		This should return 1 row. 


-- 6.	Write a SELECT statement that returns the name, city, and state of each vendor that’s 
--		located in a unique city and state.  
--		In other words, don’t include vendors that have a city and state in common with another vendor.
--		Sort the results by the vendor_state and vendor_city columns. 
--		This should return 38 rows.


-- 7.	Use a correlated subquery to return one row per vendor, representing the vendor’s oldest 
--		invoice (the one with the earliest date).  
--		Each row should include these four columns: 
--		vendor_name, invoice_number, invoice_date, and invoice_total.  
--		Sort the results by the vendor_name column. 
--      Hint:Refer to pgs. 212 - 213 in the textbook.
--		This should return 34 rows. 


-- 8.	Rewrite Q7 so it gets the same result but uses an inline view instead of a 
--		correlated subquery. 
--		Hint:Refer to pgs. 218 - 219 in the textbook.

      
