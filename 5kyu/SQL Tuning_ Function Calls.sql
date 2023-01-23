--SQL: 5 kyu - SQL Tuning: Function Calls
--https://www.codewars.com/kata/581fb63e70ca28d92500000d

WITH Calls AS 
  (
    SELECT 
      departamentos.department_id,
      departamentos.department_name,
      pctIncrease(departamentos.department_id) as pct
            FROM departments as departamentos
  )
SELECT 
    empleados.employee_id,
    empleados.first_name,
    empleados.last_name,       
    empleados.salary as old_salary,
    dCall.department_name,
    empleados.salary*(1+dCall.pct) as new_salary 
        FROM Employees as empleados
        INNER JOIN Calls dCall
        ON empleados.department_id = dCall.department_id
        ORDER BY 1;
