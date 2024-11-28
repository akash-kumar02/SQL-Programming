SELECT * FROM company.ass_3;

use company;

### 1. Find the average salary of employees in each department:-
select department, avg(salary) from ass_3 group by department;

### 2. Find the total number of employees hired after 2019:-
select count(*) from ass_3 where hire_date>"2019-12-31";

### 3. Query is to find total salary of each department and ordered them:-
Select distinct department , sum(salary) as "Total Salary" from ass_3 group by department order by sum(salary) ;

### 4. Query is to find the highest salary in the finance departemnt:-
Select max(salary) as "Highest_Salary" from ass_3 where department="Finance";

### 5. Query is to get highest paid employees:-
Select concat(first_name," ",last_name) AS Employee_Name, salary as "Highest_paid_employees" from ass_3  order by salary desc limit 3;

### 6. Query is to find department with min average salary:-
Select department ,avg(salary) from ass_3 group by department order by avg(salary) asc limit 1;

### 7. Query is to display total no of employees of each department ordered by employees:-
Select distinct department ,count(*) from ass_3 group by department order by count(*);

### 8. Query is to find average salary of employees who hired before 2020:-
Select avg(salary) as "Average salary of employees" from ass_3 where hire_date<"2020-01-01" ;

### 9. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first:-
Select concat(first_name," ",last_name) AS Employee_Name ,hire_date from  ass_3 where department = "IT" order by hire_date desc;

### 10. Query is to find sum of salaries of all employees hired after January 01 2019 and ordered them by their salary:-
Select  sum(salary) AS "Total Salary" from ass_3 where hire_date>"2019-01-01" order by salary;

### 11. Query is to get all the employees with the lowest salary in HR department:-
Select concat(first_name," ",last_name) AS Employee ,salary from ass_3 where department = "HR" order by salary limit 1;

### 12. Query is to find the total salary paid to employees of each department but limit the results and show top 2 highest paying departments :-
Select department, sum(salary) as "Total salary" from ass_3 group by department order by sum(salary) desc limit 2;

### 13. Query is to show all employees hired after 2018, ordered by salary and show only first 4 :-
Select concat(first_name,"* ",last_name) AS Employee, salary from ass_3 where hire_date>2018-12-31 order by salary limit 4;

### 14. Query is to find the highest salary in the IT department, but limit the results to the top 1 result:-
Select department, max(salary) as "Highest Salary" from ass_3 where department="IT";

### 15. Query is to get the average salary of employees in each department and list only department with an avg salary greater than 60000:-
Select department, avg(salary) as "Average salary" from ass_3 group by department having avg(salary)>60000;
