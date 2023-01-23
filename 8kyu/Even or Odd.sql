--SQL: 8 kyu - Even or Odd
--https://www.codewars.com/kata/53da3dbb4a5168369a0000fe

select
  case 
    when numeros.number%2=0 then 'Even'
    else 'Odd'
  end as is_even
from numbers as numeros
