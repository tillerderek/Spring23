--    Assignment 5_CH3_SELECT_REGEXP

-- NOTE: All references to "database" refer to the AP database that goes with the book.  
--       Please use AP, not ap_userid since there have been changes to that database's data 
--       in previous exerises. 

-- Question 1 through Question 6:   5 points each = 30 points
-- 1. Run a SELECT statement to return all the General Ledger Accounts records whose account 
--    number is 500-549.  
-- ** Cut and paste your SQL statement and results here.
MariaDB [ap]> SELECT *
    -> FROM general_ledger_accounts
    -> WHERE account_number BETWEEN 500 AND 550;
-- +----------------+--------------------------------+
-- | account_number | account_description            |
-- +----------------+--------------------------------+
-- |            500 | Salaries and Wages             |
-- |            505 | FICA                           |
-- |            506 | FUTA                           |
-- |            507 | UCI                            |
-- |            508 | Medicare                       |
-- |            510 | Group Insurance                |
-- |            520 | Building Lease                 |
-- |            521 | Utilities                      |
-- |            522 | Telephone                      |
-- |            523 | Building Maintenance           |
-- |            527 | Computer Equipment Maintenance |
-- |            528 | IBM Lease                      |
-- |            532 | Equipment Rental               |
-- |            536 | Card Deck Advertising          |
-- |            540 | Direct Mail Advertising        |
-- |            541 | Space Advertising              |
-- |            546 | Exhibits and Shows             |
-- |            548 | Web Site Production and Fees   |
-- |            550 | Packaging Materials            |
-- +----------------+--------------------------------+
-- 19 rows in set (0.001 sec)



-- 2. Run a SELECT statement to return a list of the Vendor Contacts.  
--    Please return only one field which shows last name, first name (don’t forget the comma and space).  
-- ** Cut and paste your SQL statement and results here.

MariaDB [ap]> SELECT CONCAT(first_name, ' ', last_name) as full_name FROM vendor_contacts;
-- +----------------------+
-- | full_name            |
-- +----------------------+
-- | Michelle Davison     |
-- | Kendall Mayteh       |
-- | Bruce Onandonga      |
-- | Anthony Antavius     |
-- | Danny Bradlee        |
-- | Reynaldo Suscipe     |
-- | Geraldine O'Sullivan |
-- | Charles Bucket       |
-- +----------------------+
-- 8 rows in set (0.001 sec)


-- 3. Run a SELECT statement that shows the invoice_number, vendor_id, invoice_date, and 
--    invoice_balance (invoice total minus payment total) for only vendor_id  121 
--    from the invoices table. 
-- ** Cut and paste your SQL statement and results here.

MariaDB [ap]> SELECT invoice_number, vendor_id, invoice_date, invoice_total-payment_total AS invoice_balance FROM invoices WHERE vendor_id=121;
-- +----------------+-----------+--------------+-----------------+
-- | invoice_number | vendor_id | invoice_date | invoice_balance |
-- +----------------+-----------+--------------+-----------------+
-- | 97/488         |       121 | 2018-04-24   |            0.00 |
-- | 97/486         |       121 | 2018-05-21   |            0.00 |
-- | 97/465         |       121 | 2018-05-25   |            0.00 |
-- | 97/503         |       121 | 2018-05-30   |            0.00 |
-- | 97/553B        |       121 | 2018-06-10   |            0.00 |
-- | 97/553         |       121 | 2018-06-25   |            0.00 |
-- | 97/522         |       121 | 2018-06-28   |          200.00 |
-- | 97/222         |       121 | 2018-07-25   |            0.00 |
-- +----------------+-----------+--------------+-----------------+
-- 8 rows in set (0.001 sec)


-- 4. Run a SELECT statement that alphabetically lists all vendor names, address1, city, 
--    and state from the vendors tables, for all vendors in New York. 
-- ** Cut and paste your SQL statement and results here.
MariaDB [ap]> SELECT vendor_name, vendor_address1, vendor_city, vendor_state 
FROM vendors 
WHERE vendor_state='NY' 
ORDER BY vendor_name, vendor_address1, vendor_city, vendor_state ASC;
-- +------------------------------+-----------------+--------------+--------------+
-- | vendor_name                  | vendor_address1 | vendor_city  | vendor_state |
-- +------------------------------+-----------------+--------------+--------------+
-- | American Booksellers Assoc   | 828 S Broadway  | Tarrytown    | NY           |
-- | The Mailers Guide Co         | PO Box 1550     | New Rochelle | NY           |
-- | Venture Communications Int'l | 60 Madison Ave  | New York     | NY           |
-- +------------------------------+-----------------+--------------+--------------+
-- 3 rows in set (0.001 sec)


