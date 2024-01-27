-- inner join

SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID, D.JOB_ID 

-- Performing an INNER JOIN between the 'employees' table (aliased as 'E') and the 'departments' table (aliased as 'D') based on the 'department_id' column
FROM hremployees e 

JOIN department d
  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;
  
  
  -- cross join 
  select e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID, d.JOB_ID
  FROM hremployees e
  CROSS JOIN department d
  ON e.DEPARTMENT_ID = d.DEPARTMENT_ID;
  
  -- sql query to find employee and their manager and find first name of employee and their manager
  SELECT e.FIRST_NAME AS "EMP_NAME", m.FIRST_NAME AS "MANAGER"

-- Performing an INNER JOIN between the 'employees' table (aliased as 'E') and the 'employees' table (aliased as 'M') based on the condition that 'E.manager_id' is equal to 'M.employee_id'
FROM hremployees e 
JOIN hremployees m
ON e.MANAGER_ID = m.EMPLOYEE_ID;
  
  -- write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID.
  
  SELECT e.FIRST_NAME, e.LAST_NAME, e.DEPARTMENT_ID 
FROM hremployees e

JOIN hremployees s
  ON e.DEPARTMENT_ID = s.DEPARTMENT_ID
   AND s.LAST_NAME='Patel';