use intromysql;

create table emp_records
(
firstname varchar(20),
lastname varchar(20),
title varchar(5),
age int,
salary int
)

select * from emp_records;

ALTER table
emp_records
ADD gender
varchar(1);

ALTER table
emp_records
ADD random
varchar(1);

select * from emp_records;

ALTER table
emp_records
drop random;

show tables;

show databases;

drop table dep;

drop database abhishekdb;

