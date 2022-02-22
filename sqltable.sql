-- This query used for create database
create database suresh
-- This query used for use database
use suresh
-- This query used for create table
create table Fulldetails(id int, name varchar(24), 
fathername varchar(23), mothername varchar(45), dob varchar(34),mob bigint)
-- This query used for insert data in table
insert into Fulldetails values (1,'ravi','Mohan','roshni', '23/4/2002',43434)
--This query used for show the table 
select * from student1
-- This query used for add another column in table
alter table student1 add Stu_add varchar(255)
--This query used for insert the data in particular column and update the value in any particular column
update student1 set Stu_Mothr_Name  ='Geeta' where Sr_No=2
-- This query used for drop or delete the paticular column from the table
alter table student1 drop column Stu_add
-- This query used for rename the particular column 
sp_rename 'student1.Stu_add', 'Student_Add','column'
-- This query used for particular search data in the table
select Stu_Mob_No,Stu_Name from student1 where Stu_Dob=2004
-- This query used for particular search data in the table with the help of 'like' keyword
select Stu_Dob , Stu_name from student1 where Stu_Mothr_Name like '%y'
-- This query used for particular search data in the table with the help of condition operator
select Stu_Name from student1 where Stu_Dob='2002' and Student_Add='Delhi'


---------
create table regions (region_id int identity (1,1) primary key , region_name varchar(25)default null)
select *from  regions

--------

create table countries ( country_id char(2) primary key, country_name varchar(40) default null, region_id int not null,
foreign key(region_id) references regions(region_id) on delete cascade on update cascade)
select * from countries

--------


create table locations(locations_id int identity (1,1) primary key,
street_address varchar(40) default null,postal_code varchar(12) default null,
city varchar(30) not null,state_province varchar(25) default null,
country_id char(2) not null
foreign key (country_id) references countries(country_id) on delete cascade on update cascade)
select * from locations

------
create table jobs(job_id int identity (1,1) primary key ,
job_title varchar (35)not null,
min_salary decimal(8,2) default null,
max_salary decimal(8,2) default null)
select * from jobs

-------

create table departments(department_id int identity (1,1) primary key,
 department_name varchar(30) not null,
 location_id int default null,
 foreign key (location_id) references locations (locations_id) on delete cascade on update cascade)

 select * from departments

 ---------

 create table employee(
 employee_id int identity(1,1) primary key, 
 first_name varchar(20) default null,
 last_name varchar(20) default null,
 email varchar(100) not null,
 phone_number varchar(20) default null,
 hire_date date not null,
 salary decimal (8,2) not null,
 manager_id int default null,
 department_id int default null,
  foreign key (job_id) references jobs (job_id) on delete cascade on update cascade,
  foreign key (department_id) references departments (department_id) on delete cascade on update cascade,
  foreign key (manager_id) references employee(employee_id)
  select * from employee

  ------

  create table department( dependent_id int identity(1,1) primary key, 
  first_name varchar(50) not null,
  last_name varchar(50) not null,
   relationship varchar (25) not null,
   employee_id int not null,
   foreign key (employee_id) references employees (employee_id) on delete cascade on update cascade)




