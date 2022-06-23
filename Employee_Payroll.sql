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
insert into Employee_Payroll values('Amit',25000,'1993-11-25','M');
insert into Employee_Payroll values('Vishal',22000,'1991-10-23','M');


-------------UC4---------------
select * from Employee_Payroll

-------------UC5---------------
select name,salary from Employee_Payroll where name = 'Madhavi'
select name,salary from Employee_Payroll where name = 'Sonal'
select * from Employee_Payroll where start_date between '1994-05-11' and CURRENT_TIMESTAMP 

-------------UC6---------------
alter table Employee_Payroll add gender varchar(10) null
update Employee_Payroll set gender = 'F' where name= 'Madhavi'
update Employee_Payroll set gender = 'F' where name= 'Pallavi'
update Employee_Payroll set gender = 'F' where name= 'Sonal'
update Employee_Payroll set gender = 'F' where name= 'Gayatri'
update Employee_Payroll set gender = 'F' where name= 'Pooja'

--------------UC7---------------
select gender, sum(salary) as sum_salary from Employee_Payroll group by gender
select gender, min(salary) as min_salary from Employee_Payroll group by gender
select gender, max(salary) as max_salary from Employee_Payroll group by gender
select gender, avg(salary) as avg_salary from Employee_Payroll group by gender
select gender, count(salary) as emp_count from Employee_Payroll group by gender

--------------UC8----------------
alter table Employee_Payroll add mobile decimal not null default(0)
update Employee_Payroll set mobile = 9873636362 where name = 'Madhavi'
update Employee_Payroll set mobile = 9879127663 where name = 'Pallavi'
update Employee_Payroll set mobile = 9074664656 where name = 'Sonal'
update Employee_Payroll set mobile = 9764678398 where name = 'Gayatri'
update Employee_Payroll set mobile = 8963567656 where name = 'Pooja'
update Employee_Payroll set mobile = 9987565657 where name = 'Amit'
update Employee_Payroll set mobile = 9683866564 where name = 'Vishal'

alter table Employee_Payroll add address varchar(100) not null default(''),department varchar(50) not null default('')
update Employee_Payroll set address = 'Baramati',department = 'Production' where name = 'Madhavi'
update Employee_Payroll set address = 'Phaltan',department = 'Tech_Support' where name = 'Pallavi'
update Employee_Payroll set address = 'Pune',department = 'Production' where name = 'Sonal'
update Employee_Payroll set address = 'Mumbai',department = 'Admin' where name = 'Gayatri'
update Employee_Payroll set address = 'Nagpur',department = 'Production' where name = 'Pooja'
update Employee_Payroll set address = 'Sangavi',department = 'NonIT_Support' where name = 'Amit'
update Employee_Payroll set address = 'Nashik',department = 'IT_Support' where name = 'Vishal'

--------------UC9--------------
alter table Employee_Payroll add basic_pay float not null default(0),deductions float not null default(0),
taxable_pay float not null default(0), net_pay float not null default(0)
update Employee_Payroll set basic_pay = 10000,deductions = 200,taxable_pay = 200,net_pay = 9400 where id = 1
update Employee_Payroll set basic_pay = 12000,deductions = 200,taxable_pay = 200,net_pay = 8200 where id = 3
update Employee_Payroll set basic_pay = 14000,deductions = 200,taxable_pay = 200,net_pay = 8000 where id = 14
update Employee_Payroll set basic_pay = 16000,deductions = 200,taxable_pay = 200,net_pay = 9000 where id = 15
update Employee_Payroll set basic_pay = 18000,deductions = 200,taxable_pay = 200,net_pay = 7500 where id = 16
update Employee_Payroll set basic_pay = 13000,deductions = 200,taxable_pay = 200,net_pay = 7000 where id = 17
update Employee_Payroll set basic_pay = 15000,deductions = 200,taxable_pay = 200,net_pay = 6600 where id = 18
update Employee_Payroll set basic_pay = 11000,deductions = 200,taxable_pay = 200,net_pay = 6200 where id = 19

------------UC10 and UC11----------
insert into Employee_Payroll values('Sagar',15000,'2021-01-01','M',9876543210,'Pune','Sales',15000,200,200,14600)
update Employee_Payroll set name = 'Sagarika' where ID = 20
update Employee_Payroll set department = 'Sales&Market' where name = 'Sagarika'
insert into Employee_Payroll values('Sagarika',15000,'2021-01-01','F',9876543210,'Chennai','Marketing',15000,200,200,14600)
