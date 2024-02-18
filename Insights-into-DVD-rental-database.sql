/*QUESTION1: What are the top and least rented (in-demand) genres and what are their total sales?*/

select c.name as Genre, count(cus.customer_id)as total_rent_demand, sum(p.amount)as total_sales, round(avg(f.rental_rate),2) as average_rental_rate 
		   from category as c 
		   join film_category as fc
		   using (category_id)
		   join film as f 
		   using (film_id)
		   join inventory as i 
		   using (film_id)
		   join rental as r
		   using (inventory_id)
		   join customer as cus
		   using (customer_id)
		   join payment as p
		   using (rental_id)
		   group by 1
		   order by 4 desc
/* QUESTION 2: Write a query to categorize the movies based on their length: 1 hour or less, Between 1-2 hours, Between 2-3 hours, More than 3 hours.*/

select distinct(film_length), COUNT(title) OVER (PARTITION BY film_length) from
(select title, length,
	case 
		when length <=60 then '1 hour or less'
		when length >60 and length <=120 then 'Between 1-2 hours'
		when length >120 and length <180 then'Between 2-3 hours'
		else 'More than 3 hours'
	end as film_length 
from film) t1

/* QUESTION 3: Create a query that lists each customer's full name, total payment, and customer category based on their total payment amount (Bronze, Silver, Gold, and Platinum) */

select (c.first_name||' '||c.last_name)as customer_full_name, sum(p.amount) as total_payment, 
case 
	when sum(p.amount) <=50 then 'Bronze Customer'
	when sum(p.amount) >50 and sum(p.amount)<=100 then'Silver Customer'
	when sum(p.amount) >100 and sum(p.amount)<=150 then 'Gold Customer'
	else 'Platinum Customer'
End as customer_classification
from payment p
join customer c
using (customer_id)
group by customer_full_name
order by 1

/* QUESTION 4: How many rented films were returned late, early and on time?*/

with a1 as( select f.title, date_part('day',r.return_date-r.rental_date)as rented_time ,f.rental_duration
	from film f
	join inventory i
	using(film_id)
	join rental r
	using(inventory_id)),
	a2 as (select distinct(situation), count(title)
	from 
		(select *, case 
			when rented_time < rental_duration then'Early return'
			when rented_time = rental_duration then'On time return'
			else 'Late return'
				end as situation
		from a1) t1
	GROUP BY situation)
select* from a2
		   