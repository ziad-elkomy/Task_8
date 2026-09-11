-- Data Manipulation Exercises


-- 1. Select all columns from the "employees" table.

select * from Sales.employees

-- 2. Retrieve only the "first_name" and "last_name" columns from the "employees" table.

select first_name, last_name from Sales.employees

-- 3. Retrieve "full name" as a one column from "first_name" and "last_name" columns from the "employees" table.

select first_name + ' ' + last_name as full_name from Sales.employees

-- 4. Show the average salary of all employees. (Use AVG() function)

select avg(salary) as average_salary from Sales.employees

-- 5. Select employees whose salary is greater than 50000

select * from Sales.employees
where salary>50000

-- 6. Retrieve employees hired in the year 2020

select * from Sales.employees
where hire_date like '2020%'

-- 7. List employees whose last names start with 'S'

select * from Sales.employees
where last_name like 'S%'

-- 8. Display the top 10 highest-paid employees

select top 10 * from Sales.employees
order by salary desc

-- 9. Find employees with salaries between 40000 and 60000.

select * from Sales.employees
where salary between 40000 and 60000

-- 10. Show employees with names containing the substring 'man'

select * from Sales.employees
where first_name like '%man%'

-- 11. Display employees with a NULL value in the "hire_date" column

select * from Sales.employees
where hire_date is null

-- 12. Select employees with a salary in the set (40000, 45000, 50000)

select * from Sales.employees
where salary in (40000 , 45000 , 50000)

-- 13. Retrieve employees hired between '2020-01-01' and '2021-01-01'

select * from Sales.employees
where hire_date between '2020-01-01' and '2021-01-01'

-- 14. List employees with salaries in descending order.

select * from Sales.employees
order by salary desc

-- 15. Show the first 5 employees ordered by "last_name" in ascending order

select top 5 * from Sales.employees
order by last_name

-- 16. Display employees with a salary greater than 55000 and hired in 2020.

select * from Sales.employees
where salary > 50000 and hire_date like '2020%'

-- 17. Select employees whose first name is 'John' or 'Jane'

select * from Sales.employees
where first_name = 'John' or first_name = 'Jane'

-- 18. List employees with a salary ≤ 55000 and a hire date after '2022-01-01'

select * from Sales.employees
where salary <= 55000 and hire_date > '2022-01-01'

-- 19. Retrieve employees with a salary greater than the average salary

select * from Sales.employees
where salary > ( select avg(salary) from Sales.employees)

-- 20. Display the 3rd to 7th highest-paid employees. (Use OFFSET and FETCH)

select * from Sales.employees
order by salary desc
offset 3 rows
fetch next 4 rows only

-- 21. List employees hired after '2021-01-01' in alphabetical order

select * from Sales.employees
where hire_date > '2021-01-01'
order by first_name

-- 22. Retrieve employees with a salary > 50000 and last name not starting with 'A'.

select * from Sales.employees
where salary > 50000 and last_name not like 'A%'

-- 23. Display employees with a salary that is not NULL.

select * from Sales.employees
where salary is not null

-- 24. Show employees with names containing 'e' or 'i' and a salary > 45000.

select * from Sales.employees
where salary > 45000 and (first_name like '%e%' or first_name like '%i%')
