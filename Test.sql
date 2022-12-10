create database company;

Drop database dbname;

use company;

create table employeeInfo(
ID int not null auto_increment primary key,
Emp_name varchar(30) not null,
Address varchar(255) not null,
city varchar(50) not null,
age int(10) not null, 
doj date not null,
Designation varchar(50) not null,
salary decimal(15,2) not null,
mobile varchar(10) not null);

select * from employeeInfo;

delete table tablename;

alter table employeeInfo
add email varchar(100);
select * from employeeInfo;

alter table employeeInfo
drop email;

insert into employeeInfo(Emp_name, Address, city, age, doj, Designation, salary, mobile)
values('sunil kumar', '101, street no.13','pune', 29, '2020-05-03', 'Manager', 42000, '9895886678');
insert into employeeInfo(Emp_name, Address, city, age, doj, Designation, salary, mobile)
values('kumar', '101, street no.13','pune', 39, '2020-05-03', 'Manager-M1-A', 45000, '9895886675');

select Emp_name, mobile, city from employeeInfo;

select Emp_name, mobile, city from employeeInfo
where Designation = 'Manager';

select Emp_name, mobile, city from employeeInfo
where salary>40000;

update employeeInfo
set Address = 'datta nagar'
where ID=2;

update employeeInfo
set mobile = '7745846460'
where ID=2;
select * from employeeInfo;

update employeeInfo
set Emp_name = 'Lakhan Gandi'
where ID=2;

update employeeInfo
set salary = 80000
where ID=2;
insert into employeeInfo(Emp_name, Address, city, age, doj, Designation, salary, mobile)
values('Ravi Nagpure', 'P79, street no.15','Shirwal', 32, '2020-05-03', 'Manager', 47000, '9822556689');

delete from employeeInfo
where ID=3;

select ID, Emp_name from employeeInfo
where Designation = 'Manager' and Age>25;

select ID, Emp_name from employeeInfo
where Designation = 'Manager' and city='shirwal';

select * from employeeInfo
where Emp_name like '%e';

select * from employeeInfo
where Emp_name like 'l%';

select * from EmployeeInfo
order by Emp_name desc; 

select * from EmployeeInfo
order by Emp_name; 

select count(Emp_name) from Employeeinfo;

select sum(salary) from Employeeinfo;

select avg(salary) from Employeeinfo;

select Emp_name, MIN(salary) as lowestsalary from employeeinfo;

select Emp_name, max(salary) as highestsalary from employeeinfo;

select * from employeeinfo;

select count(designation), sum(salary), designation from employeeinfo 
group by designation;

insert into employeebackup
select * from employeeinfo;

create table employeeBackup(
ID int not null auto_increment primary key,
Emp_name varchar(30) not null,
Address varchar(255) not null,
city varchar(50) not null,
age int not null, 
doj date not null,
Designation varchar(50) not null,
salary decimal(15,2) not null,
mobile varchar(10) not null)

select * from employeebackup;

insert into employee123
select * from employeeinfo;

create table employee123(
ID int not null auto_increment primary key,
Emp_name varchar(30) not null,
Address varchar(255) not null,
city varchar(50) not null,
age int not null, 
doj date not null,
Designation varchar(50) not null,
salary decimal(15,2) not null,
mobile varchar(10) not null);