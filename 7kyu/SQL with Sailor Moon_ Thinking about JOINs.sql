--SQL: 7 kyu - SQL with Sailor Moon: Thinking about JOINs...
--https://www.codewars.com/kata/5ab7a736edbcfc8e62000007

SELECT 
  marinerosenshi.senshi_name as sailor_senshi, 
  marinerosenshi.real_name_jpn as real_name, 
  Gatos.name as cat, 
  escuela.school as school
FROM sailorsenshi as marinerosenshi 
  LEFT JOIN schools as escuela ON marinerosenshi.school_id=escuela.id
  LEFT JOIN cats as Gatos ON marinerosenshi.cat_id=Gatos.id
