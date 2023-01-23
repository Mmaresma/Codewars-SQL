--SQL: 4 kyu - Challenge: Two actors who cast together the most
--https://www.codewars.com/kata/5818bde9559ff58bd90004a2

-- Replace with your SQL Query
WITH top_team (Actor_1, Actor_2, starts)
AS
(
  SELECT 
    tp.actor_id, 
    fa.actor_id AS costar, 
    count(fa.actor_id) AS starts
  FROM film_actor fa, film_actor tp
    WHERE fa.film_id = tp.film_id
    AND fa.actor_id <> tp.actor_id
  GROUP BY tp.actor_id, fa.actor_id
  order by starts DESC, tp.actor_id
  LIMIT 1
)

SELECT 
    a1.first_name||' '||a1.last_name AS "first_actor",
    a2.first_name||' '||a2.last_name AS "second_actor",
    f.title
FROM actor a1, actor a2, top_team topt, film f
  WHERE topt.Actor_1 = a1.actor_id
  AND topt.Actor_2 = a2.actor_id
  AND f.film_id IN (
                      SELECT 
                          fa1.film_id FROM film_actor fa1, film_actor fa2
                            WHERE fa1.film_id = fa2.film_id
                            AND fa1.actor_id = a1.actor_id
                            AND fa2.actor_id = a2.actor_id
                    );
