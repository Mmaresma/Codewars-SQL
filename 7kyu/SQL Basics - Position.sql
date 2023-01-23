--SQL: 7 kyu - SQL Basics - Position
--https://www.codewars.com/kata/59401e0e54a655a298000040

select 
  monstruos.id, 
  monstruos.name, 
  position(',' in characteristics) as comma 
from monsters as monstruos 
order by comma;
