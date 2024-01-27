-- count number of rows in a table
select count(EMPLOYEE_ID) from hremployees;
select count(EMPLOYEE_ID) from hremployees
where SALARY<5000;


-- SUM function
select sum(SALARY) from hremployees;
-- Average function
select avg(SALARY) from hremployees;



desc employees;