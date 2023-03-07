-- Use the AP database on our server DBA120.abtech.edu to execute the following SELECT statements. 
-- *Cut and paste your SQL statement and result set below each instruction.      (14 points each). 

-- 1.	Write a SELECT statement that returns all columns from the Vendors table inner-joined with 
--      all columns from the invoices table.  
--      
-- 		This should return 114 rows.  
--      Hint: You can use an asterisk (*) to select the columns from both tables. 
--	Cut and paste your SQL statement and result set below.



-- 2.	Write  a select statement that returns these four columns: 
--		Column Name			Contains …..
--		vendor_name			The vendor_name column from the vendors table.
--		invoice_number		The invoice_number column from the invoices table.
--		invoice_date		The invoice_date column from the invoices table.
--		balance_due			The invoice_total column minus the payment_total and credit_total columns from invoices.
--
-- 		Use these aliases for the tables:  v for vendors and i for invoices. 
-- 		Return 1 row for each invoice with a non-zero balance.
--		This should retrieve 11 rows. 
-- 		Sort the result set by vendor_name in ascending order. 
--	Cut and paste your SQL statement and result set below.



-- 3.	Write a SELECT statement that returns these three columns: 
--		Column Name			Contains …..
--		vendor_name			The vendor_name column from the vendors table
--		default_account		The default_acount_number column from the vendors table
--		description			The account_description column from the general_ledger_accounts table
--
--		Return one row for each vendor.
--		This should retrieve 122 rows. 
--		Sort the result set by account_description and then by vendor_name.
--	Cut and paste your SQL statement and result set below.



-- 4.	Write a SELECT statement that returns these five columns: 
--		Column Name			Contains …..
--		vendor_name			The vendor_name column from the vendors table
--		invoice_date		The invoice_date column from the invoices table
--		invoice_number 		The invoice_number column from the invoices table
--		li_sequence			The invoice_sequence column from the invoice_line_items table
--		li_amount			The line_item_amount column from te invoice_line_items table
--
-- 		Use aliases for the tables.
--		This should retrieve 118 rows. 
-- 		Sort the final result set by vendor_ name, invoice_date, invoice_number, and invoice_sequence.
--	Cut and paste your SQL statement and result set below.



-- 5.	Write a SELECT statement that returns three columns:
--		Column Name			Contains …..
--		vendor_id			The vendor_id column from the vendors table.
--		vendor_name			The vendor_name column from the vendors table.
--		contact_name		A concatenation of the vendor_contact_first_name and vendor_contact_last_name 
--                      	columns with a space between
--
-- 		Return one row for each vendor whose contact has the same last name as another vendor’s contact. 
-- 		This should return 2 rows.  
-- 		Hint: Use a self-join to check that the vendor_id columns aren’t equal but the vendor_contact_last_name 
-- 			  columns are equal. 
-- 		Sort the results by vendor_contact_last_name.
--	Cut and paste your SQL statement and result set below.



-- 6.	Write a SELECT statement that returns these three columns:
--		Column Name				Contains …..
--		account_number			The account_number column from the general_ledger_accounts table
--		account_description		The account_description column from the general ledger_accounts table
--		invoice_id				The invoice_id column from the invoice_line_items table
--
-- 		Return one row for each account number that has never been used.  
-- 		This should return 54 rows.  
-- 		Hint: Use an outer join and only return rows where the invoice_id column contains a null value. 
-- 		Remove the invoice_id columns from the SELECT clause.
-- 		Sort the final result set by the account_number column. 
--	Cut and paste your SQL statement and result set below.



-- 7.	Use the UNION operator to generate a result set consisting of two columns from the vendors table: 
--      vendor_name and vendor_state.  
--      If the vendor is in California, the vendor_state value should be “CA”; 
--      otherwise, the vendor_state should be “Outside CA.”  
--      Sort the final result set by vendor_name. 
--	Cut and paste your SQL statement and result set below.




