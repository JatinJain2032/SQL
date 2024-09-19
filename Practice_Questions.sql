# Create computer table used for JOINS problem.
CREATE TABLE COMPUTER (
COMPID INT  PRIMARY KEY,
BRAND VARCHAR(50),
COMPMODEL VARCHAR(50),
MANUFACTUREDATE DATE);

# Insert data into COMPUTER table
INSERT INTO COMPUTER VALUES (1001, 'Lenovo', 'T480', '2019-06-12');
INSERT INTO COMPUTER VALUES (1002, 'Lenovo', 'T490', '2020-08-24');
INSERT INTO COMPUTER VALUES (1003, 'SONY', 'SQ112', '2019-12-01');
INSERT INTO COMPUTER VALUES (1004, 'SONY', 'SX1001', '2020-12-21');

CREATE TABLE EMPLOYEE1 (
EMPID INT  PRIMARY KEY,
FIRSTNAME VARCHAR(50),
LASTNAME VARCHAR(50),
SALARY int ,
EMAILID VARCHAR (50),
MANAGERID INT ,
DATEOFJOINING DATE,
DEPT VARCHAR (10),
COMPID INT ,
CONSTRAINT FK_COMPID FOREIGN KEY (COMPID) REFERENCES COMPUTER(COMPID));

INSERT INTO EMPLOYEE1 VALUES (1, 'NANDA', 'KUMAR', 50000, 'NANDA@GMAIL.COM', NULL, '2012-06-15', 'IT', 1001);

INSERT INTO EMPLOYEE1 VALUES (2, 'BIPLAB', 'PARIDA', 30000, 'BPARIDA@YAHOO.COM', 1, '2015-12-21', 'IT', 1001);

INSERT INTO EMPLOYEE1 VALUES (3, 'DISHA', 'PATEL', 50000, 'DISHAP@GMAIL.COM', NULL, '2013-08-21', 'HR', NULL);

INSERT INTO EMPLOYEE1 VALUES (4, 'SIBA', 'PRASAD', 90000, 'SIBA@GMAIL.COM', 3, '2020-06-01', 'HR', 1002);

INSERT INTO EMPLOYEE1 VALUES (5, 'ANUSHKA', 'SHARMA', 20000, 'SHARMAA@GMAIL.COM', 1, '2021-03-01', 'IT', NULL);

INSERT INTO EMPLOYEE1 VALUES (6, 'SOMNATH', 'MAHARANA', 65000, 'SMAHA@GMAIL.COM', 3, '2019-05-07', 'IT', 1003);

select *from employee1;
-- 1. SQL Query to update DateOfJoining to 15-7-2012 for empid =1.
update Employee1 set Dateofjoining ='2012-07-15' where EMPID=1; 

-- 2. SQL Query to Find all employee with Salary between 40000 and 80000?
select *from employee1 where salary between 40000 and 70000;
-- OR
SELECT * FROM EMPLOYEE1 WHERE SALARY >=40000 AND SALARY <=80000;

-- 3. SQL Query to display full name?
select concat(firstname, lastname) from employee1;

-- 4. SQL Query to find name of employee beginning with S and ending with A?
select *from employee1 where firstname like 'S%';
select *from employee1 where firstname like '%A';

-- 5. Write a query to fetch details of employees whose firstname ends with an alphabet ‘A’
-- and contains exactly five alphabets ?
select *from employee1 where firstname like '____A';

-- Name start with N and ends with A having Exactly 5 alphabets
select *from employee1 where firstname like 'N___A';

-- 6. Write a query to fetch details of all employees excluding few Employees :
 select *from employee1 where firstname NOT IN ('Biplab', 'Disha');

-- 7 SQL query to display the current date ?
 SELECT SYSDATE(), CURRENT_DATE(), CURRENT_TIMESTAMP();

 -- 8. 