-- 5. Run a SELECT statement to list all vendors from California (alphabetically) whose 
--    default_account_number is 540, please list their name and phone numbers. 
-- ** Cut and paste your SQL statement and results here.

MariaDB [ap]> SELECT vendor_name, vendor_phone
    -> FROM vendors
    -> WHERE vendor_state='CA' AND default_account_number=540;
-- +---------------------------------+----------------+
-- | vendor_name                     | vendor_phone   |
-- +---------------------------------+----------------+
-- | Towne Advertiser's Mailing Svcs | NULL           |
-- | Blanchard & Johnson Associates  | (214) 555-3647 |
-- | California Data Marketing       | (559) 555-3801 |
-- | Ph Photographic Services        | (559) 555-0765 |
-- | The Presort Center              | (559) 555-6151 |
-- | Zip Print & Copy Center         | (233) 555-6400 |
-- | Kent H Landsberg Co             | (916) 555-8100 |
-- +---------------------------------+----------------+
-- 7 rows in set (0.003 sec)


-- 6. Run a SELECT statement to list all invoice lines from invoice 12 which were charged 
--    to account 570. 
--** Cut and paste your SQL statement and results here.

-- unclear as to wether all fields from invoice_line_items are to be displayed or just line_item_amount and line_item_description. posting both below.
MariaDB [ap]> SELECT *
    -> FROM invoice_line_items
    -> WHERE invoice_id=12 AND account_number=570;
-- +------------+------------------+----------------+------------------+-----------------------+
-- | invoice_id | invoice_sequence | account_number | line_item_amount | line_item_description |
-- +------------+------------------+----------------+------------------+-----------------------+
-- |         12 |                2 |            570 |            75.60 | Kinko's               |
-- |         12 |                3 |            570 |            58.40 | Office Max            |
-- +------------+------------------+----------------+------------------+-----------------------+
-- 2 rows in set (0.000 sec)
MariaDB [ap]> SELECT line_item_amount, line_item_description 
FROM invoice_line_items 
WHERE invoice_id=12 AND account_number=570;
-- +------------------+-----------------------+
-- | line_item_amount | line_item_description |
-- +------------------+-----------------------+
-- |            75.60 | Kinko's               |
-- |            58.40 | Office Max            |
-- +------------------+-----------------------+
-- 2 rows in set (0.001 sec)


--*******************************************
--  Question 7 through Question 9:   9 points each = 27 points
-- 7-9.  Make up and run 3 SELECT statements of your own to find specific things. 
--       You may use any database and any table, just be sure to list them. 
-- ** Cut and paste your SQL statement and results here.
MariaDB [ap]> SELECT terms_description AS 30_days_or_less 
FROM terms 
WHERE terms_due_days BETWEEN 10 AND 40;
-- +-----------------+
-- | 30_days_or_less |
-- +-----------------+
-- | Net due 10 days |
-- | Net due 20 days |
-- | Net due 30 days |
-- +-----------------+

