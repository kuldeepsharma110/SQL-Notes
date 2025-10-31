use companydb;

select * from employees;

-- Display employees who earn above the average salary of their department.
-- select emp_id, department, salary 
-- from employees 
-- where salary > (select avg(salary) from employees);
select avg(salary) from employees;
select emp_id,emp_name,salary from employees
where salary > (select avg(salary) from employees);

select department,avg(salary) from employees
where department = "Sales"
group by department;

-- Table related queries

-- we use update query to update our data based on certain condition
use class;
select * from students;

set SQL_SAFE_UPDATES=0;

update students
set student_address = "DL"
where student_address ="Delhi";

update students
set student_address = "Gk"
where student_name ="arun";

-- delete It will remove the row from the table based on certain condition

delete from students
where student_address ="Noida";

-- to know details about table
use sakila;

show tables;

describe country;

select * from country;

-- alter (it is used to chnage the schema design)
-- add column
use class;
alter table students
add column polution_level varchar(10) ;

select * from students;
-- drop cloumn
alter table students
drop column polution_level;
-- change table name
alter table students
rename to student_info;
-- rename column
alter table student_info
rename column student_address to std_add;

alter table student_info
change column student_no std_no int;
-- modify column datatype or constraint
alter table student_info
modify student_no varchar(15);

describe student_info;



select * from student_info;



