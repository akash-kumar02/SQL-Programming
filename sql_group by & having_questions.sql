SELECT * FROM company.ass_3;

use company;

### 1. Find the average salary of employees in each department:-
select department, avg(salary) from ass_3 group by department;

### 2. Find the total number of employees hired after 2019:-
select hire_date, count(hire_date)>2019 from ass_3 group by hire_date;