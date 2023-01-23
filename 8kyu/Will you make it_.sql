--SQL: 8 kyu - Will you make it?
--https://www.codewars.com/kata/5861d28f124b35723e00005e

SELECT 
  ZF.distance_to_pump, 
  ZF.mpg, 
  ZF.fuel_left, 
  ZF.distance_to_pump <= ZF.fuel_left * ZF.mpg AS res 
FROM zerofuel as ZF;
