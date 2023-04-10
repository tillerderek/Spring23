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


