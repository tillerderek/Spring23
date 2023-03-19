--		Activity 8_CH6_Summaries_Aggregates
--
-- Use the ap database on our server DBA120.abtech.edu to execute the following SELECT statements. 
-- * Cut and paste your SQL statement and result set below each instruction.  
-- ** Remember: If the results set is large you may provide the first few and last few rows including the row count.       
--(Q1 – Q8 - 9 pts ea). 

-- 1.	Write a SELECT statement that returns these columns for each vendor in 
--		the Invoices table:
--------------------+-----------------------------------------------------------+
--	Column Name 	|	Contains …                                              |
--------------------+-----------------------------------------------------------+
--	vendor_id		|	vendor_id from the invoices table                       |
--	Invoice Total	|	Sum of the invoice_total columns in the invoices table  |
--					|	for that vendor                                         |
--------------------+-----------------------------------------------------------+
--	This should return 34 rows. 
--	Cut and paste your SQL statement and results set below.
MariaDB [ap]> SELECT vendor_id, SUM(invoice_total) AS 'Invoice Total' FROM invoices GROUP BY vendor_id;
-- +-----------+---------------+
-- | vendor_id | Invoice Total |
-- +-----------+---------------+
-- |        34 |       1200.12 |
-- |        37 |        564.00 |
-- |        48 |        856.92 |
-- |        72 |      21927.31 |
-- |        80 |        265.36 |
-- |        81 |        936.93 |
-- |        82 |        600.00 |
-- |        83 |       2154.42 |
-- |        86 |       2433.00 |
-- |        88 |        207.78 |
-- |        89 |         95.00 |
-- |        90 |        356.48 |
-- |        94 |         17.50 |
-- |        95 |        171.01 |
-- |        96 |        662.00 |
-- |        97 |         19.90 |
-- |        99 |       6940.25 |
-- |       100 |       2184.50 |
-- |       102 |         41.80 |
-- |       103 |       1367.50 |
-- |       104 |       7125.34 |
-- |       105 |        220.00 |
-- |       106 |        503.20 |
-- |       107 |       1600.00 |
-- |       108 |        450.00 |
-- |       110 |     119892.41 |
-- |       113 |       1750.00 |
-- |       114 |        290.00 |
-- |       115 |         43.67 |
-- |       117 |         16.62 |
-- |       119 |       4901.26 |
-- |       121 |       6940.25 |
-- |       122 |      23177.96 |
-- |       123 |       4378.02 |
-- +-----------+---------------+
-- 34 rows in set (0.000 sec)




-- 2.	Using the SELECT statement from Q1, replace the vendor_id with the 
--		vendor_name from the vendors table. 
--------------------+-----------------------------------------------------------+
--	Column Name		|	Contains …                                              |
--------------------+-----------------------------------------------------------+
--	vendor_name		|	vendor_name from the vendors table                      |
--	Invoice Total	|	Sum of the invoice_total columns in the invoices table  |
--					|	for that vendor                                         |
--------------------+-----------------------------------------------------------+
--  This should return 34 rows. 
--	Cut and paste your SQL statement and results set below.
MariaDB [ap]> SELECT vendor_name, SUM(invoice_total) AS 'Invoice Total' FROM invoices NATURAL JOIN vendors GROUP BY vendor_name;
-- +---------------------------------+---------------+
-- | vendor_name                     | Invoice Total |
-- +---------------------------------+---------------+
-- | Abbey Office Furnishings        |         17.50 |
-- | Bertelsmann Industry Svcs. Inc  |       6940.25 |
-- | Blue Cross                      |        564.00 |
-- | Cahners Publishing Company      |       2184.50 |
-- | Cardinal Business Media, Inc.   |        265.36 |
-- | Coffee Break Service            |         41.80 |
-- | Compuserve                      |         19.90 |
-- | Computerworld                   |       2433.00 |
-- | Data Reproductions Corp         |      21927.31 |
-- | Dean Witter Reynolds            |       1367.50 |
-- | Digital Dreamworks              |       7125.34 |
-- | Dristas Groom & McCormick       |        220.00 |
-- | Edward Data Services            |        207.78 |
-- | Evans Executone Inc             |         95.00 |
-- | Federal Express Corporation     |       4378.02 |
-- | Ford Motor Credit Company       |        503.20 |
-- | Franchise Tax Board             |       1600.00 |
-- | Fresno County Tax Collector     |        856.92 |
-- | Gostanian General Building      |        450.00 |
-- | IBM                             |       1200.12 |
-- | Ingram                          |       2154.42 |
-- | Malloy Lithographing Inc        |     119892.41 |
-- | Pacific Bell                    |        171.01 |
-- | Pollstar                        |       1750.00 |
-- | Postmaster                      |        290.00 |
-- | Reiter's Scientific & Pro Books |        600.00 |
-- | Roadway Package System, Inc     |         43.67 |
-- | Suburban Propane                |         16.62 |
-- | United Parcel Service           |      23177.96 |
-- | Wakefield Co                    |        356.48 |
-- | Wang Laboratories, Inc.         |        936.93 |
-- | Wells Fargo Bank                |        662.00 |
-- | Yesmed, Inc                     |       4901.26 |
-- | Zylka Design                    |       6940.25 |
-- +---------------------------------+---------------+
-- 34 rows in set (0.001 sec)



