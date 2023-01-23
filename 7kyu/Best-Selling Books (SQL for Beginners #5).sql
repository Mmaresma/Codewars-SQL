--SQL: 7 kyu - Best-Selling Books (SQL for Beginners #5)
--https://www.codewars.com/kata/591127cbe8b9fb05bd00004b

-- Your Code Here
select * from books order by copies_sold desc limit 5;
