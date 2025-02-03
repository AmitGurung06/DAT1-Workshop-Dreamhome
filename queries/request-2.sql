.open dreamhome.sqlite
.mode column

-- 2.1
SELECT count(*)
FROM propertyforrent 
WHERE rent > 350;

SELECT count(*)
FROM viewing 
WHERE viewdate BETWEEN 2024-05-01 AND 2024-05-31;

SELECT count(*), SUM (salary)
FROM staff
WHERE position = 'Manager';

SELECT AVG(salary) AS average, MIN(salary) as minimum, MAX( salary) as maximum 
FROM staff;

SELECT branchno,count(*) AS totalStaff, SUM(salary) as totalSalary
FROM staff
GROUP By branchno; 

SELECT branchno AS branch ,SUM(salary) as totalSalary, COUNT(staffno) as totalStaff
FROM staff
WHERE branchno > 1 
GROUP BY branchno; 

SELECT staffno, fname, lname
FROM staff 
WHERE branchno = 'B052';





SELECT propertyno,street , city, postcode, type, rent FROM propertyforrent WHERE staffno in
 (SELECT staffno FROM staff WHERE branchno = 
 (SELECT branchno FROM branch WHERE street = '163 MAin St'));



SELECT staffno, fname, name, position, salary
FROM staff 
WHERE salary > SOME (SELECT salary FROM staff WHERE branchno = ‘B003’






SELECT *
FROM staff 
WHERE salary > (
    SELECT MAX(salary) 
    FROM staff 
    WHERE branchNo = 'B052'
);



SELECT staffno, fname, name, position, salary
FROM staff 
WHERE salary > SOME (SELECT salary FROM staff WHERE branchno ='B003')





-- 2.2



-- 2.3


