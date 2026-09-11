-- 1.Create a new database named "CompanyDB."

create database CompanyDB
use CompanyDB

-- 2.Create a schema named "Sales" within the "CompanyDB" database.

go
create schema Sales
go

-- 3.Create a table named "employees" with columns: employee_id (INT) - use sequence instead of identity, first_name (VARCHAR), last_name (VARCHAR), salary (DECIMAL) Within the "Sales" schema.

create sequence emp_id_seq
start with 1
increment by 1

create table Sales.employees(
employee_id int primary key default (next value for emp_id_seq),
first_name varchar(20),
last_name varchar(20),
salary decimal
)

-- 4. Alter the "employees" table to add a new column named "hire_date" with the data type DATE.

alter table Sales.employees
add hire_date Date

-- 5. Add mock data to this table using Mockaroo

-- Execute file Mock_Employees.sql
