use library;

create table student5(student_id int primary key,name varchar(20)); 
insert into student5(student_id,name)
value(101,"adam"),
	 (102,"bob"),
     (103,"casey");
select * from student5;

create table courses(student_id int primary key,course varchar(20));
insert into courses(student_id,course)
value(102,"english"),
     (103,"math"),
     (105,"science"),
     (107,"com.science");
select * from courses;
drop table studentI;
drop table studentII;  
  
  ###---JOINS---###
  
  select student5.student_id,name,course from student5
  inner join courses on student5.student_id=courses.student_id;
  
  select s.student_id,name,course from student5 s
  inner join courses c on s.student_id=c.student_id;
  
select s.student_id,name,course from student5 s
left join courses c on s.student_id=c.student_id;
  
select s.student_id,name,course from student5 s
right join courses c on s.student_id=c.student_id;

use company;

create table employee3(emp_id int primary key,emp_name varchar(20),dep_id int,salary int);
insert into employee3(emp_id,emp_name,dep_id,salary)
values(1,"Alice",101,6000),
	  (2,"Bob",102,7000),
      (3,"Charlie",103,8000),
      (4,"David",101,7500),
      (5,"Eve",102,8500);
select * from employee3;

create table department(dept_id int primary key,dept_name varchar(20));
insert into department(dept_id,dept_name)
value(101,"HR"),(102,"Sales"),(103,"IT"),(104,"Marketing");
select *  from department;

create table project1(project_id int primary key,project_name varchar(20),dept_id int);
insert into project1(project_id,project_name,dept_id)
values(1,"project A",101),
      (2,"project B",102),
      (3,"project C",103),
      (4,"project D",104);
select * from project1;

### 1. Retrieve the employee name and department name for each employee:-
select employee3.emp_name,department.dept_name from employee3 
inner join department on employee3.dep_id=department.dept_id;

### 2. Find all employees who work in 'sales' department:-
select e.emp_id,e.emp_name,e.salary,d.dept_name from employee3 e
join department d on e.dep_id=d.dept_id 
where dept_name='sales';

### 3. List the projecct names along with the department name:-
select d.dept_name,p.project_name from department d
join project1 p on d.dept_id=p.dept_id;

### 4. Find the employee(name) who have salary greater than 7500 and who are working on a project in 'IT' department:-
select e.emp_name from employee3 e
join department d on e.dep_id=d.dept_id
where dept_name='IT'
and salary > 7500;

### 5. Find the number of employees in each department:-
select dept_name, count(emp_id) as "Total number of employee" from employee3 e 
join department d on e.dep_id=d.dept_id group by dept_name;

### 6. Get total salary of each department:-
select dept_name,sum(salary) as "Total salary" from employee3 e
join department d on e.dep_id=d.dept_id group by dept_name;