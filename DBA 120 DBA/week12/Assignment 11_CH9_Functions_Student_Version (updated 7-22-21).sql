--    Assignment 11_CH9_Functions
--
--	 **Please use the database specified for each question.



(16 pts.)
--	1.	Write a SELECT statement that returns these columns from the Invoices table in the AP database:
--		The invoice_total column 
--			A column that uses the ROUND function to return the invoice_total column with 1 decimal digit 
--			A column that uses the ROUND function to return the invoice_total column with no decimal digits
--			A column that uses the TRUNCATE function to return the invoice_total column with no decimal digits
--		Show SQL code and result here.
SELECT ROUND(invoice_total, 1) AS "one decimal", ROUND(invoice_total, 0) AS "no decimal", TRUNCATE(invoice_total, 0) FROM invoices;

-- +-------------+------------+----------------------------+
-- | one decimal | no decimal | TRUNCATE(invoice_total, 0) |
-- +-------------+------------+----------------------------+
-- |      3813.3 |       3813 |                       3813 |
-- |        40.2 |         40 |                         40 |
-- |       138.8 |        139 |                        138 |
-- |       144.7 |        145 |                        144 |
-- |        15.5 |         16 |                         15 |
-- |        42.8 |         43 |                         42 |
-- |       172.5 |        173 |                        172 |

-- |      1000.5 |       1000 |                       1000 |
-- |        90.4 |         90 |                         90 |
-- |        22.6 |         23 |                         22 |
-- |     10976.1 |      10976 |                      10976 |
-- |       224.0 |        224 |                        224 |
-- |       127.8 |        128 |                        127 |
-- +-------------+------------+----------------------------+
-- 114 rows in set (0.000 sec)


(20 pts.)
--	2.	Write a SELECT statement that returns these columns from the Date_Sample table in the EX database:
--			The start_date column 
--			A column that uses the DATE_FORMAT function to return the start_date column with its month name abbreviated 
--				 and its month, day, and two-digit year separated by slashes 

--			A column that uses the DATE_FORMAT function to return the start_date column with its month and day returned as integers
--				 with no leading zeros, a two-digit year, and all date parts separated by slashes 

--			A column that uses the DATE_FORMAT function to return the start_date column with only the hours and minutes
--				 on a 12-hour clock with an am/pm indicator 
--		Show SQL code and result here.


 SELECT DATE_FORMAT(start_date, "%b/%d/%y"), DATE_FORMAT(start_date, "%e/%c/%y"), DATE_FORMAT(start_date, "%h:%i:%p") FROM date_sample;

-- +-------------------------------------+-------------------------------------+-------------------------------------+
-- | DATE_FORMAT(start_date, "%b/%d/%y") | DATE_FORMAT(start_date, "%e/%c/%y") | DATE_FORMAT(start_date, "%h:%i:%p") |
-- +-------------------------------------+-------------------------------------+-------------------------------------+
-- | Mar/01/86                           | 1/3/86                              | 12:00:AM                            |
-- | Feb/28/06                           | 28/2/06                             | 12:00:AM                            |
-- | Oct/31/10                           | 31/10/10                            | 12:00:AM                            |
-- | Feb/28/18                           | 28/2/18                             | 10:00:AM                            |
-- | Feb/28/19                           | 28/2/19                             | 01:58:PM                            |
-- | Mar/01/19                           | 1/3/19                              | 09:02:AM                            |
-- +-------------------------------------+-------------------------------------+-------------------------------------+
-- 6 rows in set (0.000 sec)

(28 pts.)
--	3.	Write a SELECT statement that returns these columns from the Vendors table in the AP database:
--			The vendor_name column 
--			The vendor_name column in all capital letters 
--			The vendor_phone column 
--			A column that displays the last four digits of each phone number
--
--		When you get that working right, add the columns that follow to the result set.
--		This is more difficult because these columns require the use of functions within functions.
--			The vendor_phone column with the parts of the number separated by dots, as in 555.555.5555 
--			### A column that displays the second word in each vendor name if there is one and blanks if there isn't  (YOU CAN SKIP THIS STEP!)
--		Show SQL code and result here.



(36 pts.)
--	4.	Write a SELECT statement that returns these columns from the Invoices table in the AP database:
--			The invoice_number column 
--			The invoice_date column 
--			The invoice_date column plus 30 days 
--			The payment_date column 
--			A column named days_to_pay that shows the number of days between the invoice date and the payment date 
--			The number of the invoice date's month 
--			The four-digit year of the invoice date
--
--		When you have this working, add a WHERE clause that retrieves just the invoices for the month of May
--			 based on the invoice date, not the number of the invoice month.
--		Show SQL code and result here.


