-- sub queries
 Select EMPLOYEE_ID,FIRST_NAME,PHONE_NUMBER,SALARY from hremployees where EMPLOYEE_ID between 109 and 117;
 
-- multi rows subqueries
SELECT FIRST_NAME, LAST_NAME FROM hremployees

WHERE DEPARTMENT_ID IN (SELECT DEPARTMENT_ID FROM hremployees

WHERE FIRST_NAME IN ( 'Guy', 'Fripp'));