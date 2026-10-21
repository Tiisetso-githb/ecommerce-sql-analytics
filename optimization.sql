-- =========================================================
-- Performance Optimization & Indexing
-- Project: E-Commerce Operations & Customer Analytics
-- =========================================================

USE ecommerce_db;

-- Analyzing query performance using EXPLAIN
-- This shows you how MySQL looks up data before optimization
EXPLAIN SELECT * FROM customers WHERE email = 'sipho.dlamini@gmail.com';

-- Creating Indexes to speed up lookups on frequently searched columns
-- (Indexes act like an index in the back of a textbook, preventing full table scans)
CREATE INDEX idx_customer_email ON customers(email);
CREATE INDEX idx_order_date ON orders(order_date);

-- Checking the indexes just created
SHOW INDEX FROM customers;