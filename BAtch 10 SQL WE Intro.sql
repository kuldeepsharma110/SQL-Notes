create database class;

use class;

create table student(
id int primary key,
name varchar(50));


select * from student; 

insert into student (id,name) values(
1,"Arun"),
(2,"Anand"),
(3,"Shyam");

select * from student; 

insert into student (id,name) values
(3,"Shyam");


create Database sample_db;

drop database sample_db;

create Database if not exists sample_db;

drop database if exists sample_db;  -- to drop database if exists


use sakila;

show tables; -- to check the tables in the database


use class;

drop table student;

show tables;

create table marksheet (
student_id int , 
subject varchar(50),
marks float(2),
foreign key (student_id) references students(student_id));

create table students(
student_id int primary key,
student_name varchar(100),
student_no int,
student_address varchar(100));

drop table marksheet;


insert into marksheet(student_id,subject,marks) values
(1,"Math",50),
(1,"English",45)
(1,"Hindi",48)
(1,"EVS",40);





