select  * from  customer c ;
select  * from city c  ;
select  * from country c ;
select  * from address a  ;
select  * from payment p ;
select * from staff s ;
select  * from film f  ;

--5. Which staff member had the most transactions?

select s.first_name, s.last_name, count(p.staff_id) as Tran_Count
from staff s 
inner join payment p on s.staff_id = p.staff_id 
group by p.staff_id, s.first_name, s.last_name
order by count(p.staff_id) desc limit 1;
	
--1. List all customers who live in Texas (use JOINs)

select c.first_name, c.last_name,a.district  
from customer c 
inner join address a 
on c.address_id = a.address_id
where a.district = 'Texas'; 

--2. Get all payments above $6.99 with the Customer's Full Name

select c.first_name ||' '|| c.last_name as full_name,p.amount 
from customer c ,
	 payment p 
where  c.customer_id  = p.customer_id 
and  p.amount > 6.99;

--3. Show all customers names who have made payments over $175(use subqueries)

 select  first_name, last_name
 from customer c 
 where customer_id  in (
 	select  customer_id  from payment p 
 	where  amount > 175 );
 
--4. List all customers that live in Nepal (use the city table)
 
 select c.first_name,c.last_name, c3.country 
 from customer c 
 inner join address a on a.address_id = c.address_id 
 inner join city c2 on a.city_id = c2.city_id 
 inner join country c3  on c3.country_id  = c2.country_id 
 where  c3.country  = 'Nepal'
 
--6. How many movies of each rating are there?
 
 select rating, count(rating)
 from film 
 group by rating 
 order by count(rating); 
 
--7.Show all customers who have made a single payment above $6.99 (Use Subqueries). 

select c.first_name,c.last_name
from customer c 
where c.customer_id in (
	select p.customer_id
	from payment p 
	where p.amount >6.99
	group by p.customer_id
	having count(p.customer_id)=1
	) 

 	
 	

