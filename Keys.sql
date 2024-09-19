use practice;

CREATE TABLE Customer2 (
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Gender CHAR(1) NOT NULL,
    City VARCHAR(255) NOT NULL,
    Pincode integer
    );
    
    INSERT INTO Customer2 (Id, Name, Address, Gender, City, Pincode) VALUES
(1, 'John Doe', '123 Main St', 'M', 'City1', '12345'),
(2, 'Jane Doe', '456 Oak St', 'F', 'City2', '56789'),
(3, 'Bob Smith', '789 Pine St', 'M', 'City3', '98765'),
(4, 'Alice Johnson', '101 Cedar St', 'F', 'City4', '54321'),
(5, 'Charlie Brown', '202 Elm St', 'M', 'City5', '67890'),
(6, 'Jatin Jain', '203 Esf Sy', 'M', 'City6', NULL);

Select * from Customer2;

CREATE TABLE Order_details (
    OrderID INT PRIMARY KEY,
    delivery_date DATE NOT NULL,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES Customer2(Id)
);

INSERT INTO Order_details (OrderID, delivery_date, cust_id) VALUES
(101, '2023-01-15', 1),
(102, '2023-02-10', 2),
(103, '2023-03-20', 3),
(104, '2023-04-05', 4),
(105, '2023-05-12', 5),
(106, '2023-06-12', 6);

select * from Order_details;

-- Constarints

Create Table Account(
Id int Primary Key,
Name varchar(50) Unique,
Balance INT,
Constraint acc_balance_chk Check(Balance>10000), -- Balance should be greater than 10000
Min_amt INT NOT NULL DEFAULT 0

);

INSERT INTO Account Values
(1,'Jatin',1000, 500); -- will throw an error

INSERT INTO Account Values
(2,'Lalit',20000,200);

INSERT INTO Account(Id,Name,Balance) Values
(1,'Sumit',30000);  
Drop table account;

Select *from Account;

