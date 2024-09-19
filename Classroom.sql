use practice;

CREATE TABLE classroom 
(
    RollNo INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Division CHAR(1) NOT NULL,
    Marks INT NOT NULL
);

-- Inserting 8 rows as requested
INSERT INTO classroom (RollNo, Name, Division, Marks) VALUES
(1, 'John', 'A', 85),
(2, 'Alice', 'B', 92),
(3, 'Bob', 'C', 78),
(4, 'Eva', 'A', 95),
(5, 'Charlie', 'B', 88),
(6, 'Sophie', 'C', 75),
(7, 'David', 'A', 90),
(8, 'Emma', 'B', 87);


Select *from classroom;

Select *from classroom Where Marks>70; -- Operators:- =,>,<,<=,>=,
Select *from classroom Where Marks Between 70 AND 90;


-- OR Statement 
Select  *from classroom where Name='David'OR Division='A' OR Marks= 88;

-- Reduce OR Statement
Select  *from classroom where Name='David'OR Name='Eva'OR Name='Emma';

-- Better Way
Select  *from classroom where Name IN ('David','Eva','Emma');

-- NOT Clause
Select  *from classroom where Name NOT IN ('David','Eva','Emma');

-- Sorting using Order BY
Select *from classroom order By Marks; -- BY Default Ascending Order
Select *from classroom order By Marks Desc;
Select Distinct Division from classroom; -- Select Distinct value

-- Grouping by Aggregation Function using Group By
Select Division, Count(Division) from classroom Group By Division;
Select Division, Avg(Marks) from classroom Group By Division;
Select Division, MIN(Marks) from classroom Group By Division;
Select Division, MAX(Marks) from classroom Group By Division;
Select Division, SUM(Marks) from classroom Group By Division;

-- Group By Having

Select Division, Count(Division) from classroom Group By Division HAVING Count(Division)>2;

