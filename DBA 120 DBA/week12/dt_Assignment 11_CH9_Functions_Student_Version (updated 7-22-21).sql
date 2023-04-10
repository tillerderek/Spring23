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
--			The vendor_name column in all capital letters UCASE 
--			The vendor_phone column 
--			A column that displays the last four digits of each phone number
--		When you get that working right, add the columns that follow to the result set.
--		This is more difficult because these columns require the use of functions within functions.
--			The vendor_phone column with the parts of the number separated by dots, as in 555.555.5555 
--			### A column that displays the second word in each vendor name if there is one and blanks if there isn't  (YOU CAN SKIP THIS STEP!)
--		Show SQL code and result here.

SELECT vendor_name, UCASE(vendor_name), vendor_phone, SUBSTR(vendor_phone, -4), CONCAT(SUBSTR(vendor_phone, 2, 3), '.', SUBSTR(vendor_phone, 7, 3), '.', SUBSTR(vendor_phone, -4)) FROM vendors;

+---------------------------------+---------------------------------+----------------+--------------------------+----------------------------------------------------------------------------------------------------+
-- | vendor_name                     | UCASE(vendor_name)              | vendor_phone   | SUBSTR(vendor_phone, -4) | CONCAT(SUBSTR(vendor_phone, 2, 3), '.', SUBSTR(vendor_phone, 7, 3), '.', SUBSTR(vendor_phone, -4)) |
-- +---------------------------------+---------------------------------+----------------+--------------------------+----------------------------------------------------------------------------------------------------+
-- | US Postal Service               | US POSTAL SERVICE               | (800) 555-1205 | 1205                     | 800.555.1205                                                                                       |
-- | National Information Data Ctr   | NATIONAL INFORMATION DATA CTR   | (301) 555-8950 | 8950                     | 301.555.8950                                                                                       |
-- | Register of Copyrights          | REGISTER OF COPYRIGHTS          | NULL           | NULL                     | NULL                                                                                               |
-- | Jobtrak                         | JOBTRAK                         | (800) 555-8725 | 8725                     | 800.555.8725                                                                                       |
-- | Newbrige Book Clubs             | NEWBRIGE BOOK CLUBS             | (800) 555-9980 | 9980                     | 800.555.9980                                                                                       |
-- | California Chamber Of Commerce  | CALIFORNIA CHAMBER OF COMMERCE  | (916) 555-6670 | 6670                     | 916.555.6670                      
-------------------------------------------------------------------------------------------------------------------------------------------
-- | Dataforms/West                  | DATAFORMS/WEST                  | NULL           | NULL                     | NULL                                                                                               |
-- | Zylka Design                    | ZYLKA DESIGN                    | (559) 555-8625 | 8625                     | 559.555.8625                                                                                       |
-- | United Parcel Service           | UNITED PARCEL SERVICE           | (800) 555-0855 | 0855                     | 800.555.0855                                                                                       |
-- | Federal Express Corporation     | FEDERAL EXPRESS CORPORATION     | (800) 555-4091 | 4091                     | 800.555.4091                                                                                       |
-- +---------------------------------+---------------------------------+----------------+--------------------------+----------------------------------------------------------------------------------------------------+
-- 122 rows in set (0.000 sec)


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
 SELECT invoice_number, invoice_date, DATE_ADD(invoice_date, INTERVAL 30 DAY), payment_date, DATEDIFF(payment_date, invoice_date) AS days_to_pay, MONTH(invoice_date), YEAR(invoice_date) FROM invoices WHERE invoice_date BETWEEN '2018-05-01' AND '2018-05-31';
