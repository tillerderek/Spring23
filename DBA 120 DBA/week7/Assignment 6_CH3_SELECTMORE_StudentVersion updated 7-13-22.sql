r-- Use the AP database on our server to execute the following SELECT statements. 
-- * Cut and paste your SQL statement and results below each instruction.

-- 1.	Write a SELECT statement that returns three columns from the Vendors table:
--		vendor_name, vendor_contact_last_name, and vendor_contact_first_name.    (18 pts)
--		Then, run this statement to make sure it works correctly. 

--		Add an ORDER BY clause to this statement that sorts the result set by last name and then first name, 
--		both in ascending sequence.  Then, run this statement again to make sure it works correctly.  
--		This is a good way to build and test a statement, one clause at a time.
--		
MariaDB [ap]> select vendor_name, vendor_contact_last_name, vendor_contact_first_name from vendors order by vendor_contact_last_name, vendor_contact_first_name;
--		This should retrieve 122 rows.
--		Just cut the first 10 lines and then the last 5 lines along with the row count. 
-- +---------------------------------+--------------------------+---------------------------+
-- | vendor_name                     | vendor_contact_last_name | vendor_contact_first_name |
-- +---------------------------------+--------------------------+---------------------------+
-- | Dristas Groom & McCormick       | Aaronsen                 | Thom                      |
-- | Internal Revenue Service        | Aileen                   | Joan                      |
-- | US Postal Service               | Alberto                  | Francesco                 |
-- | Yale Industrial Trucks-Fresno   | Alexis                   | Alexandro                 |
-- | Leslie Company                  | Alondra                  | Zev                       |
-- | American Booksellers Assoc      | Angelica                 | Nashalie                  |
-- | Courier Companies, Inc          | Antavius                 | Troy                      |
-- | Pacific Gas & Electric          | Anthoni                  | Kaitlyn                   |
-- | Lou Gentile's Flower Basket     | Anum                     | Trisha                    |
-- | Pollstar                        | Aranovitch               | Robert                    |
-- | Compuserve                      | Armando                  | Jan                       |
-- | Data Reproductions Corp         | Arodondo                 | Cesar                     |
-- | State of California             | Articunia                | Mercedez                  |
-- | Computer Library                | Aryn                     | Leroy                     |
-- | Fresno Rack & Shelving Inc      | Baylee                   | Dakota                    |

-- | Suburban Propane                | Spivak                   | Harold                    |
-- | Kent H Landsberg Co             | Stevens                  | Wendy                     |
-- | American Express                | Story                    | Kirsten                   |
-- | Graylift                        | Sydney                   | Deangelo                  |
-- | Publishers Marketing Assoc      | Walker                   | Jovon                     |
-- | Valprint                        | Warren                   | Quentin                   |
-- | AT&T                            | Wesley                   | Alisha                    |
-- | The Windows Deck                | Wood                     | Liam                      |
-- | Ingram                          | Yobani                   | Trey                      |
-- +---------------------------------+--------------------------+---------------------------+
-- 122 rows in set (0.000 sec)


-- 2.	Write a SELECT statement that returns one column from the Vendors table named full_name that joins 
--		the vendor_contact_last_name and vendor_contact_first_name columns.    (18 pts)
--		Format this column with the last name, a comma, a space, and the first name like this:  Doe, John 
--
--		Sort the result set by last name and then first name in ascending sequence.
--
--		Return only the contacts whose last name begins with the letter A, B, C, or E.   (18 pts)


MariaDB [ap]> select CONCAT(vendor_contact_last_name, ', ', vendor_contact_first_name) AS full_name from vendors where vendor_contact_last_name rlike '^a|^b|^c|^e' order by vendor_contact_last_name, vendor_contact_first_name;

--
--		This should retrieve 41 rows.   
--
-- +-----------------------+
-- | full_name             |
-- +-----------------------+
-- | Aaronsen, Thom        |
-- | Aileen, Joan          |
-- | Alberto, Francesco    |
-- | Alexis, Alexandro     |
-- | Alondra, Zev          |
-- | Angelica, Nashalie    |
-- | Antavius, Troy        |
-- | Anthoni, Kaitlyn      |
-- | Anum, Trisha          |
-- | Aranovitch, Robert    |
-- | Armando, Jan          |
-- | Arodondo, Cesar       |
-- | Articunia, Mercedez   |
-- | Aryn, Leroy           |
-- | Baylee, Dakota        |
-- | Beauregard, Violet    |
-- | Bernard, Lucy         |
-- | Bernardo, Brittnee    |
-- | Blanca, Korah         |
-- | Bluzinski, Rachael    |
-- | Bradlee, Daniel       |
-- | Bragg, Walter         |
-- | Braydon, Anne         |
-- | Brenton, Kila         |
-- | Brooklynn, Keely      |
-- | Bucket, Charlie       |
-- | Camron, Trentin       |
-- | Carrollton, Priscilla |
-- | Carson, Julian        |
-- | Chaddick, Derek       |
-- | Cheyenne, Kaylea      |
-- | Church, Charlie       |
-- | Clifford, Jillian     |
-- | Colette, Dusty        |
-- | Colton, Leah          |
-- | Edgardo, Salina       |
-- | Eliana, Nikolas       |
-- | Elmert, Ron           |
-- | Essence, Marjorie     |
-- | Eulalia, Kelsey       |
-- | Evan, Emily           |
-- +-----------------------+
-- 41 rows in set (0.001 sec)



