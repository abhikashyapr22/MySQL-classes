use sales;

select * from customers;
select * from products;
select  * from markets;
select * from date;
select * from profit;   # empty table
select * from transactions;

-- > The major difference between inner and outer 
-- joins is that inner joins result in the intersection of two tables, 
-- whereas outer joins result in the union of two tables

-- > RIGHT JOIN is similar to LEFT JOIN. This join returns all the rows of the 
-- table on the right side of the join and matching rows for the table on the left side of the join. 
-- For the rows for which there is no matching row on the left side, the result-set will contain null. 
-- RIGHT JOIN is also known as RIGHT OUTER JOIN

-- > There is no difference between RIGHT JOIN and RIGHT OUTER JOIN . Both are the same

-- > The major difference between inner and outer joins is that inner joins result in the
--  intersection of two tables, whereas outer joins result in the union of two tables

select c.custmer_name, t.*  from                   -- > common results from both tables excluding null from both tables
customers c inner join transactions t
ON c.customer_code = t.customer_code;

select c.custmer_name, t.*  from                 -- > other way of inner join
customers c, transactions t where c.customer_code = t.customer_code;

select c.custmer_name, t.sales_amount  from 
customers c inner join transactions t
ON c.customer_code = t.customer_code;

select c.custmer_name, t.sales_amount  from         -- > full outer join (can get results using union)
customers c right outer join transactions t
ON c.customer_code = t.customer_code 
UNION 
select c.custmer_name, t.sales_amount  from 
customers c left outer join transactions t
ON c.customer_code = t.customer_code;

select c.custmer_name, t.sales_amount  from            -- > everything from right and matching from left (including null also)
customers c right join transactions t
ON c.customer_code = t.customer_code;        

select c.custmer_name, t.sales_amount  from            -- > everything from left and matching from right (including null also)
customers c left join transactions t
ON c.customer_code = t.customer_code;        

select c.custmer_name, t.sales_amount  from           
customers c cross join transactions t
ON c.customer_code = t.customer_code; 