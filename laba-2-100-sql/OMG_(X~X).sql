-- 1. Common select
SELECT * FROM managers;
-- 2. Common select with where
SELECT * FROM managers WHERE id = 1;
-- 3. Common select with where 'and' condition
SELECT * FROM managers WHERE id = 1 AND firstname = 'John';
-- 4. Common select with where 'or' condition
SELECT * FROM managers WHERE id = 1 OR firstname = 'John';
-- 5. Common select with where 'and' and 'or' condition
SELECT * FROM managers WHERE id = 1 AND (firstname = 'John' OR lastname = 'John');


-- 6. Select specific columns
SELECT id, firstname, lastname FROM managers;
-- 7. Select specific columns with where
SELECT id, firstname, lastname FROM managers WHERE id = 1;
-- 8. Like condition 1 - endings with
SELECT * FROM managers WHERE firstname LIKE '%John';
-- 9. Like condition 2 - beginnings with
SELECT * FROM managers WHERE firstname LIKE 'John%';
-- 10. Like condition 3 - contains
SELECT * FROM managers WHERE firstname LIKE '%John%';


-- 11. Like condition 4 - begginings with 'J' and length is 4
SELECT * FROM managers WHERE firstname LIKE 'J____';
-- 12. Like condition 5 - endings with 'J' and length is 4
SELECT * FROM managers WHERE firstname LIKE '____J';
-- 13. Like condition 6 - RegExp
SELECT * FROM managers WHERE firstname LIKE '[^a-zA-Z]%';
-- 14. Like condition 7 - Combination
SELECT * FROM managers WHERE firstname LIKE '%John%' OR lastname LIKE '%John%';
-- 14. Like condition 7 - Combination
SELECT * FROM managers WHERE firstname LIKE '%John%' OR lastname LIKE '%John%';


-- 15. Upper keyword
SELECT id, UPPER(firstname), UPPER(lastname) FROM managers;
-- 16. Lower keyword
SELECT id, LOWER(firstname), LOWER(lastname) FROM managers;
-- 17. Local DB date
SELECT GETDATE();
-- 18. UTC DB date
SELECT GETUTCDATE();
-- 19. Get mounth
SELECT DATEPART(MONTH, created) FROM managers
-- 20. Get year
SELECT DATEPART(YEAR, created) FROM managers


-- 21. 
SELECT (UPPER(firstname) + UPPER(lastname)) as fullname FROM managers;
SELECT (LOWER(firstname) + LOWER(lastname)) as fullnam FROM managers;
-- Remove left white spaces
SELECT RTRIM(lastname) FROM managers;
-- Remove right white spaces
SELECT LTRIM(lastname) FROM managers;
-- Calc length
SELECT LEN(lastname) FROM managers;


-- 26. 
SELECT * FROM managers WHERE created > '01/01/2022';
SELECT * FROM managers WHERE created < '01/01/2022';
SELECT * FROM managers WHERE SUBSTRING(convert(varchar, created,100), 1, 3) = 'Jan'
SELECT convert(varchar(19), created, 121) FROM managers
SELECT * FROM managers


-- 31. 
SELECT id, firstname, lastname, GETDATE() AS dt, created FROM managers
SELECT id, firstname, DATEDIFF(DD, Admission_date, GETDATE()) AS DAYS FROM managers
-- dd mmm yyyy
SELECT CONVERT(varchar(30), admission_date, 106) FROM managers
-- yyyy/mm/dd
SELECT CONVERT(varchar(30), admission_date, 111) FROM managers
SELECT CONVERT(varchar(20), admission_date, 108) FROM managers


-- 36. 
SELECT 'DATA_' + firstname, 'DATA_' + lastname FROM managers WHERE id = 1;
--
SELECT datepart(YYYY, created) year, datepart(MM, created) mounth, count(*) total
FROM managers GROUP BY datepart(YYYY, created), datepart(MM, created);
--
SELECT TOP 1 * FROM managers;
SELECT TOP 100 * FROM managers WHERE id > 1;
SELECT TOP 10 * FROM managers WHERE id > 1 ORDER BY id DESC;


