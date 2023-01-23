--SQL: 6 kyu - Subqueries master
--https://www.codewars.com/kata/594323fde53209e94700012a

select 
(case when sub_query.test='' then sub_query.name else concat(sub_query.name,
' ', sub_query.first_lastname) end) as name,
(case when sub_query.test='' then sub_query.first_lastname else 
 sub_query.second_lastname end) as first_lastname,
 (case when sub_query.test='' then sub_query.second_lastname else
 test end) as second_lastname
 from
 (select split_part(name, ' ', 1) as name, 
         split_part(name, ' ', 2) as first_lastname,
         split_part(name, ' ', 3) as second_lastname,
         split_part(name, ' ', 4) as test
         from people) as sub_query;
