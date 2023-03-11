-- Use the AP database on our server DBA120.abtech.edu to execute the following SELECT statements. 
-- *Cut and paste your SQL statement and result set below each instruction.      (14 points each). 

-- 1.	Write a SELECT statement that returns all columns from the Vendors table inner-joined with 
--      all columns from the invoices table.  
--      
-- 		This should return 114 rows.  
--      Hint: You can use an asterisk (*) to select the columns from both tables. 
--	Cut and paste your SQL statement and result set below.
MariaDB [ap]> SELECT * FROM vendors natural join invoices;

-- +-----------+---------------------------------+----------------------------+-------------------------+---------------+--------------+-----------------+------------------+---------------+--------------+----------+------------------+--------------+
-- | vendor_id | vendor_name                     | vendor_address1            | vendor_address2         | vendor_city   | vendor_state | vendor_zip_code | vendovoice_total | payment_total | credit_total | terms_id | invoice_due_date | payment_date |
-- +-----------+---------------------------------+----------------------------+-------------------------+---------------+--------------+-----------------+------------------+---------------+--------------+----------+------------------+--------------+
-- |       122 | United Parcel Service           | P.O. Box 505820            | NULL                    | Reno          | NV           | 88905           | (800)    3813.33 |       3813.33 |         0.00 |        3 | 2018-05-08       | 2018-05-07   |
-- |       123 | Federal Express Corporation     | P.O. Box 1140              | Dept A                  | Memphis       | TN           | 38101           | (800)      40.20 |         40.20 |         0.00 |        3 | 2018-05-10       | 2018-05-14   |
-- |       123 | Federal Express Corporation     | P.O. Box 1140              | Dept A                  | Memphis       | TN           | 38101           | (800)     138.75 |        138.75 |         0.00 |        3 | 2018-05-13       | 2018-05-09   |
-- |       123 | Federal Express Corporation     | P.O. Box 1140              | Dept A                  | Memphis       | TN           | 38101           | (800)

-- |       123 | Federal Express Corporation     | P.O. Box 1140              | Dept A                  | Memphis       | TN           | 38101           | (800)      22.57 |         22.57 |         0.00 |        3 | 2018-08-29       | 2018-09-03   |
-- |       110 | Malloy Lithographing Inc        | 5411 Jackson Road          | PO Box 1124             | Ann Arbor     | MI           | 48106           | (313)   10976.06 |          0.00 |         0.00 |        3 | 2018-08-30       | NULL         |
-- |        37 | Blue Cross                      | PO Box 9061                | NULL                    | Oxnard        | CA           | 93031           | (800)     224.00 |          0.00 |         0.00 |        3 | 2018-08-31       | NULL         |
-- |       123 | Federal Express Corporation     | P.O. Box 1140              | Dept A                  | Memphis       | TN           | 38101           | (800)     127.75 |        127.75 |         0.00 |        3 | 2018-09-01       | 2018-09-04   |
-- +-----------+---------------------------------+----------------------------+-------------------------+---------------+--------------+-----------------+------------------+---------------+--------------+----------+------------------+--------------+
-- 114 rows in set (0.000 sec)


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

SELECT v.vendor_name, i.invoice_number, i.invoice_date, i.invoice_total - (i.payment_total + i.credit_total) AS 'balance_due'
FROM vendors v natural join invoices i 
WHERE i.invoice_total - (i.payment_total + i.credit_total) > 0 
ORDER BY v.vendor_name ASC;


