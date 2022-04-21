use suresh
CREATE table EmployeeDetail(EmployeeID int primary key identity, FirstName varchar(max),
LastName varchar(max), 
Salary varchar(max), 
JoiningDate varchar(max),
Department varchar(max),
Gender varchar(max))

select * from EmployeeDetail

insert into EmployeeDetail (FirstName,LastName,Salary,JoiningDate,Department,Gender)
values(
'Vikas', 'Ahlawat','600000','13/07/2022','IT','Male'),
('Nikita', 'Jain','530000','22/03/2022','HR','Female'),
('Ashish', 'Kumar','1000000','30/09/2022','IT','Male'),
('Nikhil', 'Sharma','480000','23/05/2022','HR','Male'),
('Anish', 'Kadian','500000','25/05/2022','Payroll','Male')

------Q.1-------------
SELECT * from EmployeeDetail where FirstName like '[^a-p]%'

-------Q.2------------
SELECT * FROM EmployeeDetail WHERE Gender like '__le'

-----------Q.3----------------
SELECT * FROM EmployeeDetail WHERE FirstName like 'A____'
---------Q.4------------------
 SELECT * FROM EmployeeDetail WHERE FirstName like '%[%]%'
-------Q.5---------------------
SELECT DISTINCT(Department) FROM EmployeeDetail
-------Q.6---------------------
SELECT max (Salary) as Highest_Salary from EmployeeDetail

--------Q.7---------------------
SELECT CONVERT(VARCHAR(40),JoiningDate,106) FROM EmployeeDetail

--------Q.8------------------
SELECT CONVERT(VARCHAR(50),JoiningDate,111) FROM EmployeeDetail
-------------Q.9--------------------
SELECT CONVERT(VARCHAR(40),JoiningDate,108) FROM EmployeeDetail
---------------Q.10---------------------
SELECT DATEPART(YEAR, JoiningDate) FROM EmployeeDetail
----------Q.11--------------------------
SELECT FirstName, GETDATE() [Current Date], JoiningDate,
DATEDIFF(MM,JoiningDate,GETDATE()) AS Total_Months FROM EmployeeDetail
---------Q.12------
SELECT * from EmployeeDetail where JoiningDate like '%2022'
----Q.13----------------
SELECT * from EmployeeDetail where JoiningDate like '__01____'
----------Q.14-------------------
SELECT * FROM EmployeeDetail WHERE JoiningDate BETWEEN '2013-01-01' AND '2013-12-01'
-------------Q.15---------------
SELECT FirstName, CASE  WHEN Gender = 'Male' THEN 'M'
WHEN Gender = 'Female' THEN 'F' END AS Gender
FROM EmployeeDetail



