-- Use the AP database on our server to execute the following SELECT statements. 
-- * Cut and paste your SQL statement and results below each instruction.

-- 1.	Write a SELECT statement that returns three columns from the Vendors table:
--		vendor_name, vendor_contact_last_name, and vendor_contact_first_name.    (18 pts)
--		Then, run this statement to make sure it works correctly. 
--
--		Add an ORDER BY clause to this statement that sorts the result set by last name and then first name, 
--		both in ascending sequence.  Then, run this statement again to make sure it works correctly.  
--		This is a good way to build and test a statement, one clause at a time.
--		
--		This should retrieve 122 rows.
--		Just cut the first 10 lines and then the last 5 lines along with the row count. 


-- 2.	Write a SELECT statement that returns one column from the Vendors table named full_name that joins 
--		the vendor_contact_last_name and vendor_contact_first_name columns.    (18 pts)
--		Format this column with the last name, a comma, a space, and the first name like this:  Doe, John 
--
--		Sort the result set by last name and then first name in ascending sequence.
--
--		Return only the contacts whose last name begins with the letter A, B, C, or E.   (18 pts)
--
--		This should retrieve 41 rows.   
--


-- 3.	Write  a SELECT statement that returns these column names and data from the Invoices table:    (18 pts)
--		Column Name					Contains ....
--		Due Date					The invoice_due_date column
--		Invoice Total				The invoice_total column
--		10%							10% of the value of invoice_total
--		Plus 10%					The value of invoice_total plus 10%
--
--		Return only the rows with an invoice total that’s greater than or equal to 500 and less than or equal to 1000.
--		This should retrieve 12 rows. 


--4.	Write a SELECT statement that returns these column name and data from the Invoices table:     (18 pts)
--		Column Name					Contains ....
--		Invoice Number				The invoice_number column
--		Invoice Total				The invoice_total column
--		Payment + Credit Total		Sum of the payment_total and credit_total columns
--		Balance 					The invoice_total column minus the payment_total and credit_total columns
--
--		Return only invoices that have a balance due that’s greater than $50.
--		Sort the result set by balance due in descending sequence.
--		Use the LIMIT clause so the result set contains only the rows with the 5 largest balances. 


--5.	Write a SELECT statement that returns these columns from the Invoices table:     (18 pts)
--		Column Name					Contains ....
--		Invoice Number				The invoice_number column
--		Date of Invoice				The invoice_date column
--		Balance Due					The invoice_total column minus the payment_total and credit_total columns
--		Date of Payment	 			The payment_date column
--
--		Return only the rows where the payment_date column contains a null value.
--		This should retrieve 11 rows. 


--6.	Write a SELECT statement without a FROM clause that creates a row with these columns:    (10 pts)
--		Column Name					Contains ....
--		starting_principal			starting principal of $50,000
--		interest					6.5% of the principal
--		principal_plus_interest		The principal plus the interest
--									(To calculate the third column, add the expressions you used for the first two columns.) 

