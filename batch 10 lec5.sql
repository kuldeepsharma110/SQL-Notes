CREATE DATABASE CompanyDB; 
USE CompanyDB; 
CREATE TABLE Employees ( emp_id INT PRIMARY KEY,
emp_name VARCHAR(50), 
department VARCHAR(30),
salary DECIMAL(10,2),
hire_date DATE );

 INSERT INTO Employees (emp_id, emp_name, department, salary, hire_date) VALUES (101,
 'Amit', 'Sales', 55000, '2020-04-12'), (102, 'Riya', 'HR', 60000, '2019-07-25'),
 (103, 'Vikram', 'IT', 75000, '2021-01-15'), (104, 'Neha', 'Sales', 52000,
 '2020-09-05'), (105, 'Rohit', 'IT', 82000, '2018-03-20'), (106, 'Sneha', 'Finance',
 67000, '2021-11-10'), (107, 'Karan', 'Marketing', 58000, '2019-05-30'), (108,
 'Pooja', 'HR', 61000, '2022-02-18'), (109, 'Arjun', 'IT', 77000, '2020-10-10'),
 (110, 'Divya', 'Finance', 72000, '2021-06-22'), (111, 'Rahul', 'Sales', 56000,
 '2019-12-15'), (112, 'Simran', 'Marketing', 64000, '2022-04-05'), (113, 'Deepak',
 'IT', 81000, '2020-03-25'), (114, 'Tanya', 'HR', 59000, '2021-07-19'), (115,
 'Manish', 'Finance', 73000, '2019-08-10'), (116, 'Isha', 'Sales', 50000,
 '2022-01-05'), (117, 'Harsh', 'Marketing', 69000, '2021-09-12'), (118, 'Meena',
 'Finance', 66000, '2020-02-17'), (119, 'Kunal', 'IT', 85000, '2018-11-09'), (120,
 'Priya', 'Sales', 53000, '2023-03-23'), (121, 'Nitin', 'Marketing', 62000,
 '2020-07-18'), (122, 'Sanya', 'Finance', 78000, '2019-09-25'), (123, 'Ramesh', 'IT',
 79000, '2021-05-10'), (124, 'Geeta', 'HR', 60500, '2018-04-07'), (125, 'Vivek',
 'Finance', 75000, '2023-01-20'), (126, 'Lavanya', 'Sales', 51500, '2020-06-13'),
 (127, 'Mohit', 'Marketing', 61000, '2021-08-08'), (128, 'Sonia', 'IT', 83000,
 '2022-10-11'), (129, 'Ankit', 'Sales', 54000, '2021-12-19'), (130, 'Kritika',
 'Finance', 77000, '2020-05-15');
 
 select * from employees;
 
  select * from employees
  where emp_name like "S%";
  
  select department, count(emp_id) as employe_count from employees 
  group by department;
 
 select count(distinct(department)) from employees;
 
 select department, count(emp_id) as employe_count from employees 
  group by department
  having count(emp_id)>4;