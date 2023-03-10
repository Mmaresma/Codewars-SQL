--SQL: 6 kyu - SQL Basics: Simple PIVOTING data WITHOUT CROSSTAB
--https://www.codewars.com/kata/5982020284a83baf2f00001c

-- add your query here!
select 
    name, 
    g.count as "good", 
    o.count as "ok", 
    b.count as "bad"
from products p 
  join 
  (
      select product_id, count(*) as "count" from details where detail = 'good' group by product_id 
  ) g on (p.id = g.product_id)
  join 
  (   
      select product_id, count(*) as "count" from details where detail = 'ok' group by product_id 
  ) o on (p.id = o.product_id)
  join 
  ( select product_id, count(*) as "count" from details where detail = 'bad' group by product_id 
  ) b on (p.id = b.product_id)
group by name, g.count, o.count, b.count
order by name;
