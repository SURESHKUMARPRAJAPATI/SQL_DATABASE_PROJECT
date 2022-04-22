-----------Q.1------------------
SELECT * from employee order by salary desc and group by deptno
-------------Q.2---------------
SELECT * into emp from employee where 1=0
-----------------Q.3----------------
SELECT * from employee where Salary between 1000 and 2000
-------------Q.4-----------
SELECT * from emp e inner join departments d on e.Id = d .department_id
------------Q.5---------------------
SELECT * from emp1
UNION 
SELECT * from emp2
-------------Q.6----------------------
SELECT * from emp 
UNION
SELECT  * from employee
-------------Q.7------------
SELECT * from emp
EXCEPT
SELECT * from employee
-------------------Q.9----------
SELECT COUNT (*) FROM EMPSELECT MAX (SALARY) FROM EMPSELECT MIN (SALARY) FROM EMPSELECT AVG (SALARY) FROM EMPSELECT SUM (SALARY) FROM EMP