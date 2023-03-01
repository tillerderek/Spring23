--    Assignment 5_CH3_SELECT_REGEXP

-- NOTE: All references to "database" refer to the AP database that goes with the book.  
--       Please use AP, not ap_userid since there have been changes to that database's data 
--       in previous exerises. 

-- Question 1 through Question 6:   5 points each = 30 points
-- 1. Run a SELECT statement to return all the General Ledger Accounts records whose account 
--    number is 500-549.  
-- ** Cut and paste your SQL statement and results here.


-- 2. Run a SELECT statement to return a list of the Vendor Contacts.  
--    Please return only one field which shows last name, first name (don’t forget the comma and space).  
-- ** Cut and paste your SQL statement and results here.


-- 3. Run a SELECT statement that shows the invoice_number, vendor_id, invoice_date, and 
--    invoice_balance (invoice total minus payment total) for only vendor_id  121 
--    from the invoices table. 
-- ** Cut and paste your SQL statement and results here.


-- 4. Run a SELECT statement that alphabetically lists all vendor names, address1, city, 
--    and state from the vendors tables, for all vendors in New York. 
-- ** Cut and paste your SQL statement and results here.


-- 5. Run a SELECT statement to list all vendors from California (alphabetically) whose 
--    default_account_number is 540, please list their name and phone numbers. 
-- ** Cut and paste your SQL statement and results here.


-- 6. Run a SELECT statement to list all invoice lines from invoice 12 which were charged 
--    to account 570. 
--** Cut and paste your SQL statement and results here.


--*******************************************
--  Question 7 through Question 9:   9 points each = 27 points
-- 7-9.  Make up and run 3 SELECT statements of your own to find specific things. 
--       You may use any database and any table, just be sure to list them. 
-- ** Cut and paste your SQL statement and results here.


--*******************************************
-- Regular Expressions: Jeopardy Time
-- You have been given a new database called misc.  In it you will find several tables that 
-- will/can be used for the remainder of this assignment. 
-- You will be given code and results (A=answer), you are then to provide the question (Q) which 
-- is being answered. You may use any table(s) you want for the section you write.

-- EXAMPLE:
-- A.  SELECT  first_name, last_name FROM member WHERE last_name rlike '^b.*o{2}';
  
-- Q.  Select first name and last name of all members that have a last name beginning with 
--     b and contains two o’s

MariaDB [misc]> SELECT  first_name, last_name FROM member WHERE last_name rlike '^b.*o{2}';
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Barbara    | Bookstaff |
| Carl       | Brooks    |
+------------+-----------+
2 rows in set (0.00 sec)

--******************************************

-- Question 10 through Question 16:   4 points each = 28 points
-- 1. Read the answer SQL statement provided.
-- 2. What question is the SQL statement providing the answer to?
--    Write the question under the Q.
-- 3. Run the answer SQL statement on the server.
-- 4. Cut and paste the answer SQL statement and results under the question you provided.
-- 5. You are to verify that the question you provided matches the results of the SQL statement.

-- A10.  
		SELECT first_name, email 
		FROM member 
		WHERE email RLIKE '^[a-z]_';
-- Q10:  


-- A11.  
		SELECT first_name, email 
		FROM member 
		WHERE email RLIKE '^[c]\\..*net$';
-- Q11:  


-- A12.  
		SELECT first_name, last_name 
		FROM member 
		WHERE last_name RLIKE 'land$';
-- Q12: 


-- A13.  
		SELECT first_name, last_name, interests 
		FROM member 
		WHERE interests RLIKE 'immigration';
-- Q13:


-- A14:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS ‘Full Name’ 
		FROM member 
		WHERE last_name RLIKE 'o.*o' ORDER BY last_name, first_name;
-- Q14:

-- A15:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS Member 
		FROM member  
		WHERE last_name RLIKE 'son' ORDER BY last_name, first_name;
-- Q15:    


-- A16:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS Member, street 
		FROM member 
		WHERE street RLIKE binary 'W.*W' ORDER BY last_name, first_name;
-- Q16:    


--***************************************
-- Question 17 through Question 19:   5 points each = 15 points
-- Your turn – provide 17, 18, 19 (Provide the question, SQL code & output window)



