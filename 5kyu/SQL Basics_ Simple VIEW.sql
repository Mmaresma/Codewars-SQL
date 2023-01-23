--SQL: 5 kyu - SQL Basics: Simple VIEW
--https://www.codewars.com/kata/5811527d9d278b242f000006

-- Create your VIEW statement here
create view members_approved_for_voucher as
select miembro.id, miembro.name, email, total_spending
from
(
select member_id as "id", miembros.name, email, sum(price) as "total_spending"
from sales ventas 
join products productos on (ventas.product_id = productos.id)
join members miembros on (ventas.member_id = miembros.id)
join
(
  select department_id as "id", sum(price)
  from sales ventas 
  join products productos on (ventas.product_id = productos.id)
  join departments departamentos on (ventas.department_id = departamentos.id)
  group by ventas.department_id
  having sum(price) > 10000
  ) departamentos on (ventas.department_id = departamentos.id)
group by ventas.member_id, miembros.name, email
having sum(price) > 1000
) miembro;

select id, name, email, total_spending
from members_approved_for_voucher
order by id;
