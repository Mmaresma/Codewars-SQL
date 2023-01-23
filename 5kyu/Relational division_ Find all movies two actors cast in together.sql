--SQL: 5 kyu - Relational division: Find all movies two actors cast in together
--https://www.codewars.com/kata/5817b124e7f4576fd00020a2

-- Replace with your SQL Query
select 
  title
from
(
  select 
    title
  from film peliculas join film_actor actor 
    on (peliculas.film_id = actor.film_id)
    where actor.actor_id = 105
) filmschema
  natural join
(
  select 
    title
  from film peliculas join film_actor actor 
    on (peliculas.film_id = actor.film_id)
    where actor.actor_id = 122
) film_actorschema;
