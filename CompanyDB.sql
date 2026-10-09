create database CompanyDB;
show databases;
use CompanyDB;

Create table Employees(
EmpId int primary key,
EmpName varchar(10),
Salary int, 
JoinDate int);

Create table Departments(
DepId int primary key,
DepName varchar(10));

desc Employees;
desc Departments;
alter table Employees add column Email Varchar(100);
alter table Departments add column dept_location varchar(10);

alter table Departments
add column Phone varchar(15) NOT NULL;

alter table Employees modify EmpName varchar(100);

alter table Departments
drop primary key;

alter table Departments
add primary key(DepId);

alter table Employees
add column DepId int;

alter table Employees     # it needed the both table has to same column to join the table 
add constraint fk_Dept
Foreign key(DepId)
references Departments(DepId);

alter table Departments
drop column Phone;

rename table Employees to EmployeeDetails;
desc EmployeeDetails;

alter table EmployeeDetails
drop foreign key fk_Dept;
Drop table Departments;

drop database CompanyDB;
 