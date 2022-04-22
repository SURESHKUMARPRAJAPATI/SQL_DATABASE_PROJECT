use suresh
CREATE table employee(Id int primary key identity, 
Name varchar(max), Mobile_No varchar(max), Department varchar(max),
Email_Id varchar(max), Age int, Gender varchar(max),Salary bigint)

INSERT into employee values
('Ravi','7869594039','HR','ravi94@gmail.com',34,'Male',450000),
('Ajay','8960594039','TL','ajay58@gmail.com',45,'Male',560000),
('Kajal','7869594034','HR','kajal54@gmail.com',34,'Female',1200000),
('Rajesh','7869592339','TL','rajesh68@gmail.com',32,'Male',4200000),
('Pinki','7869594879','FM','pinki665@gmail.com',26,'Female',150000),
('Shobha','7679594039','HR','shobha384@gmail.com',37,'Female',350000),
('Sonal','7869594098','PM','sonal584@gmail.com',29,'Female',870000),
('Jitendra singh','7869594087','TL','jitendrasingh6848@gmail.com',30,'Male',120000),
('Ravi','7869593239','PM','ravi94@gmail.com',34,'Male',10000),
('Rakesh kumar','7869594039','TL','rakesh334@gmail.com',45,'Male',160000),
('Priya','7869534539','FM','priya334@gmail.com',32,'Female',350000),
('Divya','7869594657','TL','divya322@gmail.com',25,'Female',850000),
('Rahul','7869594098','PM','rahul754@gmail.com',21,'Male',240000),
('Riya','7869594234','FM','riya324@gmail.com',42,'Female',150000),
('Sita','7545594039','TL','sita094@gmail.com',32,'Female',260000),
('Seetal','7679594039','TL','seetal39294@gmail.com',34,'Female',430000),
('Deepali','7349594039','HR','deepali3224@gmail.com',30,'Female',676000),
('Monu','7869594087','FM','monu064@gmail.com',29,'Male',800000),
('Chandan','7869593439','PM','chandan354@gmail.com',34,'Male',250000),
('Kailash','7869594439','TL','kailash464@gmail.com',27,'Male',400000),
('Aanand Sharma','7869594078','HR','aanand4324@gmail.com',24,'Male',430000)

alter table employee add deptno int

SELECT * from employee

------------Q.1---------------
SELECT * from employee where Salary<10000
-----------Q.2-------------------
SELECT * from employee where Salary>=9000 and Salary<15000
-----------Q.3-------------------
SELECT * from employee where Salary not between 10000 and 15000
---------Q.4-------------------
SELECT * from employee where Name like 'r%'
--------------Q.5--------------
SELECT * from employee where Name like '%y'
-----------------Q.6---------------------------
SELECT * from employee where Name like 'a'
--------------Q.7--------------------
SELECT * from employee where Name like '___'
-------------Q.8---------------
SELECT * from employee where Name like 'r' and Salary>9000
-----------Q.9------------
SELECT * from employee where salary > 'Ajay'
------------Q.10---------------------
SELECT * from employee where Id like '1%1'
----------Q.11-------------
update employee set deptno=10 where id in (14,16,18)
------------Q.12--------------
update employee set Salary=12000 where deptno<10 and Name like 'r%'