-- 3.	Write  a SELECT statement that returns these column names and data from the Invoices table:    (18 pts)
--		Column Name					Contains ....
--		Due Date					The invoice_due_date column
--		Invoice Total				The invoice_total column
--		10%							10% of the value of invoice_total
--		Plus 10%					The value of invoice_total plus 10%
MariaDB [ap]> SELECT invoice_due_date AS 'Due Date', invoice_total AS 'Invoice Total', invoice_total * .10 AS '10%', invoice_total *1.10 AS 'Plus 10%' FROM invoices  WHERE invoice_total BETWEEN 500 AND 1000;

--		Return only the rows with an invoice total that’s greater than or equal to 500 and less than or equal to 1000.
--		This should retrieve 12 rows. 
-- +------------+---------------+---------+-----------+
-- | Due Date   | Invoice Total | 10%     | Plus 10%  |
-- +------------+---------------+---------+-----------+
-- | 2018-05-24 |        601.95 | 60.1950 |  662.1450 |
-- | 2018-05-16 |        662.00 | 66.2000 |  728.2000 |
-- | 2018-06-02 |        856.92 | 85.6920 |  942.6120 |
-- | 2018-06-20 |        953.10 | 95.3100 | 1048.4100 |
-- | 2018-06-24 |        565.15 | 56.5150 |  621.6650 |
-- | 2018-06-29 |        639.77 | 63.9770 |  703.7470 |
-- | 2018-07-11 |        936.93 | 93.6930 | 1030.6230 |
-- | 2018-07-25 |        904.14 | 90.4140 |  994.5540 |
-- | 2018-08-06 |        739.20 | 73.9200 |  813.1200 |
-- | 2018-08-08 |        600.00 | 60.0000 |  660.0000 |
-- | 2018-08-10 |        579.42 | 57.9420 |  637.3620 |
-- | 2018-08-23 |        503.20 | 50.3200 |  553.5200 |
-- +------------+---------------+---------+-----------+
-- 12 rows in set (0.000 sec)


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

MariaDB [ap]> SELECT invoice_number AS 'Invoice Number', invoice_total AS 'Invoice Total', payment_total + credit_total  AS 'Payment + Credit Total', invoice_total - (payment_total + credit_total) AS 'Balance' FROM invoices  WHERE invoice_total - (payment_total + credit_total) >50 ORDER BY Balance DESC LIMIT 5;
-- +----------------+---------------+------------------------+----------+
-- | Invoice Number | Invoice Total | Payment + Credit Total | Balance  |
-- +----------------+---------------+------------------------+----------+
-- | P-0608         |      20551.18 |                1200.00 | 19351.18 |
-- | 0-2436         |      10976.06 |                   0.00 | 10976.06 |
-- | 31361833       |        579.42 |                   0.00 |   579.42 |
-- | 9982771        |        503.20 |                   0.00 |   503.20 |
-- | 547480102      |        224.00 |                   0.00 |   224.00 |
-- +----------------+---------------+------------------------+----------+
-- 5 rows in set (0.001 sec)

--5.	Write a SELECT statement that returns these columns from the Invoices table:     (18 pts)
--		Column Name					Contains ....
--		Invoice Number				The invoice_number column
--		Date of Invoice				The invoice_date column
--		Balance Due					The invoice_total column minus the payment_total and credit_total columns
--		Date of Payment	 			The payment_date column
--
--		Return only the rows where the payment_date column contains a null value.
--		This should retrieve 11 rows. 

MariaDB [ap]> SELECT invoice_number AS 'Invoice Number', invoice_date AS 'Date of Invoice', invoice_total - (payment_total + credit_total) AS 'Balance Due', payment_date AS 'Date of Payment' FROM invoices  WHERE payment_date IS NULL;  
--  +----------------+-----------------+-------------+-----------------+
-- | Invoice Number | Date of Invoice | Balance Due | Date of Payment |
-- +----------------+-----------------+-------------+-----------------+
-- | 39104          | 2018-07-10      |       85.31 | NULL            |
-- | 963253264      | 2018-07-18      |       52.25 | NULL            |
-- | 31361833       | 2018-07-21      |      579.42 | NULL            |
-- | 263253268      | 2018-07-21      |       59.97 | NULL            |
-- | 263253270      | 2018-07-22      |       67.92 | NULL            |
-- | 263253273      | 2018-07-22      |       30.75 | NULL            |
-- | P-0608         | 2018-07-23      |    19351.18 | NULL            |
-- | 9982771        | 2018-07-24      |      503.20 | NULL            |
-- | 134116         | 2018-07-28      |       90.36 | NULL            |
-- | 0-2436         | 2018-07-31      |    10976.06 | NULL            |
-- | 547480102      | 2018-08-01      |      224.00 | NULL            |
-- +----------------+-----------------+-------------+-----------------+
-- 11 rows in set (0.000 sec)


--6.	Write a SELECT statement without a FROM clause that creates a row with these columns:    (10 pts)
--		Column Name					Contains ....
--		starting_principal			starting principal of $50,000
--		interest					6.5% of the principal
--		principal_plus_interest		The principal plus the interest
--									(To calculate the third column, add the expressions you used for the first two columns.) 
MariaDB [ap]> SELECT 50000 AS starting_principal, 50000 * 0.065 AS interest, 50000 * 1.065 AS principal_plus_interest;

-- +--------------------+----------+-------------------------+
-- | starting_principal | interest | principal_plus_interest |
-- +--------------------+----------+-------------------------+
-- |              50000 | 3250.000 |               53250.000 |
-- +--------------------+----------+-------------------------+
-- 1 row in set (0.000 sec)
