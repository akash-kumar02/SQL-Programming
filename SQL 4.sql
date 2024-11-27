create table student3(
id int not null unique,
name varchar(50),
age int,
gender varchar (1),
phone varchar(10),
city varchar(15));

insert into student3(id,name,age,gender,phone,city)
values(1,"akash ",19,"M",4022155,"Agra");

insert into student3(id,name,age,gender,phone,city)
values(2,"ayush",21,"F",4034421,"Delhi");

insert into student3(id,name,age,gender,phone,city)
values(3,"nihal",20,"M",4056221,"Agra");

insert into student3(id,name,age,gender,phone,city)
values(4,"ajay",18,"F",4089821,"Bhopal");

insert into student3(id,name,age,gender,phone,city)
values(5,"vivek",22,"M",4025221,"Agra");

select * from student3;

set sql_safe_updates=0;

update student3 
set phone=4022156 where id=1;

select * from student3;

update student3
set age=20 where id=1;
select * from student3;

update student3
set age=23 where id IN(2,3);
select * from student3;

update student3
set age=19;
select * from student3;

update student3
set phone=4056222,city="Noida" where id=3;
select * from student3;

delete from student3 where id=1;
select * from student3;

delete from student3 where gender="F";
select * from student3;

delete from student3;
select * from student3;

insert into student3(id,name,age,gender,phone,city)
values(1,"Ram kumar",19,"M",4022155,"Agra");
insert into student3(id,name,age,gender,phone,city)
values(2,"Sarita kumari",21,"F",4034421,"Delhi");
insert into student3(id,name,age,gender,phone,city)
values(3,"Salman khan",20,"M",4056221,"Agra");
insert into student3(id,name,age,gender,phone,city)
values(4,"Juhi chawla",18,"F",4089821,"Bhopal");
insert into student3(id,name,age,gender,phone,city)
values(5,"Anil kapoor",22,"M",4025221,"Agra");
select * from student3;

truncate table student3;
select * from student3;

drop table student3;

create table student4(
id int not null unique,
name varchar(50),
age int,
gender varchar (1),
phone varchar(10),
city varchar(15));

insert into student4(id,name,age,gender,phone,city)
values(1,"akash ",19,"M",4022155,"Agra");

insert into student4(id,name,age,gender,phone,city)
values(2,"antim",21,"F",4034421,"Delhi");

insert into student4(id,name,age,gender,phone,city)
values(3,"nihal",20,"M",4056221,"Agra");

insert into student4(id,name,age,gender,phone,city)
values(4,"ayushi",18,"F",4089821,"Bhopal");

insert into student4(id,name,age,gender,phone,city)
values(5,"vivek",22,"M",4025221,"Agra");

select * from student4;

select * from student4 where age between 18 and 21;
select * from student4 where not age between 19 and 22; 
select * from student4 where id between 2 and 5;
select * from student4 where name between "a" and "k";
 
select * from student4 where name like 'a%'; 
select * from student4 where name like '%h';
select * from student4 where name like '%as%';
select * from student4 where name like 'n%l';
select * from student4 where name like '_k%';
select * from student4 where phone like '%1';
select * from student4 where not name like 'a%'; 
select * from student4 where  not city like 'A%';
select * from student4 where name regexp 'ra';
select * from student4 where name regexp '^ra';
select * from student4 where name regexp 'ay$';
select rand()*100;

#--STRING FUNCTIONS--#

select id, upper(name) as name from student4;

select id, ucase(name) as name from student4;

select id, lcase(name) as name from student4;

select id, lower(name) as name from student4;

select id, name, character_length(name) as length from student4;

select id, name, char_length(name) as length from student4;

select id, name, length(name) as length from student4;

select id, city, length(city) as length from student4;

select concat(name,age) as student from student4;

select concat(name," ",age) as student from student4;

select concat("NAME " ,name,"  AGE ",age) as student from student4;

select id, ucase(name) as name , concat(name," ",age) as "NAMME & AGE" from student4;

select concat("Akash","-","kumar") as name;

