use suresh
CREATE TABLE STUDENT2 (ID INT PRIMARY KEY IDENTITY , STUDNET_NAME VARCHAR(MAX),
STUDENT_FATHERNAME VARCHAR(MAX),STUDENT_MOTHERNAME VARCHAR(MAX), STUDENT_DOB VARCHAR(MAX),
STUDENT_EMAIL VARCHAR(MAX),STUDENT_ADDRESS VARCHAR(MAX),
COURSE_ID INT FOREIGN KEY REFERENCES COURSE(ID))

CREATE TABLE COURSE (ID INT PRIMARY KEY IDENTITY, COURSE_NAME VARCHAR(MAX))

SELECT * FROM STUDENT2
SELECT * FROM COURSE

INSERT INTO COURSE VALUES
('BCA'),
('MCA'),
('B.TECH'),
('MBA'),
('DIPLOMA'),
('BCA'),
('MCA'),
('M.TECH')

INSERT INTO STUDENT2 VALUES
('AJAY','RAMOTAR','JOYTI','04/06/1997','ajay584@gmail.com','DELHI',1),
('RAJ','RAJENDRA SINGH','PRIYA','01/08/1957','raj858@gmail.com','NOIDA',2),
('BADAL','RAM KUMAR','VANDNA','08/02/1987','bada14@gmail.com','GHAZIABAD',5),
('RAM','JITENDRA','RAKHI','23/06/1997','ram685@gmail.com','GREATER NOIDA',3),
('KHANA','SATYAM','ANCHAL','25/06/1978','khana685@gmail.com','MEERUT',4),
('MOHAN','ANKUR','KUNTI','05/09/1998','mohan45@gmail.com','PUNJAB',6),
('PRIYA','MOHAN','KAVITA','04/06/1977','priya594@gmail.com','DELHI',2),
('MADHU','RAVI','KAJAL','02/09/1997','madhu504@gmail.com','NOIDA',1)

------ INNER JOIN------------------------
SELECT S.STUDENT_NAME, C.COURSE_NAME FROM STUDENT2 AS S INNER JOIN COURSE C
ON C.ID=S.COURSE_ID

------LEFT JOIN---------------------------
SELECT S.STUDENT_NAME,C.COURSE_NAME FROM STUDENT2 AS S LEFT JOIN COURSE C 
ON C.ID = S.COURSE_ID

--------------RIGHT JOIN----------------------
SELECT S.STUDENT_NAME , C.COURSE_NAME FROM STUDENT2 AS S RIGHT JOIN COURSE C
ON C.ID = S.COURSE_ID

-------------FULL OUTER JOIN----------------------------------------
SELECT S.STUDENT_NAME , C.COURSE_NAME FROM STUDENT2 AS S FULL OUTER JOIN COURSE C 
ON C.ID = S.COURSE_ID

SELECT * FROM STUDENT2 AS S FULL OUTER JOIN COURSE AS C 
ON C.ID = S.COURSE_ID

--------------OTHER QUEREY
SELECT STUDENT_NAME FROM STUDENT2 WHERE ID =2
SELECT TOP 3 * FROM STUDENT2 ORDER BY STUDENT_NAME ASC
SELECT COUNT (ID) FROM STUDENT2