-- +----------------+--------------+-----------------------------------------+--------------+-------------+---------------------+--------------------+
-- | invoice_number | invoice_date | DATE_ADD(invoice_date, INTERVAL 30 DAY) | payment_date | days_to_pay | MONTH(invoice_date) | YEAR(invoice_date) |
-- +----------------+--------------+-----------------------------------------+--------------+-------------+---------------------+--------------------+
-- | 25022117       | 2018-05-01   | 2018-05-31                              | 2018-06-10   |          40 |                   5 |               2018 |
-- | P02-88D77S7    | 2018-05-03   | 2018-06-02                              | 2018-05-30   |          27 |                   5 |               2018 |
-- | 21-4748363     | 2018-05-03   | 2018-06-02                              | 2018-05-22   |          19 |                   5 |               2018 |
-- | 4-321-2596     | 2018-05-05   | 2018-06-04                              | 2018-06-05   |          31 |                   5 |               2018 |
-- | 963253242      | 2018-05-06   | 2018-06-05                              | 2018-06-05   |          30 |                   5 |               2018 |
-- | QP58872        | 2018-05-07   | 2018-06-06                              | 2018-05-19   |          12 |                   5 |               2018 |
-- | 24863706       | 2018-05-10   | 2018-06-09                              | 2018-06-15   |          36 |                   5 |               2018 |
-- | 10843          | 2018-05-11   | 2018-06-10                              | 2018-05-29   |          18 |                   5 |               2018 |
-- | 963253235      | 2018-05-11   | 2018-06-10                              | 2018-06-09   |          29 |                   5 |               2018 |
-- | 21-4923721     | 2018-05-13   | 2018-06-12                              | 2018-05-28   |          15 |                   5 |               2018 |
-- | 77290          | 2018-05-13   | 2018-06-12                              | 2018-07-05   |          53 |                   5 |               2018 |
-- | 963253246      | 2018-05-13   | 2018-06-12                              | 2018-06-09   |          27 |                   5 |               2018 |
-- | 4-342-8069     | 2018-05-14   | 2018-06-13                              | 2018-06-13   |          30 |                   5 |               2018 |
-- | 972110         | 2018-05-15   | 2018-06-14                              | 2018-05-27   |          12 |                   5 |               2018 |
-- | 963253263      | 2018-05-16   | 2018-06-15                              | 2018-06-10   |          25 |                   5 |               2018 |
-- | 121897         | 2018-05-19   | 2018-06-18                              | 2018-07-03   |          45 |                   5 |               2018 |
-- | 1-200-5164     | 2018-05-20   | 2018-06-19                              | 2018-06-24   |          35 |                   5 |               2018 |
-- | P02-3772       | 2018-05-21   | 2018-06-20                              | 2018-06-24   |          34 |                   5 |               2018 |
-- | 97/486         | 2018-05-21   | 2018-06-20                              | 2018-06-22   |          32 |                   5 |               2018 |
-- | 94007005       | 2018-05-23   | 2018-06-22                              | 2018-06-26   |          34 |                   5 |               2018 |
-- | 963253232      | 2018-05-23   | 2018-06-22                              | 2018-06-18   |          26 |                   5 |               2018 |
-- | RTR-72-3662-X  | 2018-05-25   | 2018-06-24                              | 2018-07-09   |          45 |                   5 |               2018 |
-- | 97/465         | 2018-05-25   | 2018-06-24                              | 2018-06-24   |          30 |                   5 |               2018 |
-- | 963253260      | 2018-05-25   | 2018-06-24                              | 2018-06-26   |          32 |                   5 |               2018 |
-- | 963253272      | 2018-05-26   | 2018-06-25                              | 2018-06-30   |          35 |                   5 |               2018 |
-- | 0-2058         | 2018-05-28   | 2018-06-27                              | 2018-06-30   |          33 |                   5 |               2018 |
-- | 97/503         | 2018-05-30   | 2018-06-29                              | 2018-06-25   |          26 |                   5 |               2018 |
-- | 963253255      | 2018-05-31   | 2018-06-30                              | 2018-06-27   |          27 |                   5 |               2018 |
-- | 94007069       | 2018-05-31   | 2018-06-30                              | 2018-07-01   |          31 |                   5 |               2018 |
-- +----------------+--------------+-----------------------------------------+--------------+-------------+---------------------+--------------------+
-- 29 rows in set (0.001 sec)