-- +-------------------------------+----------------+--------------+-------------+
-- | vendor_name                   | invoice_number | invoice_date | balance_due |
-- +-------------------------------+----------------+--------------+-------------+
-- | Blue Cross                    | 547480102      | 2018-08-01   |      224.00 |
-- | Cardinal Business Media, Inc. | 134116         | 2018-07-28   |       90.36 |
-- | Data Reproductions Corp       | 39104          | 2018-07-10   |       85.31 |
-- | Federal Express Corporation   | 263253270      | 2018-07-22   |       67.92 |
-- | Federal Express Corporation   | 963253264      | 2018-07-18   |       52.25 |
-- | Federal Express Corporation   | 263253268      | 2018-07-21   |       59.97 |
-- | Federal Express Corporation   | 263253273      | 2018-07-22   |       30.75 |
-- | Ford Motor Credit Company     | 9982771        | 2018-07-24   |      503.20 |
-- | Ingram                        | 31361833       | 2018-07-21   |      579.42 |
-- | Malloy Lithographing Inc      | 0-2436         | 2018-07-31   |    10976.06 |
-- | Malloy Lithographing Inc      | P-0608         | 2018-07-23   |    19351.18 |
-- +-------------------------------+----------------+--------------+-------------+
-- 11 rows in set (0.001 sec)

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
MariaDB [ap]> SELECT v.vendor_name, v.default_account_number AS default_account, g.account_description AS description 
FROM vendors v JOIN general_ledger_accounts g 
ON v.default_account_number = g.account_number 
ORDER BY g.account_description, v.vendor_name;

-- +---------------------------------+-----------------+--------------------------------+
-- | vendor_name                     | default_account | description                    |
-- +---------------------------------+-----------------+--------------------------------+
-- | Dristas Groom & McCormick       |             591 | Accounting                     |
-- | DMV Renewal                     |             568 | Auto License Fee               |
-- | Newbrige Book Clubs             |             394 | Book Club Royalties            |
-- | Bertelsmann Industry Svcs. Inc  |             400 | Book Printing Costs            |
-- | Courier Companies, Inc          |             400 | Book Printing Costs            |
-- | Crown Printing                  |             400 | Book Printing Costs            |
-- | Data Reproductions Corp         |             400 | Book Printing Costs            |
-- | Diversified Printing & Pub      |             400 | Book Printing Costs            |
-- | Malloy Lithographing Inc        |             400 | Book Printing Costs            |


-- | Ford Motor Credit Company       |             582 | Travel and Accomodations       |
-- | Texaco                          |             582 | Travel and Accomodations       |
-- | Unocal                          |             582 | Travel and Accomodations       |
-- | Franchise Tax Board             |             507 | UCI                            |
-- | BFI Industries                  |             521 | Utilities                      |
-- | Pacific Gas & Electric          |             521 | Utilities                      |
-- | Suburban Propane                |             521 | Utilities                      |
-- +---------------------------------+-----------------+--------------------------------+
-- 122 rows in set (0.000 sec)




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
MariaDB [ap]> SELECT v.vendor_name, i.invoice_date, i.invoice_number, li.invoice_sequence AS li_sequence, li.line_item_amount AS li_amount 
FROM vendors v JOIN invoices i 
ON v.vendor_id = i.vendor_id  
JOIN invoice_line_items li ON i.invoice_id = li.invoice_id 
ORDER BY v.vendor_name, i.invoice_date, i.invoice_number, li.invoice_sequence;

-- +---------------------------------+--------------+------------------+-------------+-----------+
-- | vendor_name                     | invoice_date | invoice_number   | li_sequence | li_amount |
-- +---------------------------------+--------------+------------------+-------------+-----------+
-- | Abbey Office Furnishings        | 2018-07-05   | 203339-13        |           1 |     17.50 |
-- | Bertelsmann Industry Svcs. Inc  | 2018-06-18   | 509786           |           1 |   6940.25 |
-- | Blue Cross                      | 2018-06-03   | 547481328        |           1 |    224.00 |
-- | Blue Cross                      | 2018-06-07   | 547479217        |           1 |    116.00 |
-- | Blue Cross                      | 2018-08-01   | 547480102        |           1 |    224.00 |
-- | Cahners Publishing Company      | 2018-06-30   | 587056           |           1 |   2184.50 |
-- | Cardinal Business Media, Inc.   | 2018-06-22   | 133560           |           1 |    175.00 |
-- | Cardinal Business Media, Inc.   | 2018-07-28   | 134116           |           1 |     90.36 |
-- | Coffee Break Service            | 2018-06-24   | 109596           |           1 |     41.80 |
-- | Compuserve                      | 2018-05-03   | 21-4748363       |           1 |      9.95 |


