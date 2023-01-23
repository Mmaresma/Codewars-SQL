--SQL: 8 kyu - On the Canadian Border (SQL for Beginners #2)
--https://www.codewars.com/kata/590ba881fe13cfdcc20001b4

--Your Code Here
select * from travelers where not country in ('Mexico', 'Canada', 'USA') ;
