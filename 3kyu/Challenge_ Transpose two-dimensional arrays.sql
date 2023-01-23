--SQL: 3 kyu - Challenge: Transpose two-dimensional arrays
--https://www.codewars.com/kata/592b1e4c96cc12de1e0000b1

select array_agg(v order by j) as matrix
from
    (
    select rn,j,array_agg(v order by i) as v
    from
        (select rn,i,j,matrix[i][j] as v
         from 
            (select generate_subscripts(matrix, 2) as j,matriz.*
            from 
				(select row_number() over() as rn, generate_subscripts(matrix, 1) as i, matrix
                 from matrices
                )matriz
            ) registros
        )selects
        group by rn, j
    )todo
group by rn
order by rn;
