--SQL: 4 kyu - Dealing With Messy Data
--https://www.codewars.com/kata/5821ee33ec380124f1000013

create extension pg_trgm;
create index prospects_idx on prospects using gin(full_name gin_trgm_ops);
select clientes.first_name,
       clientes.last_name,
       clientes.credit_limit as old_limit,
       max(prospectos.credit_limit) as new_limit
from customers as clientes, prospects as prospectos
where prospectos.full_name ILIKE '%' ||clientes.first_name || '%'
and prospectos.full_name ILIKE '%' || clientes.last_name || '%'
and prospectos.credit_limit > clientes.credit_limit
group by clientes.first_name, clientes.last_name, clientes.credit_limit
order by first_name;
