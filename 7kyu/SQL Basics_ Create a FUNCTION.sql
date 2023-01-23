--SQL: 7 kyu - SQL Basics: Create a FUNCTION
--https://www.codewars.com/kata/580fe518cefeff16d00000c0

CREATE FUNCTION increment (i int)
  RETURNS int AS $$
  BEGIN
  RETURN i+1;
  END;
  
  $$ LANGUAGE plpgsql;
