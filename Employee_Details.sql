-- First of all use database which name 'suresh'
use suresh
-- Then after use database create the table which name 'worker'
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY IDENTITY,
	FIRST_NAME VARCHAR(25),
	LAST_NAME VARCHAR(25),
	SALARY BIGINT,
	JOINING_DATE VARCHAR(50),
	DEPARTMENT VARCHAR(25)
);
-- Then after create table insert the value in 'worker' table
INSERT INTO Worker 
	(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		('Monika', 'Arora', 100000, '14-02-20 ', 'HR'),
		('Niharika', 'Verma', 80000, '14-06-11 ', 'Admin'),
		('Vishal', 'Singhal', 300000, '14-02-20 ', 'HR'),
		('Amitabh', 'Singh', 500000, '14-02-20 ', 'Admin'),
		('Vivek', 'Bhati', 500000, '14-06-11 ', 'Admin'),
		('Vipul', 'Diwan', 200000, '14-06-11 ', 'Account'),
		('Satish', 'Kumar', 75000, '14-01-20 ', 'Account'),
		('Geetika', 'Chauhan', 90000, '14-04-11 ', 'Admin');

		-- Then after create a new table which name 'bonus'

		CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT BIGINT,
	BONUS_DATE VARCHAR(50),
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
-- Then after the create the table insert the value in the table 'bonus'
INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');

		-- Then after create a new table which name 'title'

		CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE VARCHAR(25),
	AFFECTED_FROM VARCHAR(50),
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);
-- Then after insert the value in the table 'title'
INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Asst. Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');

 -- There are some query for fatch and manupulate the data and table

 SELECT * FROM Worker
 SELECT * FROM Bonus
 SELECT * FROM Title

 Select FIRST_NAME AS WORKER_NAME from Worker;

 Select upper(FIRST_NAME) from Worker;

 Select distinct DEPARTMENT from Worker;

 Select substring(FIRST_NAME,1,3) from Worker;

 Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';

 Select RTRIM(FIRST_NAME) from Worker;

 Select LTRIM(DEPARTMENT) from Worker;

 Select distinct length(DEPARTMENT) from Worker;

 Select REPLACE(FIRST_NAME,'a','A') from Worker;

 Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;

 Select * from Worker order by FIRST_NAME asc;

 Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;

 Select * from Worker where FIRST_NAME in ('Vipul','Satish');

 Select * from Worker where FIRST_NAME not in ('Vipul','Satish');

 Select * from Worker where DEPARTMENT like 'Admin%';

 Select * from Worker where FIRST_NAME like '%a';

 Select * from Worker where FIRST_NAME like '_____h';

 Select * from Worker where SALARY between 100000 and 500000;

 Select * from Worker where year(JOINING_DATE) = 2014 and month(JOINING_DATE) = 2;

 SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Worker_Name, Salary
FROM worker 
WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM worker 
WHERE Salary BETWEEN 50000 AND 100000);

SELECT DEPARTMENT, count(WORKER_ID) No_Of_Workers 
FROM worker 
GROUP BY DEPARTMENT 
ORDER BY No_Of_Workers DESC;

SELECT DISTINCT W.FIRST_NAME, T.WORKER_TITLE
FROM Worker W
INNER JOIN Title T
ON W.WORKER_ID = T.WORKER_REF_ID
AND T.WORKER_TITLE in ('Manager');

SELECT WORKER_TITLE, AFFECTED_FROM, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE, AFFECTED_FROM
HAVING COUNT(*) > 1;

SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) <> 0;

SELECT * FROM Worker WHERE MOD (WORKER_ID, 2) = 0;

SELECT * INTO WorkerClone FROM Worker;

SELECT * INTO WorkerClone FROM Worker WHERE 1 = 0;

CREATE TABLE WorkerClone LIKE Worker;

(SELECT * FROM Worker)
INTERSECT
(SELECT * FROM WorkerClone);

SELECT * FROM Worker
MINUS
SELECT * FROM Title;

SELECT CURDATE();

SELECT NOW();

SELECT getdate();

SELECT SYSDATE FROM DUAL;

SELECT * FROM Worker ORDER BY Salary DESC LIMIT 10;

SELECT TOP 10 * FROM Worker ORDER BY Salary DESC;

SELECT * FROM (SELECT * FROM Worker ORDER BY Salary DESC)
WHERE ROWNUM <= 10;

SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT n-1,1;

SELECT TOP 1 Salary
FROM (
 SELECT DISTINCT TOP n Salary
 FROM Worker 
 ORDER BY Salary DESC
 )
ORDER BY Salary ASC;

SELECT Salary
FROM Worker W1
WHERE 4 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Worker W2
 WHERE W2.Salary >= W1.Salary
 );

 SELECT Salary
FROM Worker W1
WHERE n-1 = (
 SELECT COUNT( DISTINCT ( W2.Salary ) )
 FROM Worker W2
 WHERE W2.Salary >= W1.Salary
 );

 Select distinct W.WORKER_ID, W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.WORKER_ID != W1.WORKER_ID;

Select max(Salary) from Worker 
where Salary not in (Select max(Salary) from Worker);

select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';

(SELECT * FROM Worker)
INTERSECT
(SELECT * FROM WorkerClone);

SELECT *
FROM WORKER
WHERE WORKER_ID <= (SELECT count(WORKER_ID)/2 from Worker);

SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;

SELECT DEPARTMENT, COUNT(DEPARTMENT) as 'Number of Workers' FROM Worker GROUP BY DEPARTMENT;

Select * from Worker where WORKER_ID = (SELECT max(WORKER_ID) from Worker);

Select * from Worker where WORKER_ID = (SELECT min(WORKER_ID) from Worker);

SELECT * FROM Worker WHERE WORKER_ID <=5
UNION
SELECT * FROM (SELECT * FROM Worker W order by W.WORKER_ID DESC) AS W1 WHERE W1.WORKER_ID <=5;

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;

 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

 SELECT distinct Salary from worker a WHERE 3 >= (SELECT count(distinct Salary) from worker b WHERE a.Salary >= b.Salary) order by a.Salary desc;

 SELECT distinct Salary from worker a WHERE n >= (SELECT count(distinct Salary) from worker b WHERE a.Salary <= b.Salary) order by a.Salary desc;

  SELECT DEPARTMENT, sum(Salary) from worker group by DEPARTMENT;

  SELECT FIRST_NAME, SALARY from Worker WHERE SALARY=(SELECT max(SALARY) from Worker);
