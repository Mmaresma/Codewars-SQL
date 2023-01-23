--SQL: 4 kyu - Total items belonging to the categories on all tree levels
--https://www.codewars.com/kata/5da48818dcf4d6002129a751

with recursive Contador_Items as 
  (select categorias.id, categorias.parent,
  (select count(i.id) from items as i where i.category_id = categorias.id) as total
    from categories as categorias),
  h as (select id, parent, total
  from Contador_Items 
  where id not in (select parent from categories where parent is not null)
  union all
  select categorias.id, categorias.parent, categorias.total + h.total as total
  from h
  join Contador_Items as categorias on h.parent = categorias.id)
select id, sum(total)::int as total
from h
group by id
order by id;
