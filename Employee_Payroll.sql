------------UC1-------------
create database empPayroll;
select * from sys.databases;
use empPayroll;

------------UC2-------------
create table Employee_Payroll(
id int identity(1,1) primary key not null,
name varchar(25) not null,
salary float not null,
start_date date not null)

-------------UC3---------------
insert into Employee_Payroll values('Madhavi',15000,'10-10-1993');
insert into Employee_Payroll values('Pallavi',18000,'1994-11-29');
insert into Employee_Payroll values('Sonal',20000,'1994-09-18');
insert into Employee_Payroll values('Gayatri',12000,'1994-05-11');
insert into Employee_Payroll values('Pooja',17000,'1994-08-21');

-------------UC4---------------
select * from Employee_Payroll

-------------UC5---------------
select name,salary from Employee_Payroll where name = 'Madhavi'
select name,salary from Employee_Payroll where name = 'Sonal'
select * from Employee_Payroll where start_date between '10-10-1993' and CURRENT_TIMESTAMP 


