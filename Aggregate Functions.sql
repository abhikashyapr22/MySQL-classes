use intromysql;

show tables;

select * from empinfo;

select count(id) from empinfo;

select age, count(*) from empinfo
group by age;

select age, state, count(*) from empinfo
group by age, state order by state asc;


select min(age) from empinfo;
select max(age) from empinfo;