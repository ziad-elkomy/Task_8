-- Stored Procedure Exercises

-- 1. Create a stored procedure named GetAllEmployees that selects all rows from Employees.
go
create procedure GetAllEmployees
as begin
select * from Sales.employees
end

exec GetAllEmployees

-- 2. Create a stored procedure named GetAllEmployees that selects all rows from Employees

go
create procedure GetHighSalaryEmployees(@MinSalary decimal)
as begin
select * from Sales.employees
where salary > @MinSalary
end

exec GetHighSalaryEmployees 50000

-- 3. Create AddEmployee SP with @FirstName, @LastName, @Salary which Insert a new row into Employees

go
create procedure AddEmployee(@FirstName varchar(20) , @LastName varchar(20) , @Salary decimal)
as begin
insert into Sales.employees(first_name , last_name , salary) values(@FirstName , @LastName , @Salary)
end


exec AddEmployee 'Ahmed' , 'Mahmoud' , 40000