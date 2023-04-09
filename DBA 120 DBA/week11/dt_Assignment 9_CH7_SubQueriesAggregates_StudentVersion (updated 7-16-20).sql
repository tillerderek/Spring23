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

SELECT DISTINCT vendor_name 
FROM vendors 
WHERE vendor_id IN (
  SELECT vendor_id 
  FROM invoices
) 
ORDER BY vendor_name;

-- +---------------------------------+
-- | vendor_name                     |
-- +---------------------------------+
-- | Abbey Office Furnishings        |
-- | Bertelsmann Industry Svcs. Inc  |
-- | Blue Cross                      |
-- | Cahners Publishing Company      |
-- | Cardinal Business Media, Inc.   |
-- | Coffee Break Service            |
-- | Compuserve                      |
-- | Computerworld                   |
-- | Data Reproductions Corp         |
-- | Dean Witter Reynolds            |
-- | Digital Dreamworks              |
-- | Dristas Groom & McCormick       |
-- | Edward Data Services            |
-- | Evans Executone Inc             |
-- | Federal Express Corporation     |
-- | Ford Motor Credit Company       |
-- | Franchise Tax Board             |
-- | Fresno County Tax Collector     |
-- | Gostanian General Building      |
-- | IBM                             |
-- | Ingram                          |
-- | Malloy Lithographing Inc        |
-- | Pacific Bell                    |
-- | Pollstar                        |
-- | Postmaster                      |
-- | Reiter's Scientific & Pro Books |
-- | Roadway Package System, Inc     |
-- | Suburban Propane                |
-- | United Parcel Service           |
-- | Wakefield Co                    |
-- | Wang Laboratories, Inc.         |
-- | Wells Fargo Bank                |
-- | Yesmed, Inc                     |
-- | Zylka Design                    |
-- +---------------------------------+
-- 34 rows in set (0.000 sec)


-- 1b.	For the SELECT statement in Q1, what is the goal of that statement? 
The goal of the statement is to select all the distinct vendor names from the vendors table that have a vendor id that is in the invoices table.  

-- 2.	Write a SELECT statement that answers this question:  
--		Which invoices have a payment total that’s greater than the average payment total 
--		for all invoices that have a payment total greater than 0? 
--		Return the invoice_number and invoice_total columns for each invoice.  
--		This should return 20 rows. 
SELECT invoice_number, invoice_total
FROM invoices
WHERE payment_total > 0 
AND payment_total > 
(SELECT AVG(payment_total) FROM invoices WHERE payment_total > 0);

-- +----------------+---------------+
-- | invoice_number | invoice_total |
-- +----------------+---------------+
-- | 989319-457     |       3813.33 |
-- | 10843          |       4901.26 |
-- | 77290          |       1750.00 |
-- | P02-3772       |       7125.34 |
-- | 0-2058         |      37966.19 |
-- | 40318          |      21842.00 |
-- | 989319-437     |       2765.36 |
-- | 989319-477     |       2184.11 |
-- | 367447         |       2433.00 |
-- | 989319-497     |       2312.20 |
-- | 989319-427     |       2115.81 |
-- | 509786         |       6940.25 |
-- | 989319-487     |       1927.54 |
-- | 97/522         |       1962.13 |
-- | 587056         |       2184.50 |
-- | 989319-467     |       2318.03 |
-- | P-0259         |      26881.40 |
-- | 989319-417     |       2051.59 |
-- | 0-2060         |      23517.58 |
-- | 989319-447     |       3689.99 |
-- +----------------+---------------+
-- 20 rows in set (0.000 sec)


-- 3.	Write a select statement that returns two columns from the general_ledger_accounts 
--		table: account_number and account_description.
--		Return one row for each account number that has never been assigned to any line item 
--		in the invoice_line_items table.  
--		To do that, use a subquery introduced with the NOT EXISTS operator.  
--		Sort the results by the account_number column.
--		Hint:Refer to pgs. 214 - 215 in the textbook.
--		This should return 54 rows. 
 SELECT account_number, account_description FROM general_ledger_accounts WHERE NOT EXISTS (SELECT account_number FROM invoice_line_items WHERE account_number = general_ledger_accounts.account_number) ORDER BY account_number;