-- 3.	Write a SELECT statement that returns these columns for each vendor in 
--		the Invoices table:
--------------------+-----------------------------------------------------------+
--	Column Name 	|	Contains …                                              |
--------------------+-----------------------------------------------------------+
--	vendor_name		|	vendor_name from the vendors table                      |
--	payment_total	|	Sum of the payment_total columns in the invoices table  |
--                  | 	for that vendor                                         |
--------------------+-----------------------------------------------------------+
-- This should return 34 rows. 
--	Cut and paste your SQL statement and results set below.

MariaDB [ap]> SELECT vendor_name, SUM(payment_total) AS 'payment_total' FROM invoices NATURAL JOIN vendors GROUP BY vendor_name;
-- +---------------------------------+---------------+
-- | vendor_name                     | payment_total |
-- +---------------------------------+---------------+
-- | Abbey Office Furnishings        |         17.50 |
-- | Bertelsmann Industry Svcs. Inc  |       6940.25 |
-- | Blue Cross                      |        340.00 |
-- | Cahners Publishing Company      |       2184.50 |
-- | Cardinal Business Media, Inc.   |        175.00 |
-- | Coffee Break Service            |         41.80 |
-- | Compuserve                      |         19.90 |
-- | Computerworld                   |       2433.00 |
-- | Data Reproductions Corp         |      21842.00 |
-- | Dean Witter Reynolds            |       1367.50 |
-- | Digital Dreamworks              |       7125.34 |
-- | Dristas Groom & McCormick       |        220.00 |
-- | Edward Data Services            |        207.78 |
-- | Evans Executone Inc             |         95.00 |
-- | Federal Express Corporation     |       4167.13 |
-- | Ford Motor Credit Company       |          0.00 |
-- | Franchise Tax Board             |       1600.00 |
-- | Fresno County Tax Collector     |        856.92 |
-- | Gostanian General Building      |        450.00 |
-- | IBM                             |       1200.12 |
-- | Ingram                          |       1575.00 |
-- | Malloy Lithographing Inc        |      86069.22 |
-- | Pacific Bell                    |        171.01 |
-- | Pollstar                        |       1750.00 |
-- | Postmaster                      |        290.00 |
-- | Reiter's Scientific & Pro Books |        600.00 |
-- | Roadway Package System, Inc     |         43.67 |
-- | Suburban Propane                |         16.62 |
-- | United Parcel Service           |      23177.96 |
-- | Wakefield Co                    |        356.48 |
-- | Wang Laboratories, Inc.         |        936.93 |
-- | Wells Fargo Bank                |        662.00 |
-- | Yesmed, Inc                     |       4901.26 |
-- | Zylka Design                    |       6740.25 |
-- +---------------------------------+---------------+
-- 34 rows in set (0.001 sec)



