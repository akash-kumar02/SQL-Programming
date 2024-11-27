create database studio;

use studio;

create table employees(
id int not null unique,
name varchar(100),
position varchar(100),
salary decimal(10,2),
date_of_joining date);

insert into employees(id,name,position,salary,date_of_joining)
values(1,"John Doe","Manager",55000.00,"2020-01-15");

insert into employees(id,name,position,salary,date_of_joining)
values(2,"Jane Smith","Developer",48000.00,"2019-07-10");

insert into employees(id,name,position,salary,date_of_joining)
values(3,"Alice Johnson","Designer",45000.00,"2021-03-22");

insert into employees(id,name,position,salary,date_of_joining)
values(4,"Bob Brown","Developer",50000.00,"2018-11-01");

select * from employees;

select * from employees where position="Developer";

set sql_safe_updates=0;
update employees
set salary=46000.00 where name="Alice Johnson";
select * from employees;

delete from employees where name="Bob Brown";
select * from employees;

select * from employees where salary >48000.00;

alter table employees
add email varchar(50);
select * from employees;

set sql_safe_updates=0;
update employees
set email = "john.doe@gmail.com" where name="John Doe";
select * from employees;

alter table employees drop column emai;
select * from employees;

select name , salary from employees;

select count(*) from employees where date_of_joining>2021-01-01;

select * from employees order by salary desc;

alter table employees drop column email;
select * from employees;

select * from employees order by salary desc Limit 1;