-- +----------------+----------------------------------+
-- | account_number | account_description              |
-- +----------------+----------------------------------+
-- |            100 | Cash                             |
-- |            110 | Accounts Receivable              |
-- |            120 | Book Inventory                   |
-- |            162 | Capitalized Lease                |
-- |            167 | Software                         |
-- |            181 | Book Development                 |
-- |            200 | Accounts Payable                 |
-- |            205 | Royalties Payable                |
-- |            221 | 401K Employee Contributions      |
-- |            230 | Sales Taxes Payable              |
-- |            234 | Medicare Taxes Payable           |
-- |            235 | Income Taxes Payable             |
-- |            237 | State Payroll Taxes Payable      |
-- |            238 | Employee FICA Taxes Payable      |
-- |            239 | Employer FICA Taxes Payable      |
-- |            241 | Employer FUTA Taxes Payable      |
-- |            242 | Employee SDI Taxes Payable       |
-- |            243 | Employer UCI Taxes Payable       |
-- |            251 | IBM Credit Corporation Payable   |
-- |            280 | Capital Stock                    |
-- |            290 | Retained Earnings                |
-- |            300 | Retail Sales                     |
-- |            301 | College Sales                    |
-- |            302 | Trade Sales                      |
-- |            306 | Consignment Sales                |
-- |            310 | Compositing Revenue              |
-- |            394 | Book Club Royalties              |
-- |            500 | Salaries and Wages               |
-- |            505 | FICA                             |
-- |            506 | FUTA                             |
-- |            508 | Medicare                         |
-- |            527 | Computer Equipment Maintenance   |
-- |            528 | IBM Lease                        |
-- |            532 | Equipment Rental                 |
-- |            536 | Card Deck Advertising            |
-- |            541 | Space Advertising                |
-- |            546 | Exhibits and Shows               |
-- |            548 | Web Site Production and Fees     |
-- |            550 | Packaging Materials              |
-- |            551 | Business Forms                   |
-- |            555 | Collection Agency Fees           |
-- |            556 | Credit Card Handling             |
-- |            565 | Bank Fees                        |
-- |            568 | Auto License Fee                 |
-- |            569 | Auto Expense                     |
-- |            576 | PC Software                      |
-- |            590 | Business Insurance               |
-- |            610 | Charitable Contributions         |
-- |            611 | Profit Sharing Contributions     |
-- |            620 | Interest Paid to Banks           |
-- |            621 | Other Interest                   |
-- |            630 | Federal Corporation Income Taxes |
-- |            631 | State Corporation Income Taxes   |
-- |            632 | Sales Tax                        |
-- +----------------+----------------------------------+
-- 54 rows in set (0.001 sec)


-- 4.	Write a SELECT statement that returns four columns: 
--		vendor_name, invoice_id, invoice_sequence, and line_item_amount.
--		Return a row for each line item of each invoice that has more than one line item 
--		in the invoice_line_items table.  
--		Hint:  Use a subquery that tests for invoice_sequence > 1.  
--		This should return 6 rows. 
SELECT v.vendor_name, il.invoice_id, il.invoice_sequence, il.line_item_amount
FROM vendors v
JOIN invoices i ON v.vendor_id = i.vendor_id
JOIN invoice_line_items il ON i.invoice_id = il.invoice_id
WHERE i.invoice_id IN (
	SELECT invoice_id
	FROM invoice_line_items
	GROUP BY invoice_id
	HAVING MAX(invoice_sequence) > 1
);

-- +------------------+------------+------------------+------------------+
-- | vendor_name      | invoice_id | invoice_sequence | line_item_amount |
-- +------------------+------------+------------------+------------------+
-- | Wells Fargo Bank |         12 |                1 |            50.00 |
-- | Wells Fargo Bank |         12 |                2 |            75.60 |
-- | Wells Fargo Bank |         12 |                3 |            58.40 |
-- | Wells Fargo Bank |         12 |                4 |           478.00 |
-- | Zylka Design     |         78 |                1 |          1197.00 |
-- | Zylka Design     |         78 |                2 |           765.13 |
-- +------------------+------------+------------------+------------------+
-- 6 rows in set (0.001 sec)


-- 5.	Write a SELECT statement that returns two columns: 
--		vendor_id and the largest unpaid invoice for each vendor.  
--		To do this, you can group the result set by the vendor_id column.  
--		This should return 7 rows. 
 SELECT vendor_id, MAX(invoice_total - payment_total - credit_total) AS largest_unpaid_invoice FROM invoices GROUP BY vendor_id HAVING largest_unpaid_invoice > 0;
