---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

--Task 1: Creating a Simple View 
--Question: 
--Create a simple view named vw_employee_details that displays the first name, last name, and 
--department name of employees.


create view vw_employee_details as 

select e.first_name,e.last_name,d.department_name from employees e , departments d
where e.department_id=d.department_id


---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------


--Task 2: Modifying a View 
--Question: 
--Modify the existing view vw_work_hrs to only include employees working in department 
--number 5.


create or alter view vw_work_hrs as

select e.first_name,e.last_name,e.department_id,w.project_name, w.project_hours from employees e , works_on w
where e.department_id=5 and w.employee_id=e.employee_id

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

--Task 3: Creating Views with Check Option 
--Question: 
--Create a view named vw_high_status_suppliers to display all suppliers with a status greater 
--than 15, and ensure that any updates or inserts through the view still meet the status condition.


create or alter view vw_high_status_suppliers as
select *
from suppliers
where status > 15
with check option;

---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------