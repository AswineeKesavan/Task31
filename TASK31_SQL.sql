CREATE DATABASE task31;
USE task31;
CREATE TABLE Employee (
    empno INT PRIMARY KEY,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8369, 'SMITH', 'CLERK', 8902, '1990-12-18', 800.00, NULL, 20);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 600.00, 300.00, 30);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8654, 'MOMIN', 'SALESMAN', 8698, '1991-09-28', 1250.00, 1400.00, 30);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, NULL, 30);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 10);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8839, 'AMIR', 'PRESIDENT', NULL, '1991-11-18', 5000.00, NULL, 10);
INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, deptno) 
VALUES (8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30);
#SELECT * FROM Employee;
# write a query to display ename and sal of employee whose sal are gretaer than or equal to 2200?
#SELECT ename, sal FROM Employee WHERE sal >= 2200;
# write a query to display details of employee who are not getting commission?
#SELECT comm FROM Employee WHERE comm IS NULL OR comm = 0;
# write a query to display ename and sal of those employees who don't have their salary in the range of 2500 to 4000?
#SELECT ename,sal FROM Employee WHERE sal <=2500 OR sal <= 4000;
# write a query to display the name,job title and salary of employee who don't have a manager?
#SELECT ename,job,sal FROM Employee WHERE job !='MANAGER';
# write a query to display the name of an employee whose name contains "A" as third alphabet?
#SELECT ename FROM Employee WHERE ename LIKE '__A%';
# write a query to display the name of an employee whose name contains "T" as last alphabet?
SELECT ename FROM Employee WHERE ename LIKE '%T';



