
--Exercise 6: Subqueries
 
--1) List the name and job of employees who have the same job as 
--jones

SELECT name, job 
FROM emp
WHERE job LIKE(
	SELECT job FROM emp WHERE name IS 'JONES'
);
 
--2) Find all the employees in department 10 who have a job that is 
--the same as anyone in department 30

SELECT * FROM emp WHERE deptno=10 AND job IN (SELECT job FROM emp WHERE deptno=30);

--3) List the name, job title and salary of employees who have the 
--same job and salary as ford

SELECT name, job, sal FROM emp WHERE job LIKE (SELECT job FROM emp WHERE ename LIKE 'FORD') AND sal LIKE (SELECT sal FROM emp WHERE ename LIKE 'FORD');
 
--4) List the name, job and department of employees who have the
--same job as jones or a salary greater than or equal to ford

SELECT ename, job, dname FROM  emp, dept WHERE job LIKE (SELECT job FROM emp WHERE ename LIKE 'JONES') OR sal>=(SELECT sal FROM emp WHERE ename LIKE 'ford');
 
--5) Find all the employees in department 10 that have a job that 
--is the same as anyone in the sales department

SELECT * FROM emp WHERE deptno=10 AND job IN (SELECT job FROM emp WHERE deptno=(SELECT deptno FROM dept WHERE dname LIKE 'SALES'));
--#(it's the same as 2!)
 
--6) Find the employees located in chicago who have the same job as 
--allan. return the results in alphabetical order by employee name

SELECT * FROM emp WHERE deptno=(SELECT deptno FROM dept WHERE loc LIKE 'CHICAGO') AND job LIKE (SELECT job FROM emp WHERE ename LIKE 'ALLEN') ORDER BY ename;
 
--7) Find all employees that earn more than the average salary of 
--employees in their department

SELECT * FROM emp WHERE deptno=10 AND sal>(SELECT AVG(sal) FROM emp WHERE deptno=10) OR deptno=20 AND sal>(SELECT AVG(sal) FROM emp WHERE deptno=20) AND deptno=30 AND sal>(SELECT AVG(sal) FROM emp WHERE deptno=30) AND deptno=40 AND sal>(SELECT AVG(sal) FROM emp WHERE deptno=40);