-- +-----------+------------------------+
-- | vendor_id | largest_unpaid_invoice |
-- +-----------+------------------------+
-- |        37 |                 224.00 |
-- |        72 |                  85.31 |
-- |        80 |                  90.36 |
-- |        83 |                 579.42 |
-- |       106 |                 503.20 |
-- |       110 |               19351.18 |
-- |       123 |                  67.92 |
-- +-----------+------------------------+
-- 7 rows in set (0.001 sec)


--		Write a second SELECT statement that uses the first SELECT statement in it’s FROM clause.  
--		The main query should return a single value that represents the sum of the largest 
--		unpaid invoices for each vendor.  
--		This should return 1 row. 
 SELECT SUM(largest_unpaid_invoice) as "Sum of largest unpaid invoices" FROM ( SELECT vendor_id, MAX(invoice_total - payment_total - credit_total) AS largest_unpaid_invoice FROM invoices GROUP BY vendor_id  HAVING largest_unpaid_invoice > 0) AS unpaid_invoices;
-- +--------------------------------+
-- | Sum of largest unpaid invoices |
-- +--------------------------------+
-- |                       20901.39 |
-- +--------------------------------+
-- 1 row in set (0.001 sec)


-- 6.	Write a SELECT statement that returns the name, city, and state of each vendor that’s 
--		located in a unique city and state.  
--		In other words, don’t include vendors that have a city and state in common with another vendor.
--		Sort the results by the vendor_state and vendor_city columns. 
--		This should return 38 rows.
 SELECT vendor_name, vendor_city, vendor_state
    -> FROM vendors
    -> WHERE (vendor_city, vendor_state) IN (
    -> SELECT vendor_city, vendor_state
    -> FROM vendors
    -> GROUP BY vendor_city, vendor_state
    -> HAVING COUNT(*) = 1
    -> )
    -> ORDER BY vendor_state, vendor_city;
-- +---------------------------------+------------------+--------------+
-- | vendor_name                     | vendor_city      | vendor_state |
-- +---------------------------------+------------------+--------------+
-- | Diversified Printing & Pub      | Brea             | CA           |
-- | Vision Envelope & Printing      | Gardena          | CA           |
-- | Texaco                          | Inglewood        | CA           |
-- | Publishers Marketing Assoc      | Manhatttan Beach | CA           |
-- | Blanchard & Johnson Associates  | Mission Viejo    | CA           |
-- | Blue Cross                      | Oxnard           | CA           |
-- | Golden Eagle Insurance Co       | San Diego        | CA           |
-- | Towne Advertiser's Mailing Svcs | Santa Ana        | CA           |
-- | The Windows Deck                | Santa Barbara    | CA           |
-- | Cal State Termite               | Selma            | CA           |
-- | Evans Executone Inc             | Turlock          | CA           |
-- | Bertelsmann Industry Svcs. Inc  | Valencia         | CA           |
-- | Ascom Hasler Mailing Systems    | Shelton          | CT           |
-- | Naylor Publications Inc         | Jacksonville     | FL           |
-- | Open Horizons Publishing        | Fairfield        | IA           |
-- | Zee Medical Service Co          | Washington       | IA           |
-- | The Drawing Board               | Carol Stream     | IL           |
-- | Leslie Company                  | Olathe           | KS           |
-- | Malloy Lithographing Inc        | Ann Arbor        | MI           |
-- | Data Reproductions Corp         | Auburn Hills     | MI           |
-- | Small Press                     | Traverse City    | MI           |
-- | Capital Resource Credit         | Minneapolis      | MN           |
-- | Baker & Taylor Books            | Charlotte        | NC           |
-- | Rich Advertising                | Fairfield        | NJ           |
-- | Newbrige Book Clubs             | Washington       | NJ           |
-- | United Parcel Service           | Reno             | NV           |
-- | Cahners Publishing Company      | The Lake         | NV           |
-- | The Mailers Guide Co            | New Rochelle     | NY           |
-- | Venture Communications Int'l    | New York         | NY           |
-- | American Booksellers Assoc      | Tarrytown        | NY           |
-- | Edward Data Services            | Cleves           | OH           |
-- | Publishers Weekly               | Marion           | OH           |
-- | Nat Assoc of College Stores     | Oberlin          | OH           |
-- | Boucher Communications Inc      | Fort Washington  | PA           |
-- | Federal Express Corporation     | Memphis          | TN           |
-- | Ingram                          | Dallas           | TX           |
-- | Enterprise Communications Inc   | Mclean           | VA           |
-- | US Postal Service               | Madison          | WI           |
-- +---------------------------------+------------------+--------------+
-- 38 rows in set (0.001 sec)


