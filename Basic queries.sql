create database IntroMysql;

use IntroMysql;

create table Students
(
student_id int,
student_name varchar(20),
age int,
gender varchar(6),
location varchar(50),
primary KEY (student_id)
)
select * from Students;

create table dep
(
depid int,
depname varchar(25),
depadd varchar(50)
primary key (depid)
)

select * from dep

create table emp
(
empid int,
empname varchar(20),
depadd varchar(50),
depid int,
PRIMARY KEY (empid)
)
FOREIGN KEY (depid) REFERENCES dep(depid)
)
select * from emp

