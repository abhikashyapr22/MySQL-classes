use classicmodels;

select * from payments;

select max(amount) from payments;

select checkNumber, amount from payments where amount = (select max(amount) from payments);


-- > use cases of sub query
-- 1. while using aggregate function in condition statement
-- 2.

-- > Examples
-- > find the list of customers whose total charge > av total charge of all the customers

select customerNumber, amount from payments where amount > (select avg(amount) from payments);

select count(*) from payments where amount > (select avg(amount) from payments);

-- 2. Find the total count of customers whose amount > amount of given customers
-- 

create view aggre as
select customerNumber, sum(amount) as total_amount from payments 
group by customerNumber;

select count(*) from aggre where total_amount > (select total_amount from aggre where customerNumber = 171);

-- > Find the second highest total_amount from aggre
-- 		> highest total_amount 
select max(total_amount) from aggre;
-- 		> second highest
select customerNumber, max(total_amount) from aggre
where total_amount <> (select max(total_amount) from aggre);





