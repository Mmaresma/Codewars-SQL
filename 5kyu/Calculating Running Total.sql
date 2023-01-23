--SQL: 5 kyu - Calculating Running Total
--https://www.codewars.com/kata/589cf45835f99b2909000115

-- Replace with your SQL query
select 
  date(publicado.created_at) as "date", 
  count(*) as "count",
  cast (sum(count(*)) over (order by date(publicado.created_at)) as integer) as "total"
from posts publicado
group by date;