-- 41.
SELECT * FROM managers WHERE id IN (1, 2, 3, 4, 5);
--
SELECT firstname, 
CASE firstname 
WHEN 'John' THEN firstname + ' JOY '
WHEN 'Doe' THEN firstname + ' DOE '
ELSE firstname
-- Count of items with unique ID
SELECT COUNT(id) FROM managers;
-- Sum of all IDs :)
SELECT SUM(id) FROM managers;
-- Average of all IDs :)
SELECT AVG(id) FROM managers;


-- 46. Range
SELECT * FROM managers WHERE id BETWEEN 10 AND 15
-- Ordering (descinding)
SELECT * FROM managers ORDER BY id DESC
-- Ordering (ascending)
SELECT * FROM managers ORDER BY id ASC
-- Ordering (descinding)
SELECT MAX(LEN(firstname)) FROM managers WHERE id ORDER BY id DESC
-- Ordering (ascending)
SELECT MIN(LEN(firstname)) FROM managers WHERE id ORDER BY id ASC


-- 51. JOIN!!!!!!!!!!!!!!!!!
SELECT firstname, lastname FROM managers JOIN warehouses ON warehouses.id = managers.id;
SELECT firstname, lastname FROM managers RIGHT JOIN warehouses ON warehouses.id = managers.id;
SELECT firstname, lastname FROM managers LEFT JOIN warehouses ON warehouses.id = managers.id;
SELECT firstname, lastname FROM managers JOIN warehouses AS w ON w.id = managers.id;
SELECT firstname, lastname FROM managers LEFT JOIN warehouses AS w ON w.id = managers.id;

-- 56. 
SELECT firstname, lastname FROM managers RIGHT JOIN warehouses AS w ON w.id = managers.id;
SELECT m.firstname, m.lastname FROM managers AS m LEFT JOIN warehouses AS w ON w.id = m.id;
SELECT m.firstname, m.lastname FROM managers AS m JOIN warehouses AS w ON w.id = m.id;
SELECT m.firstname, m.lastname FROM managers AS m RIGHT JOIN warehouses AS w ON w.id = m.id;
-- Select in where condition
SELECT * FROM managers WHERE id IN (SELECT id FROM managers WHERE firstname = 'John');


-- 61. Clone table to another
SELECT TOP 10 * INTO managers_clone FROM managers;
SELECT LEN('Some text') - LEN (REPLACE('Some text', 't', ''));
SELECT TOP 1 * FROM tblStudent ORDER BY NEWID();
-- Write down the query to display all managers names in one cell (comma separated)
DECLARE @name varchar(MAX) = ''
SELECT @name = @name + firstname + ' ' + lastname + ', ' FROM [managers]
SELECT SUBSTRING(@name,1, LEN(@name)) AS managers;


-- 66.
CREATE TABLE managers_clone(
id int identity(1,1) Not null primary key, 
firstname nvarchar(64), 
lastname nvarchar(64),
created date);
--
ALTER TABLE managers_clone ADD primary key(hehe_id);
--
ALTER TABLE managers_clone
DROP CONSTRAINT PK__managers_clone_hehe_id;
--
ALTER TABLE managers_clone ADD email nvarchar(64)


-- 71. Some special stuff
ALTER TABLE managers DROP COLMN email
-- DUMP is one of the important string/char functions
SELECT DUMP('pqr', 1033) FROM DUAL;
-- CARDINALITY is utilized to obtain the number of components
SELECT product_id, CARDINALITY(ad_mydocs_get) FROM managers;
-- TZ_OFFSET gives the time zone offset identical to the case based on the date the statement is given
SELECT TZ_OFFSET('US/Eastern') FROM DUAL;
-- COSH is used to deliver the hyperbolic cosine of a number
SELECT COSH(0) "COSH of 0" FROM DUAL;

