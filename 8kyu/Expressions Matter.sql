--SQL: 8 kyu - Expressions Matter
--https://www.codewars.com/kata/5ae62fcf252e66d44d00008e

SELECT GREATEST(
    em.a * (em.b + em.c),
    (em.a + em.b) * em.c,
    em.a * em.b * em.c,
    em.a + em.b * em.c,
    em.a * em.b + em.c,
    em.a + em.b + em.c
    )
AS res FROM expression_matter as em;
