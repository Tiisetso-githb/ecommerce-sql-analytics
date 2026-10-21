-- =========================================================
-- Business Intelligence & Analytical Queries
-- Project: E-Commerce Operations & Customer Analytics
-- =========================================================

USE ecommerce_db;

-- ---------------------------------------------------------
-- Customer Spending Analysis: Finding top-spending customers
-- Uses: JOINs, Aggregate Functions (SUM, COUNT), GROUP BY, ORDER BY
-- ---------------------------------------------------------
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.country,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.status = 'Completed'
GROUP BY c.customer_id, c.first_name, c.last_name, c.country
ORDER BY total_spent DESC;


-- ---------------------------------------------------------
-- Inventory Alert: Identifying products running low on stock
-- Uses: Filtering, conditional checks
-- ---------------------------------------------------------
SELECT 
    product_id,
    product_name,
    category,
    stock_quantity,
    price
FROM products
WHERE stock_quantity <= 30
ORDER BY stock_quantity ASC;


-- ---------------------------------------------------------
-- Category Performance: Calculating total revenue per category
-- Uses: Multi-table JOINs, Aggregations
-- ---------------------------------------------------------
SELECT 
    p.category,
    SUM(oi.quantity) AS total_items_sold,
    SUM(oi.quantity * oi.unit_price) AS category_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.status = 'Completed'
GROUP BY p.category
ORDER BY category_revenue DESC;


-- ---------------------------------------------------------
-- Advanced Analysis: Product Price Ranking within Categories
-- Uses: Window Functions (RANK() OVER PARTITION BY)
-- ---------------------------------------------------------
SELECT 
    product_name,
    category,
    price,
    RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank_in_category
FROM products;