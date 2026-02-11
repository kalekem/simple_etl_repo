-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    email NVARCHAR(100),
    signup_date DATETIME
);

INSERT INTO customers (customer_id, first_name, email, signup_date) VALUES
(1, 'Alice', 'alice@example.com', '2023-01-15'),
(2, 'Bob', 'bob@test.org', '2023-02-20'),
(3, 'Charlie', 'charlie@gmail.com', '2023-03-05'),
(4, 'Diana', 'diana@dev.io', '2023-03-10'),
(5, 'Edward', 'edward@corp.com', '2023-04-01');

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(100),
    category NVARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 1200.00),
(102, 'Mouse', 'Accessories', 25.50),
(103, 'Monitor', 'Electronics', 300.00),
(104, 'Keyboard', 'Accessories', 75.00);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(5001, 1, '2024-01-01', 1225.50),
(5002, 3, '2024-01-02', 300.00),
(5003, 2, '2024-01-05', 100.50);

-- Order Items Table
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO order_items (item_id, order_id, product_id, quantity) VALUES
(1, 5001, 101, 1),
(2, 5001, 102, 1),
(3, 5002, 103, 1),
(4, 5003, 104, 1);

-- Store Inventory Table
CREATE TABLE store_inventory (
    product_id INT PRIMARY KEY,
    stock_count INT,
    last_restock DATETIME
);

INSERT INTO store_inventory (product_id, stock_count, last_restock) VALUES
(101, 50, '2023-12-25'),
(102, 200, '2023-12-25'),
(103, 30, '2023-12-25'),
(104, 100, '2023-12-25');