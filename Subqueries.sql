CREATE TABLE my_acc (
    ACCOUNT_ID INT PRIMARY KEY,
    product_cd VARCHAR(50),
    cust_id INT,
    avail_balance DECIMAL(10, 2)
);

INSERT INTO my_acc (ACCOUNT_ID, product_cd, cust_id, avail_balance)
VALUES
    (29, 'Savings', 101, 5000.00),
    (45, 'Checking', 102, 10000.00),
    (12, 'CD', 103, 15000.00),
    (75, 'Loan', 104, -5000.00),
    (55, 'Savings', 105, 2000.00);
    
    select *from my_acc 
    where account_id=(select Max(account_id) from my_acc);
    
    select *from my_acc
    where product_cd IN('Loan','Savings');