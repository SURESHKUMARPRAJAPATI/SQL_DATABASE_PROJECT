CREATE table ProjectDetail(ProjectDetailID int primary key identity,
EmployeeDetailID INT FOREIGN KEY REFERENCES EmployeeDetail(EmployeeID),ProjectName varchar(max))

SELECT * from ProjectDetail

INSERT into ProjectDetail values
(1,'Task Track'),
(1,'CLP'),
(1,'Survey Management'),
(2,'HR Management'),
(3,'Task Track'),
(3,'GRS'),
(3,'DDS'),
(4,'HR Management')

---------------Q.1------------------------------------
SELECT FirstName,ProjectName FROM EmployeeDetail A INNER JOIN ProjectDetail B 
ON A.EmployeeID = B.EmployeeDetailID ORDER BY FirstName
----------Q.2-------------------------
SELECT FirstName,ProjectName FROM EmployeeDetail A LEFT OUTER JOIN ProjectDetail B 
ON A.EmployeeID = B.EmployeeDetailID ORDER BY FirstName
-----------------Q.3--------------
SELECT FirstName, ISNULL(ProjectName,'-No Project Assigned')
FROM EmployeeDetail A LEFT OUTER JOIN ProjectDetail B 
ON A.EmployeeID = B.EmployeeDetailID ORDER BY FirstName
------------Q.4-------------------------
SELECT FirstName,ProjectName FROM EmployeeDetail A RIGHT OUTER JOIN ProjectDetail B
ON A.EmployeeID = B.EmployeeDetailID ORDER BY FirstName
-----------Q.5-------------------------------
SELECT FirstName,ProjectName FROM EmployeeDetail A FULL OUTER JOIN ProjectDetail B
ON A.EmployeeID = B.EmployeeDetailID ORDER BY FirstName
----------------Q.6-------------------
SELECT FirstName, ISNULL(ProjectName,'-No Project Assigned')
AS [ProjectName] FROM EmployeeDetail A LEFT OUTER JOIN ProjectDetail B
ON A.EmployeeID = B.EmployeeDetailID
WHERE ProjectName IS NULL
-----------------------Q.7-----------------
SELECT ProjectName FROM EmployeeDetail A RIGHT OUTER JOIN ProjectDetail B
ON A.EmployeeID = B.EmployeeDetailID
WHERE FirstName IS NULL
----------Q.8----------------------
Select EmployeeID, FirstName, ProjectName from EmployeeDetail E INNER JOIN ProjectDetail P
ON E.EmployeeID = P.EmployeeDetailID
WHERE EmployeeID IN (SELECT EmployeeDetailID FROM
ProjectDetail GROUP BY EmployeeDetailID HAVING COUNT(*) >1 )
-------------Q.9-------------------
Select P.ProjectName, E.FirstName from ProjectDetail P INNER JOIN EmployeeDetail E
on P.ProjectDetailID = E.EmployeeID where P.ProjectName in(select ProjectName 
from ProjectDetail group by ProjectName having COUNT(1)>1)

