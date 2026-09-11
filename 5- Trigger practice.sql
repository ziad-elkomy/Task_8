--Trigger practice

-- 1. Create a table EmployeeLog(Id, EmployeeId, Action, ActionDate)

create table EmployeeLog(
id int identity primary key,
employee_id int not null,
[action] varchar(50),
action_date datetime2 default getdate()
)

-- 2. Create a table EmployeeLog(Id, EmployeeId, Action, ActionDate). create AFTER INSERT Trigger which Automatically log when a new employee is added.

go
create trigger emp_trigger
on Sales.employees
after insert
as begin
insert into EmployeeLog(employee_id, [action]) 
select i.employee_id , 'Employee with '+ cast(i.employee_id as varchar(10)) +'added'
from inserted i
end
go

insert into Sales.employees(first_name , last_name , salary , hire_date) values('Ahmed' , 'mahmoud' , 40404 , '2022-03-03')