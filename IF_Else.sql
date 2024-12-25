SELECT * FROM studio.employee;

###-- IF_ELSE --###

 ### 1. write a query to cal a 10% bonus IF the salary is greater than or equal to 60000. otherwise ,calculate a 5% bonus .display emp_id and the calculated bonus.
 select emp_id,name , if (salary>=60000,salary*0.1,salary*0.5)  as bonus from employee;
 
 ### 2. write a query to classify emplouee as "Experienced" if their  joining year is before 2020 and "Newcomer" otherwise. display  emp_id,name and the category.
 select emp_id ,name ,if(joining_year<2020,"Experienced","Newcomer") as Experience from employee;
 
 ### 3. write a query to display emp_id , name and a status of "High Earner" or "Average Earner" for employee in the IT department ,depending on whether their salary exceeds 75000.
 select emp_id,name , if(salary>75000,"High Earner","Average Earner") as status from employee where department = "IT";
 
 ### 4. 
 select emp_id , name ,if (salary>70000,"Eligible","Not Eligible") as status from employee where department = "IT";
 
### 5.
select emp_id , if (emp_id%2=0,"Even","Odd") as "Even or Odd" from employee;

### 6. 
select joining_year,if(joining_year%4=0,"leap year","not a leap year") as year from employee;