CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);

INSERT INTO Customers VALUES
(1,'John','New York'),
(2,'Alice','Chicago'),
(3,'Bob','Dallas');

INSERT INTO Products VALUES
(101,'Laptop',50000),
(102,'Mouse',500),
(103,'Keyboard',1000);

INSERT INTO Orders VALUES
(1,1,101,1,'2024-01-10'),
(2,1,102,2,'2024-01-12'),
(3,2,103,3,'2024-01-15'),
(4,3,101,1,'2024-01-20');
CREATE VIEW OrderSummary AS
SELECT
c.customer_name,
p.product_name,
o.quantity
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
JOIN Products p
ON o.product_id = p.product_id;
CREATE INDEX idx_customer
ON Orders(customer_id);
