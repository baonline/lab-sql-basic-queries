-- Display all available tables in the Sakila database.
show
tables;
-- Retrieve all the data from the tables actor, film and customer.
select * 
from actor;
select * 
from film;
select * 
from customer;
        
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table
select 
title 
from film
;
select 
name as language 
from language
;
select 
first_name 
from staff
;

-- Retrieve unique release years.
select distinct 
release_year 
from film
;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select 
count(store_id) as 'Number of stores'
from store;
-- select count(*) from store;

-- 5.2 Determine the number of employees that the company has.
select 
count(staff_id) as 'number of employees' 
from staff;
-- select count(*) from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select * from rental;
-- select count(rental_id) from rental where return_date is not null;
-- select count(distict film_id) from inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
select distinct
count(last_name)
from actor
;
-- Retrieve the 10 longest films.
select 
title as 'Longest 10 films'
,length as 'duration'
from film
order by length desc
limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select 
*
from actor
where first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select 
* 
from film
where title like '%ARMAGEDDON%' and length>100
;

-- 7.3 Determine the number of films that include Behind the Scenes content
select 
count(*) as 'films with behind the scenes'
from film
where special_features like "%Behind the Scenes%";

