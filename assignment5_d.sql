-- 1. Basic SQL Queries:

--Write a SQL query to retrieve all columns from a table named employees. 

select * from employees 


--Write a SQL query to retrieve the emp_id, emp_name, and dept_id from the 
--employees table

select employee_id,first_name,department_id from employees 

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
--DISTINCT Keyword:

--Write a SQL query that displays distinct dept_id values from the employees 
--table. 

select distinct department_id from employees

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


--Data Definition Language (DDL): 

--Write a SQL query to create a table students with the following columns: ID 
--(Primary Key), First_Name (not null), Last_Name (default 'Unknown'), 
--Address (default 'N/A'), City (default 'N/A'), and Birth_Date. 


CREATE TABLE students (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) DEFAULT 'Unknown',
    Address VARCHAR(100) DEFAULT 'N/A',
    City VARCHAR(50) DEFAULT 'N/A',
    Birth_Date DATE
);

--Write a SQL query to drop the students table. 

drop table students

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


--Data Manipulation Language (DML): 

--Write a SQL query to insert the following values into the students table: 
--('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01'). 

INSERT INTO students (ID, First_Name, Last_Name, Address, City, Birth_Date)
VALUES (1, 'Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');


--Write a SQL query to update the Address of the student with Last_Name = 
--'Ahmed' to 'Garden City'.

UPDATE students
SET Address = 'Garden City'
WHERE Last_Name = 'Ahmed';


----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------

--Transaction Control: 

--Write a SQL query to delete the rows from the students table where City is 
--'Cairo', and then rollback the transaction.

begin TRANSACTION;
DELETE FROM students
WHERE City = 'Cairo';

ROLLBACK;
----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------