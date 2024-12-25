use company3;
create table employee0(emp_id int , name varchar(20),department varchar(20),salary int);
insert into employee0(emp_id,name,department,salary)
value(1,"John","HR",5000),
	 (2,"Alice","IT",7000),
     (3,"Bob","Finance",6000),
     (4,"Eve","IT",8000),
     (5,"Charlie","Finance",7500);
select * from employee0;  

create table department0(dept_id int , dept_name varchar(20));
insert into department0(dept_id,dept_name)
value(1,"HR"),(2,"IT"),(3,"Finance");
select * from department0;   

#1. Find employees with salaries greater than the average salary of all employees. 
select name,salary from employee0 where salary>(select avg(salary) from employee0);

#2. Find employees whose salary is higher than the salary of 'Alice'. 
select name,salary from employee0 where salary >(select salary from employee0 where name ="Alice");

#3. List employees who belong to a department that has the name 'IT'. 
select name,department from employee0 where department in (select dept_name from department0 where dept_name="IT");

#4. Get the names of employees who earn the highest salary in their department. 
select name,salary,department from employee0 where salary in (select salary from employee0 where department in
(select department from employee0 group by department having salary=max(salary)));

#5. Retrieve the departments where at least one employee earns more than 7000. 
select department,name,salary from employee0 where salary in (select salary from employee0 where salary>7000);

#6. List employees who do not belong to any department in the departments table. 
select name,department from employee0 where department in(select department from employee0 group by department having count(name) is null);

#7. Find the second-highest salary among employees. 
select name,salary from employee0 where salary= (select salary from employee0 order by salary desc limit 1,1);

#8. Retrieve the names of employees who work in the department with the highest number of employees. 
select name ,  department from employee0 where department in  (select department from employee0 group by department having count(*) = 
( select count(*) from employee0 group by department order by count(*) desc limit 1));

#9. Find employees who earn more than the average salary in their department. 
select name,salary from employee0 where department in (select department from employee0 group by department having salary>avg(salary));

#10. Retrieve employees whose salary is above 7000 and belong to departments in the departments table. 
select name ,salary from employee0 where department in (select dept_name from department0 where dept_name in(select department from employee0 where salary>7000));

#11. List all departments that have no employees. 
select dept_name from department0 where dept_name in (select department from employee0 where name is null);

#12. Find employees who have the same salary as another employee in a different department. 
select salary,department from employee0 where salary in
(select a.salary from employee0 a join employee0  b on a.salary=b.salary where a.department!= b.department);

#13. Get the total salary of the department with the maximum total salary. 
select sum(salary) from employee0 where department =(select department from employee0 group by department order by sum(salary) desc limit 1);

#14. Retrieve employees whose department has more than two employees. 
select name from employee0 where department in (select department from employee0 group by department having count(name)>2);

#15. Find employees whose salary is higher than the average salary of employees in the IT department. 
select name,salary from employee0 where salary > (select avg(salary) from employee0 where department="IT");