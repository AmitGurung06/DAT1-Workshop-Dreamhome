.open dreamhome.sqlite
.mode column

-- 1.1
SELECT * FROM staff;

SELECT staffno, fname, lname, salary 
FROM staff;

SELECT staffno, fname, lname, position 
FROM staff
WHERE position = 'Manager' AND position = 'Supervisor';

SELECT ownerno, fname, lname
FROM privateowner
WHERE address LIKE '%Glasgsow%';

SELECT view_id, clientno, viewdate
FROM viewing 
WHERE propertyno = 'PR4567' AND comment IS NULL; 

SELECT staffno, fname, lname
FROM staff  
WHERE salary BETWEEN 20000 AND 30000;






-- 1.2



-- 1.3


