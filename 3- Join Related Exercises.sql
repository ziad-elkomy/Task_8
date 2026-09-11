-- JOIN-RELATED EXERCISES

-- 1. Create a new table named "departments" with columns:department_id (Primary Key, INT), department_name (VARCHAR), manager_id (INT, references "employees".employee_id)

create table departments(
department_id int identity primary key,
department_name varchar(50),
manager_id int references Sales.employees(employee_id)
)

-- 2. Assign each employee to a department by creating a "department_id" column in "employees" and making it a foreign key referencing "departments".department_id.

alter table Sales.employees
add department_id int references departments(department_id)

-- 3. Retrieve all employees with their department names (Use INNER JOIN)

select e.* , d.department_name
from Sales.employees as e inner join departments as d
on e.department_id = d.department_id

-- 4. Retrieve employees who don’t belong to any department (Use LEFT JOIN and check for NULL).

select e.* , d.department_name
from Sales.employees as e left join departments as d
on e.department_id = d.department_id

-- 5. Show all departments and their employee count (Use JOIN and GROUP BY).

select d.* , e.no_employees
from departments as d inner join (select count(*) as no_employees , e.department_id as dept_id from Sales.employees as e join departments as d on d.department_id = e.department_id group by e.department_id) as e
on d.department_id = e.dept_id
order by department_id

-- 6. Retrieve the highest-paid employee in each department (Use JOIN and MAX(salary)).

select d.* , e.maximum_salary
from departments as d inner join (select max(e.salary) as maximum_salary , d.department_id as dept_id from departments as d join Sales.employees as e on e.department_id = d.department_id group by d.department_id) as e
on e.dept_id = d.department_id
order by maximum_salary