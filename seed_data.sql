select * from customers;
-- =========================================================
-- Data Population (Seed Data)
-- Project: E-Commerce Operations & Customer Analytics
-- =========================================================


USE ecommerce_db;

-- Suppliers
INSERT INTO suppliers (supplier_name, contact_email, country) VALUES
('TechWorld Distributors', 'contact@techworld.co.za', 'South Africa'),
('Global Gadgets Inc.', 'support@globalgadgets.com', 'China'),
('Apex Apparel', 'sales@apexapparel.co.za', 'South Africa'),
('HomeStyle Goods', 'info@homestylegoods.com', 'USA');

-- Customers
INSERT INTO customers (first_name, last_name, email, country) VALUES
('Sipho', 'Dlamini', 'sipho.dlamini@gmail.com', 'South Africa'),
('Lerato', 'Mokoena', 'lerato.m@yahoo.com', 'South Africa'),
('John', 'Smith', 'jsmith@outlook.com', 'USA'),
('Nomvula', 'Khumalo', 'nomvula.k@gmail.com', 'South Africa'),
('David', 'Van Der Merwe', 'david.vdm@webmail.co.za', 'South Africa'),
('Chloe', 'Dupont', 'chloe.dupont@gmail.com', 'France');

--  Products
INSERT INTO products (product_name, category, price, stock_quantity, supplier_id) VALUES
('Wireless Bluetooth Headphones', 'Electronics', 899.99, 45, 1),
('Mechanical Gaming Keyboard', 'Electronics', 1299.50, 30, 1),
('1080p Webcam', 'Electronics', 599.00, 20, 2),
('Cotton Hoodie', 'Clothing', 450.00, 60, 3),
('Slim Fit Denim Jeans', 'Clothing', 650.00, 50, 3),
('Stainless Steel Coffee Maker', 'Home & Kitchen', 1599.99, 15, 4),
('Non-Stick Frying Pan', 'Home & Kitchen', 349.99, 25, 4),
('Ergonomic Office Chair', 'Furniture', 2499.00, 10, 4);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2026-02-10 10:15:00', 'Completed'),
(2, '2026-02-12 14:30:00', 'Completed'),
(3, '2026-02-15 09:00:00', 'Completed'),
(1, '2026-02-20 16:45:00', 'Completed'),
(4, '2026-02-22 11:20:00', 'Pending'),
(5, '2026-02-25 13:10:00', 'Completed'),
(6, '2026-03-01 08:50:00', 'Completed');

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 899.99),  -- Sipho bought Headphones
(1, 4, 2, 450.00),  -- Sipho bought 2 Hoodies
(2, 2, 1, 1299.50), -- Lerato bought Keyboard
(3, 6, 1, 1599.99), -- John bought Coffee Maker
(4, 3, 1, 590.00),  -- Sipho bought Webcam (approx price update)
(5, 5, 2, 650.00),  -- Nomvula bought 2 Jeans
(6, 8, 1, 2499.00), -- David bought Office Chair
(6, 7, 1, 349.99),  -- David bought Frying Pan
(7, 1, 1, 899.99);  -- Chloe bought Headphones