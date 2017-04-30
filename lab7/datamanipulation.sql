
--Exercise 7: data manipulation
 
--1) Create a new table called loans with columns named 
--lno number(3), empno number(4), type char(1), amnt number(8,2)

CREATE TABLE loans(lno number(3), empno number(4), type char(1), amnt number(8,2));
 
--2) Insert the following data:
--lno, empno, type, amnt
--23, 7499, m, 20000.00
--42, 7499, c, 2000.00
--65, 7844, m, 3564.20

INSERT INTO loans(lno, empno, type, amnt) VALUES (23, 7499, 'm', 20000.00);
INSERT INTO loans(lno, empno, type, amnt) VALUES (42, 7499, 'c', 2000.00);
INSERT INTO loans(lno, empno, type, amnt) VALUES (65, 7844, 'm', 3564.20);
 
--3) Check you have created 3 new records in loans

SELECT * FROM loans; 
 
--4) The loans table must be altered to include another column: 
--outst number(8,2)

ALTER TABLE loans ADD outst number(8,2);
 
--5) Add 10% interest to all m-type loans

UPDATE loans SET amnt=(amnt+(amnt/10)) WHERE type='m';

--6) Remove all loans less than 3,000 pounds

DELETE FROM loans WHERE amnt<3000;

--7) Change the name of the loans table to accounts

ALTER TABLE loans RENAME to accounts;

--8) Change the name of column lno to loanno

ALTER TABLE accounts RENAME COLUMN lno TO loanno;

--9) Create a view for use by personnel in department 30 showing 
--employee name, number, job and hiredate.

CREATE VIEW dept30 AS SELECT ename, empno, job, hiredate FROM emp WHERE deptno=30; 
 
--10) Use the view to show employees in department 30 having jobs 
--which are not salesman

SELECT * FROM dept30 WHERE job NOT LIKE 'SALESMAN';
 
--11) Drop column type from loans table.

ALTER TABLE accounts DROP COLUMN type; 
