use classicmodels;

select * from customers;
select * from customers where contactLastName like '%t';

select * from customers where contactLastName like '%ch%';

select * from customers where contactLastName like 'ch%';

select * from customers where customerName regexp '^e';

-- > List of customers who has a customerName of letters : v-x
SELECT * from customers where contactFirstName like '%v%' 
OR contactFirstName like '%w'
OR contactFirstName like '%w';

select count(*) from customers where customerName regexp '[vwx]';  -- > 36
select count(*) from customers where customerName regexp '[v-x]'; -- > 36 same as last case







