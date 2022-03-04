create database ProcedureDb
use ProcedureDb

create table Student(Id int primary key identity, Student_Name varchar(max),
Student_Father_Name varchar(max), Student_Mother_Name varchar(max),
Student_Dob varchar(max), Student_Gender varchar(max), Student_Mobile varchar(max),
Student_Email varchar(max), Student_Address varchar(max))

create proc SP_Student
@action varchar(max),
@Id int =null,
@Studnet_Name varchar(max)=null,
@Student_Father_Name varchar(max) =null,
@Student_Mothre_Name varchar(max) = null,
@Student_Dob varchar(max) = null,
@Student_Gender varchar(max) =null,
@Student_Mobile varchar(max) = null,
@Student_Email varchar(max) = null,
@Student_Address varchar(max) = null

as 
begin
if(@action = 'CREATE')
begin
insert into Student(Student_Name,Student_Father_Name,Student_Mother_Name,Student_Dob,
Student_Gender,Student_Mobile,Student_Email,Student_Address)values
(@Studnet_Name,@Student_Father_Name,@Student_Mothre_Name,@Student_Dob,@Student_Gender,@Student_Mobile,
@Student_Email,@Student_Address)
select 'You have Inserted data in table ' as result
end

else if(@action = 'DELETE')
begin
delete from Student where id =@Id
select 'You have deleted successfully data' as result
end

else if(@action = 'SELECT')
begin
select *from Student
end

else if(@action = 'UPDATE')
begin
update Student set Student_Name=@Studnet_Name where Id=@Id
select 'You have updated successfully data' as result
end 
end

exec SP_Student 'SELECT'
exec SP_Student 'UPDATE',1,'Ajay'
exec SP_Student 'DELETE',15

exec SP_Student 'CREATE', 0,
'Kajal','Ranjeet Singh','Kunti','05/06/1998','Female','7899382847','kajal87@gmail.com','Noida'

exec SP_Student 'CREATE', 0,
'Sanjay','Santosh','Lata','03/04/1997','Male','7549378647','sanjay58@gmail.com','Ghaziabad'

exec SP_Student 'CREATE', 0,
'Akash','Manoj','Pratigya','23/02/1897','Male','754954847','aakash654@gmail.com','Meerut'

exec SP_Student 'CREATE', 0,
'Kundan','Heeralal','Khushi','23/07/1967','Male','8749382847','kundal654@gmail.com','Punjab'

exec SP_Student 'CREATE', 0,
'Laxmi','Mohan','Monika','24/11/1976','Female','9876382847','laxmi7958@gmail.com','Mumbai'

exec SP_Student 'CREATE', 0,
'Priya','Ram Singh','Rohini','07/09/1999','Female','8949382847','priya44@gmail.com','Rampur'

exec SP_Student 'CREATE', 0,
'Rinki','Nekpal','Mohini','27/11/1987','Female','7987382847','rinki43@gmail.com','Sitapur'

exec SP_Student 'CREATE', 0,
'Monu','Vicky','Sheetal','26/09/1994','Male','9879382847','monu648@gmail.com','Greater Noida'

exec SP_Student 'CREATE', 0,
'Sunita','Deshraj','Rekha','06/09/1947','Female','4549382847','sunita8960@gmail.com','Moradabad'

exec SP_Student 'CREATE', 0,
'Suman','Ramesh','Riya','02/08/1999','Female','9869382847','suman504@gmail.com','Sambhal'

exec SP_Student 'CREATE', 0,
'Kailash','Dinesh','Kajal','17/02/1797','Male','9879382847','kailash543@gmail.com','Amroha'

exec SP_Student 'CREATE', 0,
'Anil','Rahul','Somwati','32/04/1997','Male','7649382847','anil5334@gmail.com','Delhi'

exec SP_Student 'CREATE', 0,
'Ritesh','Harveer','Riya','23/05/1997','Male','9049382847','ritesh684@gmail.com','Noida'

exec SP_Student 'CREATE', 0,
'Geeta','Diljeet','Poonam','13/06/1994','Female','8969382847','geeta3948@gmail.com','Greater Noida'