-- | Zylka Design                    | 2018-05-30   | 97/503           |           1 |    639.77 |
-- | Zylka Design                    | 2018-06-10   | 97/553B          |           1 |    313.55 |
-- | Zylka Design                    | 2018-06-25   | 97/553           |           1 |    904.14 |
-- | Zylka Design                    | 2018-06-28   | 97/522           |           1 |   1197.00 |
-- | Zylka Design                    | 2018-06-28   | 97/522           |           2 |    765.13 |
-- | Zylka Design                    | 2018-07-25   | 97/222           |           1 |   1000.46 |
-- +---------------------------------+--------------+------------------+-------------+-----------+
-- 118 rows in set (0.000 sec)


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
MariaDB [ap]> SELECT v1.vendor_id, v1.vendor_name, CONCAT(v1.vendor_contact_first_name, ' ', v1.vendor_contact_last_name) AS contact_name
    -> FROM vendors v1
    -> JOIN vendors v2 ON v1.vendor_id <> v2.vendor_id AND v1.vendor_contact_last_name = v2.vendor_contact_last_name
    -> ORDER BY v1.vendor_contact_last_name;

-- +-----------+-----------------------------+--------------+
-- | vendor_id | vendor_name                 | contact_name |
-- +-----------+-----------------------------+--------------+
-- |       115 | Roadway Package System, Inc | Sam Smith    |
-- |        51 | Blue Shield of California   | Kylie Smith  |
-- +-----------+-----------------------------+--------------+
-- 2 rows in set (0.003 sec)



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

MariaDB [ap]> SELECT gla.account_number, gla.account_description
FROM general_ledger_accounts gla 
LEFT OUTER JOIN invoice_line_items li ON gla.account_number = li.account_number 
WHERE li.invoice_id IS NULL 
ORDER BY gla.account_number;

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


-- 7.	Use the UNION operator to generate a result set consisting of two columns from the vendors table: 
--      vendor_name and vendor_state.  
--      If the vendor is in California, the vendor_state value should be “CA”; 
--      otherwise, the vendor_state should be “Outside CA.”  
--      Sort the final result set by vendor_name. 
--	Cut and paste your SQL statement and result set below.


MariaDB [ap]> SELECT vendor_name, 
'CA' AS vendor_state 
FROM vendors 
WHERE vendor_state = 'CA' 
UNION 
SELECT vendor_name, 
'Outside CA' AS vendor_state 
FROM vendors 
WHERE vendor_state <> 'CA' 
ORDER BY vendor_name;


-- +---------------------------------+--------------+
-- | vendor_name                     | vendor_state |
-- +---------------------------------+--------------+
-- | Abbey Office Furnishings        | CA           |
-- | American Booksellers Assoc      | Outside CA   |
-- | American Express                | CA           |
-- | ASC Signs                       | CA           |
-- | Ascom Hasler Mailing Systems    | Outside CA   |
-- | AT&T                            | Outside CA   |
-- | Aztek Label                     | CA           |
-- | Baker & Taylor Books            | Outside CA   |
-- | Bertelsmann Industry Svcs. Inc  | CA           |
-- | BFI Industries                  | CA           |
-- | Bill Jones                      | CA           |
-- | Bill Marvin Electric Inc        | CA           |
-- | Blanchard & Johnson Associates  | CA           |
-- | Blue Cross                      | CA           |
-- | Blue Shield of California       | CA           |
-- | Boucher Communications Inc      | Outside CA   |


-- | United Parcel Service           | Outside CA   |
-- | Unocal                          | CA           |
-- | US Postal Service               | Outside CA   |
-- | Valprint                        | CA           |
-- | Venture Communications Int'l    | Outside CA   |
-- | Vision Envelope & Printing      | CA           |
-- | Wakefield Co                    | CA           |
-- | Wang Laboratories, Inc.         | CA           |
-- | Wells Fargo Bank                | Outside CA   |
-- | Yale Industrial Trucks-Fresno   | CA           |
-- | Yesmed, Inc                     | CA           |
-- | Zee Medical Service Co          | Outside CA   |
-- | Zip Print & Copy Center         | CA           |
-- | Zylka Design                    | CA           |
-- +---------------------------------+--------------+
-- 122 rows in set (0.000 sec)
