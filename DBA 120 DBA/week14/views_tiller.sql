 CREATE VIEW vendors_min AS SELECT vendor_name, vendor_state, vendor_phone FROM vendors;

 SELECT * FROM vendors_min
    -> WHERE vendor_state = 'CA'
    -> ORDER BY vendor_name;
-- +---------------------------------+--------------+----------------+
-- | vendor_name                     | vendor_state | vendor_phone   |
-- +---------------------------------+--------------+----------------+
-- | Abbey Office Furnishings        | CA           | (559) 555-8300 |
-- | American Express                | CA           | (800) 555-3344 |
-- | ASC Signs                       | CA           | NULL           |
-- | Aztek Label                     | CA           | (714) 555-9000 |

-- | Zip Print & Copy Center         | CA           | (233) 555-6400 |
-- | Zylka Design                    | CA           | (559) 555-8625 |
-- +---------------------------------+--------------+----------------+
-- 75 rows in set (0.001 sec)

UPDATE vendors_min
    -> SET vendor_phone =
    -> '(800) 555-3941'
    -> WHERE vendor_name = 'Register of Copyrights';
-- Query OK, 1 row affected (0.002 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

DROP VIEW vendors_min;
-- Query OK, 0 rows affected (0.000 sec)

 CREATE VIEW vendors_phone_list AS
    -> SELECT vendor_name, vendor_contact_last_name,
    -> vendor_contact_first_name, vendor_phone
    -> FROM vendors
    -> WHERE vendor_id IN (SELECT DISTINCT vendor_id FROM invoices);
-- Query OK, 0 rows affected (0.002 sec)

CREATE OR REPLACE VIEW vendor_invoices AS
    -> SELECT vendor_name, invoice_number, invoice_date, invoice_total
    -> FROM vendors
    -> JOIN invoices ON vendors.vendor_id = invoices.vendor_id;
-- Query OK, 0 rows affected (0.003 sec)

CREATE OR REPLACE VIEW top5_invoice_totals AS
    -> SELECT vendor_id, invoice_total
    -> FROM invoices
    -> ORDER BY invoice_total DESC
    -> LIMIT 5;
-- Query OK, 0 rows affected (0.003 sec)

CREATE OR REPLACE VIEW invoices_outstanding
(invoice_number, invoice_date, invoice_total, balance_due)
AS
SELECT invoice_number, invoice_date, invoice_total,
invoice_total - payment_total - credit_total
FROM invoices
WHERE invoice_total - payment_total - credit_total > 0;

-- Query OK, 0 rows affected (0.007 sec)

CREATE OR REPLACE VIEW invoices_outstanding AS
    -> SELECT invoice_number, invoice_date, invoice_total,
    -> invoice_total - payment_total - credit_total AS balance_due
    -> FROM invoices
    -> WHERE invoice_total - payment_total - credit_total > 0;
-- Query OK, 0 rows affected (0.005 sec)

 CREATE OR REPLACE VIEW invoice_summary AS
    -> SELECT vendor_name,
    -> COUNT(*) AS invoice_count,
    -> SUM(invoice_total) AS invoice_total_sum
    -> FROM vendors
    -> JOIN invoices ON vendors.vendor_id = invoices.vendor_id
    -> GROUP BY vendor_name;
-- Query OK, 0 rows affected (0.005 sec)

--  #1
 CREATE OR REPLACE VIEW open_items AS
    -> SELECT vendor_name, invoice_number, invoice_total,
    -> invoice_total - payment_total - credit_total AS balance_due
    -> FROM vendors NATURAL JOIN invoices
    -> WHERE invoice_total - payment_total - credit_total > 0
    -> ORDER BY vendor_name;
-- Query OK, 0 rows affected (0.005 sec)

-- #2
SELECT * FROM open_items WHERE balance_due > 1000;
-- +--------------------------+----------------+---------------+-------------+
-- | vendor_name              | invoice_number | invoice_total | balance_due |
-- +--------------------------+----------------+---------------+-------------+
-- | Malloy Lithographing Inc | P-0608         |      20551.18 |    19351.18 |
-- | Malloy Lithographing Inc | 0-2436         |      10976.06 |    10976.06 |
-- +--------------------------+----------------+---------------+-------------+
-- 2 rows in set (0.001 sec)

-- #3
CREATE OR REPLACE VIEW open_items_summary AS SELECT vendor_name, COUNT(invoice_total - payment_total - credit_total) AS open_item_count, SUM(invoice_total - payment_total - credit_total) AS open_item_total FROM vendors NATURAL JOIN invoices
    -> GROUP BY vendor_name
    ->  ORDER BY open_item_total DESC;
-- Query OK, 0 rows affected (0.004 sec)


-- #4
SELECT * FROM open_items_summary
    -> LIMIT 5;
-- +-----------------------------+-----------------+-----------------+
-- | vendor_name                 | open_item_count | open_item_total |
-- +-----------------------------+-----------------+-----------------+
-- | Malloy Lithographing Inc    |               5 |        30327.24 |
-- | Ingram                      |               2 |          579.42 |
-- | Ford Motor Credit Company   |               1 |          503.20 |
-- | Blue Cross                  |               3 |          224.00 |
-- | Federal Express Corporation |              47 |          210.89 |
-- +-----------------------------+-----------------+-----------------+
-- 5 rows in set (0.001 sec)

-- #5
CREATE OR REPLACE VIEW vendor_address AS
    -> SELECT vendor_id, vendor_name, vendor_address1, vendor_address2,
    -> vendor_city, vendor_state, vendor_zip_code
    -> FROM vendors;
-- Query OK, 0 rows affected (0.004 sec)

-- #6
UPDATE vendor_address
    -> SET vendor_address2 = 'Ste 260'
    -> WHERE vendor_id = 4;
Query OK, 1 row affected (0.004 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

 SELECT vendor_address2
    -> FROM vendor_address
    -> WHERE vendor_id =4;
-- +-----------------+
-- | vendor_address2 |
-- +-----------------+
-- | STE 260         |
-- +-----------------+
-- 1 row in set (0.001 sec)



