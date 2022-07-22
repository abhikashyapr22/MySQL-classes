

-- > window function
-- > A window funtion in MySQL used to do a calculation across a set of rows that are related to
-- the current row. The current row is that row for for which finction evaluation occurs.
-- Window function perform a calculation similar to a calculation done by using the aggregate functions 

-- Window functions applies aggregate and rankings function over a particular window (set of row)
-- Over clause is used with window functions to define that window.

-- Over clause do two things:
-- 1. Partitions rows into form set of rows (PARTITION BY clause is used).
-- 2. Orders rows within those partitions into a particular order (ORDER BY clause is used)

-- Row_number() -> Gives a sequestion integer to every row within its partition
-- Rank() function -> Ranking records 
-- First_value() finction -> Return the value of the specific expression with respect to 
-- first row in the window frame.

use classicmodels;

show tables;

select * from products;
select * from orders; 

create table productlinemsrp as
select productLine, sum(quantityInStock) as stock from products 
group by productLine 
order by stock desc;

select * from productlinemsrp;

-- row number

select row_number() over (order by productLine) as row_num, productLine, quantityInStock from products;

-- Rank()


use intromysql;
show tables;

show databases;

create table demo
( var_a int);

insert into demo values (101), (102), (103), (104), (105), (106), (107), (108);

select * from demo;

select var_a, 
rank() over (order by var_a) as test_ranks from demo;


use classicmodels;
show tables;

-- First_value ---
-- ways to find customer corresponding to the max value
-- 1. by using max function
-- 2. using limit clause to 1 

select * from payments;

select customerNumber from payments 
where amount = (select max(amount) from payments);

select customerNumber from payments   -- > generally limit is used to get top elements (top five or bottom five)
order by amount desc limit 1;

 select *, first_value(customerNumber) over (order by amount desc) as custID_co_h_amt
 from payments limit 1;
 
 
