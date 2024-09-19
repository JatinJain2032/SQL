use practice;

CREATE TABLE payment (
    Customer_id INT,
    amount DECIMAL(10, 2),
    mode VARCHAR(50),
    payment_date DATE
);

INSERT INTO payment (Customer_id, amount, mode, payment_date) VALUES
(1, 100.00, 'Credit Card', '2023-01-01'),
(2, 150.50, 'Cash', '2023-02-15'),
(3, 200.75, 'PayPal', '2023-03-10'),
(4, 75.25, 'Debit Card', '2023-04-05'),
(5, 120.00, 'Bank Transfer', '2023-05-20');


-- Second Table

CREATE TABLE customer (
    Customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    addresss_id INT
);

INSERT INTO customer (Customer_id, first_name, last_name, addresss_id) VALUES
(1, 'John', 'Doe', 101),
(2, 'Jane', 'Smith', 102),
(3, 'Bob', 'Johnson', 103),
(6, 'Alice', 'Williams', 104),
(7, 'Charlie', 'Brown', 105);

-- Inner JOIN -- common values from both the tables

Select * from customer As c
Inner Join payment As p
ON c.Customer_id=p.Customer_id;

-- Left Join -- whole left table and common values from Right table
Select * from customer As c
Left Join payment As p
ON c.Customer_id=p.Customer_id;

-- Right JOIN -- whole Right table and common values from Left table

Select * from customer As c
Right Join payment As p
ON c.Customer_id=p.Customer_id;

-- Unfortunately, MySQL does not support FULL OUTER JOIN directly.
-- Instead, you can simulate a FULL OUTER JOIN using a combination of LEFT JOIN and UNION with a RIGHT JOIN.

-- Using LEFT JOIN
SELECT *
FROM customer c
LEFT JOIN payment p ON c.Customer_id = p.Customer_id

UNION

-- Using RIGHT JOIN
SELECT *
FROM customer c
RIGHT JOIN payment p ON c.Customer_id = p.Customer_id;


-- Self Join
CREATE TABLE Employee (
    empid_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    manager_id INT
);

CREATE TABLE Employee (
    empid_id INT PRIMARY KEY,
    emp_name VARCHAR(255),
    manager_id INT
);

INSERT INTO Employee (empid_id, emp_name, manager_id) VALUES
(1, 'John Doe', 3),
(2, 'Jane Smith', 4),
(3, 'Bob Johnson', 2),
(4, 'Alice Williams', 3);

-- Find the name of respective managers for each fo the employees?
Select * from 
Employee as T1
Join Employee as T2
on T1.manager_id=T2.empid_id; -- on T2.manager_id=T1.empid_id;

-- another
Select T1.emp_name as empname, T2.emp_name as manager_name
from Employee as T1
Join Employee as T2
on T1.manager_id=T2.empid_id; 

-- Union
-- Create Cust_A table
CREATE TABLE Cust_A (
    cust_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(255),
    amount DECIMAL(10, 2)
);

-- Create Cust_B table with the same structure
CREATE TABLE Cust_B (
    cust_id INT PRIMARY KEY AUTO_INCREMENT,
    cust_name VARCHAR(255),
    amount DECIMAL(10, 2)
);

-- Insert 5 records into Cust_A
INSERT INTO Cust_A (cust_name, amount) VALUES
('John Doe', 100.50),
('Jane Smith', 200.75),
('Bob Johnson', 150.20),
('Alice Williams', 300.00),
('Charlie Brown', 75.60);

-- Insert 5 records into Cust_B with two values the same as Cust_A
INSERT INTO Cust_B (cust_name, amount) VALUES
('John Doe', 100.50),
('Jane Rime', 250.30),  -- Different amount
('Bob Johnson', 150.20),
('Alice Williams', 300.00),
('Dave Davis', 120.80);   -- Different name and amount

Select *from Cust_A
UNION
Select *from Cust_B;

-- UNION ALL -- Prints idential data also
Select *from Cust_A
UNION ALL
Select *from Cust_B;




