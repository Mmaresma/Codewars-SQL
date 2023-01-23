--SQL: 6 kyu - Present JSON data the SQL way
--https://www.codewars.com/kata/5daf515c3affec002b2fb921

select 
  data->>'first_name' as first_name,
  data->>'last_name' as last_name,
  extract(year from age(now(), (data->>'date_of_birth')::date))::integer as age,
  case
    when data->>'private' = 'true' then 'Hidden'
    when data->>'private' = 'false' and data#>>'{email_addresses, 0}' is null then 'None'
    else data#>>'{email_addresses, 0}'
  end as email_address
from users
order by first_name, last_name
