--SQL: 7 kyu - SQL Basics: Simple GROUP BY
--https://www.codewars.com/kata/58111f4ee10b5301a7000175

-- Create your SELECT statement here
select age, count(age) as "people_count" from people group by age;
