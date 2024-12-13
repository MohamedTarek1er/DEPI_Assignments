
--Task 1: Using Date and Time Functions 
--Question: 
--Write a SQL query to retrieve all employees who were hired within the last 30 days from the 
--current date. 


SELECT  employee_id ,DATEADD(day, -30, GETDATE()) time
FROM employees
WHERE hire_date >= DATEADD(day, -30, GETDATE());

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

--Task 2: Creating and Using a Stored Procedure 
--Question: 
--Create a stored procedure named sp_get_employee_hours that retrieves the first name, last 
--name, and total hours worked on projects for a given employee ID. 


create procedure sp_get_employee_hours (in emp_id int)
begin

select e.employee_id, e.fname, e.lname, sum(w.hours) as total_hours
from employees e join works_on w on e.employee_id = w.employee_id

where e.employee_id = emp_id
group by e.employee_id

end;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

--Task 3: Creating a Stored Procedure for Employee Count by Department 
--Question: 
--Create a stored procedure named sp_department_employee_count that retrieves the 
--department ID, department name, and the number of employees in each department, but only for 
--departments with more than 5 employees. 


CREATE PROCEDURE sp_department_employee_count() 
begin

select d.department_id, d.department_name, count(e.employee_id) as ecount
from departments d join employees e on d.department_id = e.department_id

group by d.department_id
having count(e.employee_id) > 5;
end;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------