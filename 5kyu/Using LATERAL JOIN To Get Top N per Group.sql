--SQL: 5 kyu - Using LATERAL JOIN To Get Top N per Group
--https://www.codewars.com/kata/5820176255c3d23f360000a9

select categorias.id as category_id,
       categorias.category,
       Jlateral.post_id,
       Jlateral.views,
       Jlateral.title
from categories as categorias
left join lateral
(   select id as post_id,category_id,title,views
    from posts where category_id = categorias.id
    order by views desc, id
    limit 2
) Jlateral
on categorias.id = Jlateral.category_id
order by categorias.category, Jlateral.views desc, Jlateral.post_id;
