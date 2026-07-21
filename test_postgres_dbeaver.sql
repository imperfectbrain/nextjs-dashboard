----------------
-- Where am I
----------------
select current_database(); 						-- neondb

select current_schema();						-- public


--------------------
-- List all tables
--------------------
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';


----------------------
-- Sample each table
----------------------
select * from users;
-- 1

select * from customers;
-- 6

select * from invoices i;

select * from revenue r;


---------------------
-- Tutorial queries
---------------------
SELECT invoices.amount, customers.name
FROM invoices
JOIN customers ON invoices.customer_id = customers.id
WHERE invoices.amount = 666;



















