--SQL: 8 kyu - Grasshopper - Messi goals function
--https://www.codewars.com/kata/55f73be6e12baaa5900000d4

SELECT 
  Gles.la_liga_goals +
      Gles.copa_del_rey_goals + 
          Gles.champions_league_goals AS res 
FROM goals as Gles;
