--SQL: 8 kyu - Keep Hydrated!
--https://www.codewars.com/kata/582cb0224e56e068d800003c

SELECT 
  ciclo.id, 
  ciclo.hours, 
  round(ciclo.hours/2 - 0.5) as liters  
FROM cycling as ciclo
