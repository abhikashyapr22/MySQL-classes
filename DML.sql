use intromysql;

select * from empinfo;

INSERT into empinfo values('Vikrant', 'Chauhan',92001,25,'Dehradun', 'UK');
INSERT into empinfo values('Vikrant', 'Chauhan',92001,25,'Dehradun', 'UK');

create table emp_exercise
(
emp_name varchar(50),
designation varchar(50),
age int,
salary float
);

drop table emp_exercies;

select * from emp_exercise;

INSERT into emp_exercise values('Jonie Walker', 'Secretary', 28, 19500.00);
INSERT into emp_exercise values('Jonie Paul', 'Programmer', 26, 20500.00);
INSERT into emp_exercise values('Praveen Kashyap', 'Developer', 27, 22500.00);
INSERT into emp_exercise values('Shivani Sagar', 'Tester', 25, 30500.00);
INSERT into emp_exercise values('Sapna Joni', 'Manager', 29, 35500.00);
INSERT into emp_exercise values('Kapil Kumar', 'CTO', 30, 50500.00);

select * from emp_exercise;
select * from emp_exercise where salary > 30000;
select emp_name from emp_exercise where age < 30;
select emp_name, salary from emp_exercise where designation = "Programmer";
select * from emp_exercise where emp_name like '%ebe%';
select emp_name from emp_exercise where emp_name = 'Potsy';
select * from emp_exercise where age > 80;
select * from emp_exercise where emp_name like '%ar';

select emp_name, salary from emp_exercise where designation = "Programmer";
select emp_name, salary from emp_exercise where designation like "%Programmer%";

SET SQL_SAFE_UPDATES = 0;
update emp_exercise set designation = 'Sr Developer' where designation = 'Developer';
update emp_exercise set designation = 'Sr Manager', age = 30 where designation = 'Manager';

select * from emp_exercise;

delete from emp_exercise where age = 25;

update emp_exercise set age = age + 1 where emp_name = 'Praveen Kashyap';

show tables;

select * from students;