MariaDB [ap]> SELECT CONCAT(vendor_contact_first_name, ' ', vendor_contact_last_name)AS california_vendor_contacts, vendor_phone AS phone  FROM vendors WHERE vendor_state='CA' ORDER BY california_vendor_contacts ASC;
-- +----------------------------+----------------+
-- | california_vendor_contacts | phone          |
-- +----------------------------+----------------+
-- | Aaron Jaquan               | NULL           |
-- | Alexandro Alexis           | (559) 555-2993 |
-- | Anders Rohansen            | (559) 555-5570 |
-- | Angel Lloyd                | (617) 555-0700 |
-- | Anita Prado                | NULL           |
-- | Anne Braydon               | (559) 555-7900 |
-- | Anton Mauro                | (916) 555-6670 |
-- | Bill Leigh                 | (559) 555-9375 |
-- | Brian Griffin              | (714) 555-9000 |
-- | Caitlin Jair               | (559) 555-2420 |
-- | Charlie Church             | NULL           |
-- | Dakota Baylee              | NULL           |
-- | Deangelo Sydney            | (559) 555-6621 |
-- | Demetrius Hunter           | (559) 555-1534 |
-- | Derek Chaddick             | (559) 555-3005 |
-- | Elisabeth Darien           | NULL           |
-- | Erick Kaleigh              | (559) 555-1551 |
-- | Fyodor Finklestein         | (559) 555-7785 |
-- | Gideon Paris               | (213) 555-4322 |
-- | Gonzalo Keeton             | (214) 555-3647 |
-- | Grace Oren                 | NULL           |
-- | Hannah Royce               | NULL           |
-- | Harold Spivak              | (559) 555-2770 |
-- | Jaime Ronaldsen            | (559) 555-8625 |
-- | Jamari Raven               | (310) 555-7062 |
-- | Jeffrey Smitzen            | (559) 555-8700 |
-- | Joan Aileen                | NULL           |
-- | Johnathon Millerton        | (559) 555-1881 |
-- | Jovon Walker               | (310) 555-2732 |
-- | Julissa Dean               | (916) 555-4911 |
-- | Justin Javen               | (233) 555-6400 |
-- | Kaitlin Hostlery           | (559) 555-5106 |
-- | Kaitlyn Anthoni            | (800) 555-6081 |
-- | Karen Snyder               | (800) 555-7000 |
-- | Kaylea Cheyenne            | (559) 555-0765 |
-- | Kendall Mayte              | (559) 555-9999 |
-- | Kenzie Quinn               | (800) 555-8725 |
-- | Kila Brenton               | (559) 555-3482 |
-- | Kirsten Story              | (800) 555-3344 |
-- | Korah Blanca               | NULL           |
-- | Kurt Nickalus              | (209) 555-7500 |
-- | Kyle Marissa               | (559) 555-6151 |
-- | Kylie Smith                | (415) 555-5103 |
-- | Kyra Francis               | (559) 555-8300 |
-- | Lance Potter               | (805) 555-0584 |
-- | Laura Kraggin              | NULL           |
-- | Leah Colton                | (559) 555-4442 |
-- | Leann Randrup              | (559) 555-7473 |
-- | Liam Wood                  | (800) 555-3353 |
-- | Lorena Josey               | NULL           |
-- | Luciano Destin             | (800) 555-7009 |
-- | Marvin Quintin             | (559) 555-9586 |
-- | Mercedez Articunia         | (209) 555-5132 |
-- | Moises Jonessen            | (559) 555-3801 |
-- | Nathanael Rothman          | (559) 555-4744 |
-- | Nikolas Eliana             | (800) 555-0912 |
-- | Quentin Warren             | (559) 555-3112 |
-- | Rachael Bluzinski          | (415) 555-7600 |
-- | Rachael Danielson          | (559) 555-1704 |
-- | Reba Hernandez             | (559) 555-0600 |
-- | Robert Aranovitch          | (559) 555-2631 |
-- | Robert Kapil               | (800) 555-0344 |
-- | Ron Elmert                 | NULL           |
-- | Rowan Kerry                | (559) 555-8060 |
-- | Salina Edgardo             | (559) 555-7070 |
-- | Sam Smith                  | NULL           |
-- | Ted Maegen                 | NULL           |
-- | Thom Aaronsen              | (559) 555-8484 |
-- | Trentin Camron             | (800) 555-4426 |
-- | Trisha Anum                | (559) 555-6643 |
-- | Tristin Deasia             | NULL           |
-- | Val Pinsippi               | (800) 555-1711 |
-- | Vanesa Lane                | (714) 555-4541 |
-- | Walter Bragg               | (559) 555-5100 |
-- | Wendy Stevens              | (916) 555-8100 |
-- +----------------------------+----------------+
-- 75 rows in set (0.001 sec)



