--1. How many actors are there with the last name ‘Wahlberg’?
select count(last_name) from actor 
where last_name = 'Wahlberg'; 

--2. How many payments were made between $3.99 and $5.99?
select  count(payment_id) from payment 
where amount  between 3.99 and 5.99;

--3. What film does the store have the most of? (search in inventory)
select film_id,  count(film_id) 
from inventory  
group by film_id
order by count(film_id) desc, film_id limit 72;

--4.How many customers have the last name ‘William’?
select count(last_name) from customer   
where last_name = 'William'; 

--5. What store employee (get the id) sold the most rentals?
select staff_id
from rental 
group by staff_id 
order by count(staff_id) desc limit 1;

--6. How many different district names are there?
select  distinct (first_name)
from actor ; 

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(actor_id) as actor_count
from film_actor  
group by film_id
order by actor_count DESC
limit 1;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(*)
from customer 
where last_name  like '%es'
and  store_id =1;

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
with rental_count as(
select count(*) 
from payment
where customer_id between 380 and 430
group by amount
having count(*) > 250)
select count(*) from rental_count
 
--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating) 
from film 

select rating 
from film
group by rating 
order by count(*) desc
limit 1


