create table employee2;
use company;
create table employee2(
id int not null unique,
name varchar(50),
age int,
gender varchar (1),
phone varchar(10),
city varchar(15));
insert into employee2(id,name,age,gender,phone,city)
values(1,"Ram kumar",19,"M",4022155,"Agra");
insert into employee2(id,name,age,gender,phone,city)
values(2,"Sarita kumari",21,"F",4034421,"Delhi");
insert into employee2(id,name,age,gender,phone,city)
values(3,"Salman khan",20,"M",4056221,"Agra");
insert into employee2(id,name,age,gender,phone,city)
values(4,"Juhi chawla",18,"F",4089821,"Bhopal");
insert into employee2(id,name,age,gender,phone,city)
values(5,"Anil kapoor",22,"M",4025221,"Agra");
select * from employee2;
select * from employee2 where city="Agra";
select * from employee2 where city !="Agra";
select * from employee2 where age >= 18 and age <=21;
select * from employee2 where age >= 18 or age <=21;
select * from employee2 where age = 21 and gender="M";
select * from employee2 where city = "Agra" or city = "Bhopal";
select * from employee2 where city!="Agra" and city!="Bhopal";
select * from employee2 where NOT(city="Bhopal" or city="Agra");
select * from employee2 where age=18 or age=21;
select * from employee2 where age=18 or age=19 or age=20;
select * from employee2 where age IN(18,19,21);
select * from employee2 where city IN("Delhi","Bhopal");