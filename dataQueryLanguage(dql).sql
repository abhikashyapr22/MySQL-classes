use intromysql;

show tables;

create table empinfo
(
firstname varchar(20),
lastname varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
PRIMARY key(id)
);

select * from empinfo;

INSERT into empinfo values('John', 'Jones', 99980,24, 'Payson', 'Arizona');
INSERT into empinfo values('Marry', 'Edward', 99981,25, 'Diego', 'california');
INSERT into empinfo values('Eric', 'Smith', 99982,23, 'Phonex', 'Arizona');
INSERT into empinfo values('Mary', 'Brown', 99983,25, 'lsa', 'Arizona');
INSERT into empinfo values('Ginger', 'William', 99984,24, 'Payson', 'Arizona');
INSERT into empinfo values('Leroy', 'Howel', 99985,26, 'Payson', 'Arizona');
INSERT into empinfo values('Perry', 'Paul', 99986,24, 'Payson', 'Arizona');
INSERT into empinfo values('Abhi', 'kashyap', 99987,25, 'Haridwar', 'UK');
INSERT into empinfo values('Divyesh', 'Chaudhary', 99988,24, 'Pantnagar', 'UK');

select firstname, lastname from empinfo;

select count(id) from empinfo;

select count(id) as Record_count from empinfo;

select firstname as name, lastname as surname from empinfo;

select firstname, lastname, city from empinfo;

select * from empinfo where age > 25;
select * from empinfo where age > 24 and age < 26;
select * from empinfo where firstname like 'e%';
select *from empinfo where lastname like 's%';
select *from empinfo where lastname like '%s';

select * from empinfo where age = 24 or age = 25;
select * from empinfo where age in (24,25);
select * from empinfo where age in (24,25,26);

select * from empinfo where state like '%f%';
select * from empinfo where city like '%r%';
select * from empinfo where city like '%ar';