-- 4.	Write a SELECT statement that returns these columns for each vendor in 
--		the Invoices table:
--------------------+-----------------------------------------------------------+
--	Column Name 		Contains …                                              |
--------------------+-----------------------------------------------------------+
--	vendor_name     |	vendor_name from the vendors table                      |
--	number invoices |	count of the invoices in the invoices tables for        |
--                  | 	each vendor                                             |
--	invoice_total   |	sum of the invoice_total column in the invoices tables  |
--                  |	for each vendor                                         |
--------------------+-----------------------------------------------------------+
-- This should return 34 rows. 
--	Cut and paste your SQL statement and results set below.
MariaDB [ap]> SELECT vendor_name, COUNT(invoice_number) AS 'number invoices', SUM(invoice_total) AS 'invoice_total' FROM invoices NATURAL JOIN vendors GROUP BY vendor_name;
-- +---------------------------------+-----------------+---------------+
-- | vendor_name                     | number invoices | invoice_total |
-- +---------------------------------+-----------------+---------------+
-- | Abbey Office Furnishings        |               1 |         17.50 |
-- | Bertelsmann Industry Svcs. Inc  |               1 |       6940.25 |
-- | Blue Cross                      |               3 |        564.00 |
-- | Cahners Publishing Company      |               1 |       2184.50 |
-- | Cardinal Business Media, Inc.   |               2 |        265.36 |
-- | Coffee Break Service            |               1 |         41.80 |
-- | Compuserve                      |               2 |         19.90 |
-- | Computerworld                   |               1 |       2433.00 |
-- | Data Reproductions Corp         |               2 |      21927.31 |
-- | Dean Witter Reynolds            |               1 |       1367.50 |
-- | Digital Dreamworks              |               1 |       7125.34 |
-- | Dristas Groom & McCormick       |               1 |        220.00 |
-- | Edward Data Services            |               1 |        207.78 |
-- | Evans Executone Inc             |               1 |         95.00 |
-- | Federal Express Corporation     |              47 |       4378.02 |
-- | Ford Motor Credit Company       |               1 |        503.20 |
-- | Franchise Tax Board             |               1 |       1600.00 |
-- | Fresno County Tax Collector     |               1 |        856.92 |
-- | Gostanian General Building      |               1 |        450.00 |
-- | IBM                             |               2 |       1200.12 |
-- | Ingram                          |               2 |       2154.42 |
-- | Malloy Lithographing Inc        |               5 |     119892.41 |
-- | Pacific Bell                    |               6 |        171.01 |
-- | Pollstar                        |               1 |       1750.00 |
-- | Postmaster                      |               1 |        290.00 |
-- | Reiter's Scientific & Pro Books |               1 |        600.00 |
-- | Roadway Package System, Inc     |               4 |         43.67 |
-- | Suburban Propane                |               1 |         16.62 |
-- | United Parcel Service           |               9 |      23177.96 |
-- | Wakefield Co                    |               1 |        356.48 |
-- | Wang Laboratories, Inc.         |               1 |        936.93 |
-- | Wells Fargo Bank                |               1 |        662.00 |
-- | Yesmed, Inc                     |               1 |       4901.26 |
-- | Zylka Design                    |               8 |       6940.25 |
-- +---------------------------------+-----------------+---------------+
-- 34 rows in set (0.001 sec)



-- 5.	Each invoice_line_item contains an account_number because each line can 
--		be billed to a different account number (i.e.  postage, utilities, etc.)    
--		Write a SELECT statement that returns these columns for each 
--		account_number in the invoice line items table where the count of items
--		is greater than 1.  
--		Group the result set by account description and 
--		sort the results in descending sequence by the sum of the line item amounts. 
-------------------------+-----------------------------------------------------------+
--	Column Name				Contains …                                               |
-------------------------+-----------------------------------------------------------+
--	account_description	 |	account_description column from the general ledger       |
--           			 |	accounts table                                           |
--	count_of_items		 |	count of the items in the invoice line items tables      |
-- 						 |	that have the same account number                        |
--	line_item_sum		 |	sum of the line_item_amount for items with the same      |
-- 			             |	account number                                           | 
-------------------------+-----------------------------------------------------------+
-- This should return 10 rows. 
--	Cut and paste your SQL statement and results set below.

MariaDB [ap]> SELECT account_description, COUNT(account_number) AS 'count_of_items', SUM(line_item_amount) AS 'line_item_sum' FROM general_ledger_accounts NATURAL JOIN invoice_line_items GROUP BY account_description HAVING COUNT(account_number)>1 ORDER BY SUM(line_item_amount) desc;
-- +--------------------------------+----------------+---------------+
-- | account_description            | count_of_items | line_item_sum |
-- +--------------------------------+----------------+---------------+
-- | Book Printing Costs            |              8 |     148759.97 |
-- | Freight                        |             60 |      27599.65 |
-- | Outside Services               |              3 |      13394.10 |
-- | Book Production Costs          |              8 |       6175.12 |
-- | Books, Dues, and Subscriptions |              6 |       5207.32 |
-- | Direct Mail Advertising        |              6 |       3900.77 |
-- | Computer Equipment             |              3 |       2137.05 |
-- | Group Insurance                |              3 |        564.00 |
-- | Telephone                      |              7 |        266.01 |
-- | Office Supplies                |              3 |        175.80 |
-- +--------------------------------+----------------+---------------+
-- 10 rows in set (0.002 sec)



-- 6.	Modify the SELECT in Q5 so it returns only the invoices dated in the 
--		2nd quarter of 2018 (April 1, 2018 to June 30, 2018).  
--		This should still return 10 rows, only with some different line item counts 
--		for each vendor.  
--		Hint:	Join the invoices table so that you can code a search condition based 
--				on the invoice_date.
--	Cut and paste your SQL statement and results set below.
MariaDB [ap]> SELECT account_description, COUNT(account_number) AS 'count_of_items', SUM(line_item_amount) AS 'line_item_sum'
    -> FROM general_ledger_accounts
    -> NATURAL JOIN invoice_line_items
    -> NATURAL JOIN invoices
    -> WHERE invoice_date >= '2018-04-01' AND invoice_date <= '2018-06-30'
    -> GROUP BY account_description
    -> HAVING COUNT(account_number) > 1
    -> ORDER BY SUM(line_item_amount) DESC;
