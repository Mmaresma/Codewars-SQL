--SQL: 6 kyu - SQL Basics: Create a FUNCTION (DATES)
--https://www.codewars.com/kata/5811010104adbba24b0002fe

CREATE FUNCTION agecalculator (d timestamp) 
RETURNS integer AS $$
BEGIN
  RETURN (SELECT EXTRACT(year FROM age(d)))::int;
END; $$ LANGUAGE plpgsql;
