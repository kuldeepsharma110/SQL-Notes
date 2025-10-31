use class;

select * from students;

create table marksheet(
student_id int,
subject varchar(50),
Marks float(2),
foreign key (Student_id) references students(student_id));

show tables;

insert into  students(student_id,student_name,student_no,student_address) values
(1,"arun","1234567890","Gorakhpur"),
(2,"anand","35487354","Noida"),
(3,"ram","276378647","Delhi"),
(4,"Shyam","64765453","Delhi");

select * from students;


-- fetch the data of students from student table which belogs to delhi

select * from students
where student_address = "Delhi";

-- operators
use world;

select * from country;



-- fetch population per unit area in each country
-- +(addition),-(subtraction),*(multiplication),/(division),%(reminder(modulo))
select name, (population/surfacearea) as unit_area_population  from country;

-- comparision operators and logical operators are used with where clause

-- fetch data of country where capital is less than 500
select count(name) from country 
where name in (select name from country
where capital <= 500);

-- count the number of countries where capital is less than 500
select name, capital from country
where capital <= 500;

select * from country;