-- 7.	Use a correlated subquery to return one row per vendor, representing the vendor’s oldest 
--		invoice (the one with the earliest date).  
--		Each row should include these four columns: 
--		vendor_name, invoice_number, invoice_date, and invoice_total.  
--		Sort the results by the vendor_name column. 
--      Hint:Refer to pgs. 212 - 213 in the textbook.
--		This should return 34 rows. 
SELECT v.vendor_name, i.invoice_number, i.invoice_date, i.invoice_total FROM vendors v NATURAL JOIN invoices i WHERE i.invoice_date = ( SELECT MIN(invoice_date) FROM invoices WHERE vendor_id = v.vendor_id ) ORDER BY v.vendor_name;
-- +---------------------------------+------------------+--------------+---------------+
-- | vendor_name                     | invoice_number   | invoice_date | invoice_total |
-- +---------------------------------+------------------+--------------+---------------+
-- | Abbey Office Furnishings        | 203339-13        | 2018-07-05   |         17.50 |
-- | Bertelsmann Industry Svcs. Inc  | 509786           | 2018-06-18   |       6940.25 |
-- | Blue Cross                      | 547481328        | 2018-06-03   |        224.00 |
-- | Cahners Publishing Company      | 587056           | 2018-06-30   |       2184.50 |
-- | Cardinal Business Media, Inc.   | 133560           | 2018-06-22   |        175.00 |
-- | Coffee Break Service            | 109596           | 2018-06-24   |         41.80 |
-- | Compuserve                      | 21-4748363       | 2018-05-03   |          9.95 |
-- | Computerworld                   | 367447           | 2018-06-11   |       2433.00 |
-- | Data Reproductions Corp         | 40318            | 2018-06-01   |      21842.00 |
-- | Dean Witter Reynolds            | 75C-90227        | 2018-06-11   |       1367.50 |
-- | Digital Dreamworks              | P02-3772         | 2018-05-21   |       7125.34 |
-- | Dristas Groom & McCormick       | 94007005         | 2018-05-23   |        220.00 |
-- | Edward Data Services            | 972110           | 2018-05-15   |        207.78 |
-- | Evans Executone Inc             | 125520-1         | 2018-04-24   |         95.00 |
-- | Federal Express Corporation     | 263253241        | 2018-04-10   |         40.20 |
-- | Ford Motor Credit Company       | 9982771          | 2018-07-24   |        503.20 |
-- | Franchise Tax Board             | RTR-72-3662-X    | 2018-05-25   |       1600.00 |
-- | Fresno County Tax Collector     | P02-88D77S7      | 2018-05-03   |        856.92 |
-- | Gostanian General Building      | 121897           | 2018-05-19   |        450.00 |
-- | IBM                             | QP58872          | 2018-05-07   |        116.54 |
-- | Ingram                          | 31359783         | 2018-06-03   |       1575.00 |
-- | Malloy Lithographing Inc        | 0-2058           | 2018-05-28   |      37966.19 |
-- | Pacific Bell                    | 111-92R-10096    | 2018-04-30   |         16.33 |
-- | Pollstar                        | 77290            | 2018-05-13   |       1750.00 |
-- | Postmaster                      | CBM9920-M-T77109 | 2018-06-23   |        290.00 |
-- | Reiter's Scientific & Pro Books | C73-24           | 2018-07-19   |        600.00 |
-- | Roadway Package System, Inc     | 25022117         | 2018-05-01   |          6.00 |
-- | Suburban Propane                | 111897           | 2018-07-15   |         16.62 |
-- | United Parcel Service           | 989319-457       | 2018-04-08   |       3813.33 |
-- | Wakefield Co                    | 97-1024A         | 2018-07-20   |        356.48 |
-- | Wang Laboratories, Inc.         | MABO1489         | 2018-06-21   |        936.93 |
-- | Wells Fargo Bank                | I77271-O01       | 2018-04-26   |        662.00 |
-- | Yesmed, Inc                     | 10843            | 2018-05-11   |       4901.26 |
-- | Zylka Design                    | 97/488           | 2018-04-24   |        601.95 |
-- +---------------------------------+------------------+--------------+---------------+
-- 34 rows in set (0.001 sec)


