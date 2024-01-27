 
-- update Query
update hremployees set SALARY = 5000 where DEPARTMENT_ID=50;

select * from hremployees;
describe hremployees;
-- delete all the records from the table
 delete from hremployees;
 
 /*There is a table employee, with some records use below query to delete a group of employees (working for ‘sales’) */
 delete from hremployees where DEPARTMENT_ID =50;
 
 