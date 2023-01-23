--SQL: 5 kyu - SQL Basics: Simple Hierarchical structure
--https://www.codewars.com/kata/5812a2a2492760dfca000450

WITH RECURSIVE employee_levels(level, id, first_name, last_name, manager_id) AS (
	SELECT
    1 as level,
		empleadosN1.id,
    empleadosN1.first_name,
    empleadosN1.last_name,
    empleadosN1.manager_id
	FROM
		employees as empleadosN1
	WHERE
    empleadosN1.manager_id is NULL  
	UNION
		SELECT
			level + 1,
      empleados.id, 
      empleados.first_name, 
      empleados.last_name, 
      empleados.manager_id
		FROM
			employees as empleados
		INNER JOIN employee_levels NivelEmpleados ON empleados.manager_id = NivelEmpleados.id 
) SELECT * FROM	employee_levels;
