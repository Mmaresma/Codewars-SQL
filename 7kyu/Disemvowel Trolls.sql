--SQL: 7 kyu - Disemvowel Trolls
--https://www.codewars.com/kata/52fba66badcd10859f00097e

SELECT 
  desempolvar.str, 
  TRANSLATE(desempolvar.str, 'aAeEiIoOuU', '') AS res 
FROM disemvowel as desempolvar;
