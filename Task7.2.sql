create database task_7
use task_7

--Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
create table Employees(
ID int,
Name varchar,
Salary decimal
)

--Add a new column named "Department" to the "Employees" table with data type varchar(50).
alter table Employees 
add Department varchar(50)

--Remove the "Salary" column from the "Employees" table.
alter table Employees 
drop column Salary

--Rename the "Department" column in the "Employees" table to "DeptName".
exec sp_rename 'Employees.Department', 'DeptName', 'column'

--Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
create table Projects(
ProjectID int,
ProjectName varchar
)

--Add a primary key constraint to the "Employees" table for the "ID" column.
alter table Employees
alter column ID int not null

alter table Employees
add primary key(ID)

--Add a unique constraint to the "Name" column in the "Employees" table.
alter table Employees
add unique(Name)

--Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
create table Customers(
CustomerID int,
FirstName varchar,
LastName varchar,
Email varchar,
Status varchar
)

--Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.
alter table Customers
add unique(FirstName)

alter table Customers
add unique(LastName)

--Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
create table Orders(
OrderID int,
CustomerID int,
OrderDate datetime,
TotalAmount decimal
)

--Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
alter table Orders
add constraint chk_TotalAmount
check(TotalAmount>0)

--Create a schema named "Sales" and move the "Orders" table into this schema.
go
create schema Sales
go

alter schema Sales
transfer Orders

--Rename the "Orders" table to "SalesOrders."
exec sp_rename 'Sales.Orders' , 'SalesOrders'