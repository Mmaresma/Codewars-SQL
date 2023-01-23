--SQL: 7 kyu - GROCERY STORE: Inventory
--https://www.codewars.com/kata/5a8eb3fb57c562110f0000a1

select 
  productos.id,
  productos.name,
  productos.stock
from products as productos
where productos.producent ='CompanyA' and productos.stock<=2
order by productos.id