-- 76.
SELECT CHARINDEX('v', FirstName,0) FROM managers where firstname LIKE '%John%';
--
SELECT firstname, lastname FROM managers AS m
JOIN warehouses AS w ON warehouses.id = managers.id 
GROUP BY m.id AS manager_id, m.firstname, m.lastname, w.id AS wh_id;
-- 
SELECT * FROM managers AS m
RIGHT JOIN warehouses AS w ON warehouses.id = managers.id AND 
GROUP BY m.id AS manager_id, m.firstname, m.lastname, w.id AS wh_id, w.name, w.address;
-- 
SELECT firstname, lastname FROM managers
WHERE id = 1
LEFT JOIN warehouses ON warehouses.id = managers.id
GROUP BY m.id AS manager_id, m.firstname, m.lastname;
--
SELECT id, firstname, lastname, COUNT(firstname) from warehouses

-- 81.
SELECT TOP 1 IFNULL(firstname, 'DefaultName') FROM managers;
--
SELECT TOP 1* from manager_id ORDER BY NEWID() ASC;
--
SELECT firstname, lastname, ISNULL(amount, 0) AS wh_amount
FROM managers AS m 
LEFT OUTER JOIN [warehouses] w ON 
m.warehouse_id = w.id
 WHERE name is null;
-- Combined query
SELECT IFNULL(firstname, 'DefaultName')
 FROM managers
  WHERE firstname LIKE 'J___' 
  ORDER BY id ASC;

-- 86. WIDTH_BUCKET is used to obtain the bucket number
SELECT emp_id, firstname, lastname, dept_id, mgr_id, WIDTH_BUCKET(department_id,20,40,10) "Exists in Dept"
FROM emp
WHERE mgr_id < 300
ORDER BY "Exists in Dept";
-- NANVL is utilized to deliver an optional value n1 if the inserted value n2 is NaN (not a number), and gives n2 if n2 is not a number
SELECT bin_float, NANVL(bin_float,0)
FROM warehouses;
-- WITH Common Table Expressions
WITH all_emp AS(
    SELECT empId, BossId, FirstName, LastName
    FROM Emp
    WHERE BossId is NULL
    UNION ALL
    SELECT e.empId, e.BossId, e.FirstName, e.LastName
    FROM Emp e INNER JOIN all_emp r
    ON e.BossId = r.Id) SELECT * FROM all_e;
--
SELECT DUMP('pqr', 1033)
FROM DUAL;
-- NULL Results
SELECT id, sellary * (sellary + IFNULL(sellary, 0)) 
FROM managers;

-- 91.
-- CLUSTER_SET can get the data in one of the couple steps
SELECT S.id, prob,
       CLUSTER_DETAILS(xx, S.cluster_id, 7 USING T.*) kset
FROM
  (SELECT v.*, CLUSTER_SET(xx, USING *) nset
    FROM managers
   WHERE firstname LIKE '%John') T,
  TABLE(T.nset) Q
ORDER BY 2 DESC;
--
INSERT INTO managers_clone 
SELECT * FROM managers 
WHERE Date<= '01/01/2022';
--
SELECT COUNT(ID), lastname
FROM managers
GROUP BY lastname
HAVING COUNT(ID) > 0;
--
SELECT COUNT(ID), lastname, firstname
FROM managers
GROUP BY lastname, firstname
HAVING COUNT(ID) < 0;

-- 96. 
-- The query_partition_clause breaks the output set into distributions, or collections, of data
SELECT AVG(salary) OVER () AS avg_sal FROM managers;
-- Use COALESCE to return the first non-null expression
SELECT COALESCE(NULL,NULL,'ByteScout',NULL,'Byte')
-- Use Convert to transform any value into a particular datatype
SELECT CONVERT(int, 27.64)
-- It is an analytic query that computes the rank of a row in an arranged collection of rows
SELECT DENSE_RANK() OVER (PARTITION BY dno ORDER BY salary) AS ranking FROM managers;
-- Finding the last five records from the table
SELECT * FROM Employee A where rownum <=8
UNION
SELECT * FROM (SELECT * FROM Employee A ORDER BY rowid desc) WHERE rownum <= 5;


------------------------------------------------
-- Виконавши цю лабороторну роботу я закріпив навички роботи з SQL
------------------------------------------------
