-- count number of rows in a table
select count(EMPLOYEE_ID) from hremployees;
select count(EMPLOYEE_ID) from hremployees
where SALARY<5000;


-- SUM function
select sum(SALARY) from hremployees;
-- Average function
select avg(SALARY) from hremployees;

-- find the employees who earn less than the employee of ID 182. Return first name, last name and salary.
SELECT e.FIRST_NAME, e.LAST_NAME , e.SALARY 
FROM hremployees e

JOIN hremployees s
  ON e.SALARY < s.SALARY
   AND s.DEPARTMENT_ID = 50;

-- where clause with logical operator

select EMPlOYEE_ID, FIRST_NAME, DEPARTMENT_ID, JOB_ID from hremployees
where JOB_ID = 'SH_CLERK';

desc employees;

-- Range operator
select EMPlOYEE_ID, FIRST_NAME, SALARY from hremployees
where SALARY between 2000 and 5000;

-- list operator
select * from hremployees where SALARY IN(2600,4800,2900);

-- Like Operator

select FIRST_NAME , LAST_NAME from hremployees where FIRST_NAME like '%a';

-- DIstinct
Select distinct JOB_ID From hremployees;

-- Renaming the attribute or creating alias
select JOB_ID as DEPT_NAME from department;

-- order by clause
select FIRST_NAME, LAST_NAME from hremployees
order by FIRST_NAME desc;