MariaDB [ap]> SELECT payment_total 
FROM invoices 
WHERE payment_date BETWEEN '2018-05-01' AND '2018-05-31';
-- +---------------+
-- | payment_total |
-- +---------------+
-- |       3813.33 |
-- |         40.20 |
-- |        138.75 |
-- |        144.70 |
-- |         15.50 |
-- |         42.75 |
-- |        172.50 |
-- |         95.00 |
-- |        601.95 |
-- |         42.67 |
-- |         42.50 |
-- |        662.00 |
-- |         16.33 |
-- |        856.92 |
-- |          9.95 |
-- |        116.54 |
-- |       4901.26 |
-- |          9.95 |
-- |        207.78 |
-- +---------------+
-- 19 rows in set (0.001 sec)



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
-- Q10:  Select first name and email from members whose email address starts with 
-- a single letter followed by an underscore.


-- +------------+------------------------+
-- | first_name | email                  |
-- +------------+------------------------+
-- | Dennis     | s_dennis@jupiter.com   |
-- | Donald     | d_phillips@neptune.org |
-- | Rick       | n_rick@uranus.net      |
-- | Darrell    | w_darrell@uranus.net   |
-- | Sarah      | p_sarah@saturn.org     |
-- +------------+------------------------+
-- 5 rows in set (0.001 sec)



-- A11.  
		SELECT first_name, email 
		FROM member 
		WHERE email RLIKE '^[c]\\..*net$';
-- Q11:  Select first name and email from members whose email address starts with 
-- 'c.' and ends with '.net'.

-- +------------+----------------------+
-- | first_name | email                |
-- +------------+----------------------+
-- | Carol      | c.dorfman@uranus.net |
-- +------------+----------------------+
-- 1 row in set (0.000 sec)



-- A12.  
		SELECT first_name, last_name 
		FROM member 
		WHERE last_name RLIKE 'land$';
-- Q12: Select the first and last name of members whose last name ends with the
-- string 'land'.



-- +------------+-----------+
-- | first_name | last_name |
-- +------------+-----------+
-- | Roland     | Overland  |
-- +------------+-----------+
-- 1 row in set (0.000 sec)




-- A13.  
		SELECT first_name, last_name, interests 
		FROM member 
		WHERE interests RLIKE 'immigration';
-- Q13: Display the first name, last name, and interests of members who are 
-- interested in immigration.


-- +------------+------------+----------------------------------------------------------------------+
-- | first_name | last_name  | interests                                                            |
-- +------------+------------+----------------------------------------------------------------------+
-- | Carol      | Dorfman    | Revolutionary War,Cold War,immigration                               |
-- | Marcia     | Anderson   | Armed services,immigration,Gold rush,Cold War,Education              |
-- | Mark       | York       | Cold War,immigration                                                 |
-- | Roland     | Overland   | Gold rush,immigration,Spanish-American War                           |
-- | Amy        | Colby      | World War I,immigration,Vietnam War,Constitution                     |
-- | Timothy    | Kirby      | Colonial period,immigration,Civil War                                |
-- | Sarah      | Page       | Vietnam War,immigration,Industrial revolution                        |
-- | Robin      | Johnson    | Constitution,Civil War,Cold War,immigration,Civil Rights             |
-- | James      | Harrington | Roosevelt,Civil War,Lincoln,Civil Rights,immigration                 |
-- | Laura      | Smith      | Armed services,immigration,Civil Rights,Great Depression,Vietnam War |
-- +------------+------------+----------------------------------------------------------------------+
-- 10 rows in set (0.001 sec)



-- A14:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS ‘Full Name’ 
		FROM member 
		WHERE last_name RLIKE 'o.*o' ORDER BY last_name, first_name;
-- Q14: Combine the first and last name as 'Full Name' with a blank space between
-- them. Only display the full names for members who have a last name containing
-- 2 of the letter 'o'. Order the names alphabetically by last name.

-- +-------------------+
-- | Full Name         |
-- +-------------------+
-- | Nancy Aronson     |
-- | Barbara Bookstaff |
-- | Carl Brooks       |
-- | Robin Johnson     |
-- | Susan Moorhead    |
-- | Maureen Olson     |
-- | Chris Robson      |
-- | Jeanne Solow      |
-- | Joan Thompson     |
-- | Ralph Worthington |
-- +-------------------+
-- 10 rows in set (0.000 sec)

-- A15:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS Member 
		FROM member  
		WHERE last_name RLIKE 'son' ORDER BY last_name, first_name;
-- Q15:  Combine the first and last name as Member with a blank space between
-- them. Only display the full names for members who have a last name containing
-- the string 'son'. Order the names alphabetically by last name.