select concat("Akash","-",19) as name;

select concat(ucase("Akash"),"-",19) as name;

select concat_ws("-","Akash","kumar","hello","class") as name;

select "          Akash kumar          " as name;
select LTRIM ("       Akash kumar        ") as name;
select RTRIM ("       Akash kumar        ") as name;
select TRIM("        Akash kumar         ") as name;
select position("world" in "hello world") as position;
select position("o" in "hello world") as position;
select instr ("hello world","ell") as position;
select locate ("ell","hello world") as position;
select locate ("l","hello world") as position;
select locate ("l","hello world",3) as position;
select locate ("l","hello world",5) as position;
select locate ("l","hello world",7) as position;
select locate ("w","hello world",4) as position;
select substring("Akash kumar",3);
select substring("Akash kumar",5);
select substring("Akash kumar",7);
select substring("Akash kumar",3,6);
select substring("Akash kumar",-7,3);
select substring("Akash kumar",-8,4);
select mid("Akashkumar",-6,4);
select substring_index("www.Akashkumar.net",".",1);
select substring_index("www.Akashkumar.net",".",2);
select substring_index("www.Akashkumar.net","h",1);
select left("Akash kumar",3);
select right("Akash kumar",3);
select rpad("Akash kumar",20,"-");
select lpad("Akash kumar",20,"*");
select reverse("Akash kumar");
select replace("Akash kumar","Akash","kumar");
select replace("Akash kumar Akash kumar","kumar","kutba");
select strcmp("Akash kumar","akash kumar");
select strcmp("Akash kumar","Akash");
#[left string is greater than right string]
select strcmp("Akash","Akash kumar");
#[left string is smaller than right string] 
select strcmp("akash kumar","akash kumar");

select field ("a","X","a","K");
select field ("a","X","A","k");
select field (5,0,1,2,3,4,5);
select field ("ram","Ram","Mohan","Shyam");
select field (1,0,2,3,4);
select find_in_set("Mohan","Ram,Mohan,Shyam");
select hex ("Akash kumar");
select space(100);
select format(2345.9876,2);

#--DATE FUNCTIONS--#

select current_date();
select curdate();
select sysdate();
select now();
select date("2019-10-15 09:34:21");
select month("2019-10-15 09:34:21");
select monthname("2019-10-15 09:34:21");
select year("2019-10-15 09:34:21");
select quarter("2019-10-15 09:34:21");
select day("2019-10-15 09:34:21");

create table student(
name varchar(20),
DOB date,
age int);
insert into student(name,DOB,age)
value ("akash","2015-09-17",9),
("ajay","2013-09-17",11),
("anjali","2013-09-17",11);
select * from student; 

select name , DOB ,year(DOB) from student;

select dayname("2019-10-15 09:34:21");
select dayofmonth("2019-10-15 09:34:21");
select dayofweek("2019-10-15 09:34:21");
select dayofyear("2019-10-15 09:34:21");
select week("2019-10-15 09:34:21");
select weekday("2019-10-15 09:34:21");
select yearweek("2019-10-15 09:34:21");
select last_day("2019-10-15 09:34:21");
select extract(month from "2019-10-15 09:34:21");
select extract(year from "2019-10-15 09:34:21");
select extract(week from "2019-10-15 09:34:21");
select extract(day from "2019-10-15 09:34:21");
select extract(hour from "2019-10-15 09:34:21");
select extract(minute from "2019-10-15 09:34:21");
select extract(second from "2019-10-15 09:34:21");
select adddate("2019-10-15", interval 10 day);
select adddate("2019-10-15", interval 1 month);
select adddate("2019-10-15", interval 5000 minute);
select  makedate(2024,10);
select subdate("2019-10-15",interval 1 day);

#---TIME FUNCTION---#

select current_time();
select curtime();
select current_timestamp();
select localtime();
select localtimestamp();
select time ("2019-10-15 09:34:21");
select hour ("2019-10-15 09:34:21");
select minute("2019-10-15 09:34:21");
select timediff("05:23:10","09:34:21");