-- +--------------------------------+----------------+---------------+
-- | account_description            | count_of_items | line_item_sum |
-- +--------------------------------+----------------+---------------+
-- | Book Printing Costs            |              3 |      66748.44 |
-- | Freight                        |             41 |      17624.19 |
-- | Outside Services               |              3 |      13394.10 |
-- | Book Production Costs          |              7 |       5174.66 |
-- | Books, Dues, and Subscriptions |              4 |       4027.90 |
-- | Direct Mail Advertising        |              5 |       3810.41 |
-- | Computer Equipment             |              3 |       2137.05 |
-- | Group Insurance                |              2 |        340.00 |
-- | Telephone                      |              5 |        193.54 |
-- | Office Supplies                |              3 |        175.80 |
-- +--------------------------------+----------------+---------------+
-- 10 rows in set (0.000 sec)





--7.	Write a SELECT statement that answers this question? 
--		What is the total amount invoiced for each general ledger account number?  
--		Return these columns and use the WITH ROLLUP operator:
--------------------+-----------------------------------------------------------+
--	Column Name 	|	Contains …                                              |
--------------------+-----------------------------------------------------------+
--	account_number	|	Account_number from the invoice line items table        |
--	line_item_sum	|	sum of the line_item_amount for items with the same     |
--		            |	account number                                          |
--------------------+-----------------------------------------------------------+
-- This should return 22 rows. 
--	Cut and paste your SQL statement and results set below.

MariaDB [ap]> SELECT account_number, SUM(line_item_amount) AS line_item_sum
    -> FROM invoice_line_items
    -> GROUP BY account_number WITH ROLLUP;
-- +----------------+---------------+
-- | account_number | line_item_sum |
-- +----------------+---------------+
-- |            150 |         17.50 |
-- |            160 |       2137.05 |
-- |            170 |        356.48 |
-- |            400 |     148759.97 |
-- |            403 |       6175.12 |
-- |            507 |       1600.00 |
-- |            510 |        564.00 |
-- |            520 |       1750.00 |
-- |            521 |         16.62 |
-- |            522 |        266.01 |
-- |            523 |        450.00 |
-- |            540 |       3900.77 |
-- |            552 |        290.00 |
-- |            553 |      27599.65 |
-- |            570 |        175.80 |
-- |            572 |       5207.32 |
-- |            574 |        856.92 |
-- |            580 |         50.00 |
-- |            582 |        503.20 |
-- |            589 |      13394.10 |
-- |            591 |        220.00 |
-- |           NULL |     214290.51 |
-- +----------------+---------------+
-- 22 rows in set (0.001 sec)



	

-- 8.	Write a SELECT statement that answers this question:  
--		Which vendors are being paid from more than one account?  
--		Return the following columns: 
----------------------------+---------------------------------------------------+
--	Column Name     		|	Contains …                                      |
----------------------------+---------------------------------------------------+
--	vendor_name     		|	vendor_name from the vendors table              | 
--	number_of_gl_accounts	|	Count of disctinct general ledger accounts that |
--                          |	apply to that vendors’ invoices                 |
----------------------------+---------------------------------------------------+
-- This should return 2 rows. 
--	Cut and paste your SQL statement and results set below.

-- SELECT vendor_name, COUNT(DISTINCT account_number) AS number_of_gl_accounts
-- FROM vendors
-- NATURAL JOIN general_ledger_accounts
-- GROUP BY vendor_name
-- HAVING COUNT(DISTINCT account_number) > 1;

-- SELECT vendor_name, COUNT(DISTINCT account_number) AS number_of_gl_accounts
-- FROM invoice_line_items
-- JOIN general_ledger_accounts ON general_ledger_accounts.account_number = vendors.default_account_number
-- GROUP BY vendor_name
-- HAVING COUNT(DISTINCT account_number) > 1;

-- SELECT vendor_name, COUNT(DISTINCT general_ledger_accounts.account_number) AS number_of_gl_accounts
-- FROM invoice_line_items
-- JOIN vendors ON invoice_line_items.vendor_id = vendors.vendor_id
-- JOIN general_ledger_accounts ON invoice_line_items.account_number = general_ledger_accounts.account_number
-- GROUP BY vendor_name
-- HAVING COUNT(DISTINCT general_ledger_accounts.account_number) > 1;



-- (Q9 – Q11 - 9 pts ea)  FIX-ITS   (These questions have been removed as of 7-4-2021!)