-- +------------------+
-- | Member        |
-- +------------------+
-- | Marcia Anderson  |
-- | Nancy Aronson    |
-- | Jessica Eliason  |
-- | Herbert Gjertson |
-- | Marita Harrison  |
-- | Robin Johnson    |
-- | Anthony Nelson   |
-- | Maureen Olson    |
-- | Stanley Pierson  |
-- | Chris Robson     |
-- | Joan Thompson    |
-- +------------------+
-- 11 rows in set (0.001 sec)


-- A16:  
		SELECT CONCAT_WS(' ',first_name, last_name ) AS Member, street 
		FROM member 
		WHERE street RLIKE binary 'W.*W' ORDER BY last_name, first_name;
-- Q16:    Combine the first and last name as Member with a blank space between
-- them. Display the members whose street contains 'W.' followed by a string 
-- containing 'W' both strings are uppercase. 
-- Order the names alphabetically by last name.


-- +---------------+-------------------+
-- | Member        | street            |
-- +---------------+-------------------+
-- | Andrea Morris | 530 W. Wilson St. |
-- +---------------+-------------------+
-- 1 row in set (0.001 sec)



--***************************************
-- Question 17 through Question 19:   5 points each = 15 points
-- Your turn – provide 17, 18, 19 (Provide the question, SQL code & output window)

-- A17: 		
    SELECT CONCAT_WS(' ',first_name, last_name ) AS 'Presidents with A names'
		FROM president 
		WHERE first_name RLIKE binary '^A';

--Q17: Display all the presdients whose names start with the letter A and combine first and last name. 

-- +-------------------------+
-- | Presidents with A names |
-- +-------------------------+
-- | Andrew Jackson          |
-- | Abraham Lincoln         |
-- | Andrew Johnson          |
-- +-------------------------+
-- 3 rows in set (0.001 sec)



-- A18:    
    SELECT CONCAT_WS(' ',first_name, last_name ) AS 'Presidents with A names born after 1800'
		FROM president 
		WHERE first_name RLIKE binary '^A' AND birth >= '1800/01/01';

--Q18: Combine the first and last names of the presidents and display all the presdients whose names start with the letter A who were born in or after 1800.


-- +-----------------------------------------+
-- | Presidents with A names born after 1800 |
-- +-----------------------------------------+
-- | Abraham Lincoln                         |
-- | Andrew Johnson                          |
-- +-----------------------------------------+
-- 2 rows in set (0.000 sec)



-- A19:    
    SELECT CONCAT_WS(' ',first_name, last_name ) AS 'Presidents born in the 1800s', birth
		FROM president 
		WHERE birth BETWEEN '1800/01/01' AND '1899/12/31'
    ORDER BY birth ASC;

--Q19: Combine the first and last names of the presidents and display their names and birthdates of all the presidents who were born in the 1800's. 

-- +------------------------------+------------+
-- | Presidents born in the 1800s | birth      |
-- +------------------------------+------------+
-- | Millard Fillmore             | 1800-01-07 |
-- | Franklin Pierce              | 1804-11-23 |
-- | Andrew Johnson               | 1808-12-29 |
-- | Abraham Lincoln              | 1809-02-12 |
-- | Ulysses S. Grant             | 1822-04-27 |
-- | Rutherford B. Hayes          | 1822-10-04 |
-- | Chester A. Arthur            | 1829-10-05 |
-- | James A. Garfield            | 1831-11-19 |
-- | Benjamin Harrison            | 1833-08-20 |
-- | Grover Cleveland             | 1837-03-18 |
-- | William McKinley             | 1843-01-29 |
-- | Woodrow Wilson               | 1856-12-19 |
-- | William H. Taft              | 1857-09-15 |
-- | Theodore Roosevelt           | 1858-10-27 |
-- | Warren G. Harding            | 1865-11-02 |
-- | Calvin Coolidge              | 1872-07-04 |
-- | Herbert C. Hoover            | 1874-08-10 |
-- | Franklin D. Roosevelt        | 1882-01-30 |
-- | Harry S Truman               | 1884-05-08 |
-- | Dwight D. Eisenhower         | 1890-10-14 |
-- +------------------------------+------------+
-- 20 rows in set (0.001 sec)