-- 8.	Rewrite Q7 so it gets the same result but uses an inline view instead of a 
--		correlated subquery. 
--		Hint:Refer to pgs. 218 - 219 in the textbook.

      SELECT v.vendor_name, i.invoice_number, i.invoice_date, i.invoice_total FROM vendors v NATURAL JOIN invoices i JOIN (   SELECT vendor_id, MIN(invoice_date) AS min_date   FROM invoices   GROUP BY vendor_id ) m ON i.vendor_id = m.vendor_id AND i.invoice_date = m.min_date ORDER BY v.vendor_name;
-- +---------------------------------+------------------+--------------+---------------+
-- | vendor_name                     | invoice_number   | invoice_date | invoice_total |
-- +---------------------------------+------------------+--------------+---------------+
-- | Abbey Office Furnishings        | 203339-13        | 2018-07-05   |         17.50 |
-- | Bertelsmann Industry Svcs. Inc  | 509786           | 2018-06-18   |       6940.25 |
-- | Blue Cross                      | 547481328        | 2018-06-03   |        224.00 |
-- | Cahners Publishing Company      | 587056           | 2018-06-30   |       2184.50 |
-- | Cardinal Business Media, Inc.   | 133560           | 2018-06-22   |        175.00 |
-- | Coffee Break Service            | 109596           | 2018-06-24   |         41.80 |
-- | Compuserve                      | 21-4748363       | 2018-05-03   |          9.95 |
-- | Computerworld                   | 367447           | 2018-06-11   |       2433.00 |
-- | Data Reproductions Corp         | 40318            | 2018-06-01   |      21842.00 |
-- | Dean Witter Reynolds            | 75C-90227        | 2018-06-11   |       1367.50 |
-- | Digital Dreamworks              | P02-3772         | 2018-05-21   |       7125.34 |
-- | Dristas Groom & McCormick       | 94007005         | 2018-05-23   |        220.00 |
-- | Edward Data Services            | 972110           | 2018-05-15   |        207.78 |
-- | Evans Executone Inc             | 125520-1         | 2018-04-24   |         95.00 |
-- | Federal Express Corporation     | 263253241        | 2018-04-10   |         40.20 |
-- | Ford Motor Credit Company       | 9982771          | 2018-07-24   |        503.20 |
-- | Franchise Tax Board             | RTR-72-3662-X    | 2018-05-25   |       1600.00 |
-- | Fresno County Tax Collector     | P02-88D77S7      | 2018-05-03   |        856.92 |
-- | Gostanian General Building      | 121897           | 2018-05-19   |        450.00 |
-- | IBM                             | QP58872          | 2018-05-07   |        116.54 |
-- | Ingram                          | 31359783         | 2018-06-03   |       1575.00 |
-- | Malloy Lithographing Inc        | 0-2058           | 2018-05-28   |      37966.19 |
-- | Pacific Bell                    | 111-92R-10096    | 2018-04-30   |         16.33 |
-- | Pollstar                        | 77290            | 2018-05-13   |       1750.00 |
-- | Postmaster                      | CBM9920-M-T77109 | 2018-06-23   |        290.00 |
-- | Reiter's Scientific & Pro Books | C73-24           | 2018-07-19   |        600.00 |
-- | Roadway Package System, Inc     | 25022117         | 2018-05-01   |          6.00 |
-- | Suburban Propane                | 111897           | 2018-07-15   |         16.62 |
-- | United Parcel Service           | 989319-457       | 2018-04-08   |       3813.33 |
-- | Wakefield Co                    | 97-1024A         | 2018-07-20   |        356.48 |
-- | Wang Laboratories, Inc.         | MABO1489         | 2018-06-21   |        936.93 |
-- | Wells Fargo Bank                | I77271-O01       | 2018-04-26   |        662.00 |
-- | Yesmed, Inc                     | 10843            | 2018-05-11   |       4901.26 |
-- | Zylka Design                    | 97/488           | 2018-04-24   |        601.95 |
-- +---------------------------------+------------------+--------------+---------------+
-- 34 rows in set (0.001 sec)


