--SQL: 4 kyu  - Calculating Month-Over-Month Percentage Growth Rate
--https://www.codewars.com/kata/589e0837e10c4a1018000028

-- Replace with your SQL query
select 
  date_trunc('month', publicado.created_at)::date as date, 
  count(*) as count,
  round(((100.0/(lag(count(*)) over 
    (order by date_trunc('month', publicado.created_at)::date asc))) * count(*)) -100, 1) || '%' 
    as percent_growth
from posts publicado
group by date
order by date asc;
