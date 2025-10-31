use sakila;
show tables;
select * from actor;

select actor_id,first_name from actor ;

select * from rental;

select distinct(staff_id) from rental; -- distinct will help you fetch unique values in the column

select * from rental
where staff_id = 1;  -- where clause is used to filter the data as per given expression


select * from customer_list;

select name,phone from customer_list
where country = "India";

select * from payment;

select * from payment
where amount >= 1; 