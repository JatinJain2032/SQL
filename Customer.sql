use practice;

CREATE TABLE customer(
Id int Primary key,
Name varchar(50) NOT NULL,
Age int NOT NULL,
City Char(50),
Salary int
);

INSERT INTO customer Values
( 1, 'Sam', 26, 'Delhi',9000),
( 2, 'Ram', 27, 'Banglore',11000),
( 3, 'Pam', 28, 'Mumbai',6000),
( 4, 'Jam', 29, 'Pune',10000);

Select * from customer;

UPDATE customer
SET Name ='kam', Age=30
Where Id=3;

-- to delete entire row
DELETE From customer
where ID=4;

-- Add New Column
ALTER TABLE customer
ADD column Salary int;

-- Update 
UPDATE customer
SET Salary = '6000'
WHERE Id=1;

UPDATE customer
SET Salary = '7000'
WHERE Id=2;

UPDATE customer
SET Salary = '8000'
WHERE Id=3;

-- Add new Column
ALTER TABLE customer
ADD column Class int;

-- we can use below code to insert many data in newly added column
UPDATE customer
SET Class = 
    CASE 
        WHEN Id = 1 THEN '6'
        WHEN Id = 2 THEN '7'
        WHEN Id = 3 THEN '8'
        ELSE Class
    END
WHERE Id IN (1, 2, 3);

Update cust_data Set Final_Salary =5000 where id= 4;

-- Delete entire column using Alter Operation
ALTER TABLE customer
DROP COLUMN Class;

-- Modify Column using Alter 
Alter Table Customer Modify Salary Float Not NULL Default 5000;

-- Change Coloumn using ALter  -- Rename and can change data type also

Alter Table Customer Change Column Salary Final_Salary Float Not NULL Default 5000;

-- Rename  Table using Alter
Alter Table Customer  Rename to Cust_Data;

-- Describe Account
DESC Cust_Data;

-- Specific Slection

Select distinct Id from customer; -- selects disticnt values
Select Name from customer;  -- select specified column
 SELECT * FROM customer WHERE Name = "Ram"; -- Select specific row
 
 
 





