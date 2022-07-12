use sales;

-- > order by 

select * from customers;
select * from customers order by custmer_name;

select * from customers order by customer_type;


-- > Having clause

select * from transactions;
select * from transactions 
HAVING sales_qty > 50;

select * from transactions 
where sales_qty > 50;

-- > where clause can't be use with aggregate functions

select market_code, count(*) as count from transactions   -- > cannot perform this query using where clause, since where clause comes before group by clause
group by market_code having count > 1000;

-- > oerder by comes at the last of the query
 
select product_code, count(sales_qty) as count from transactions 
group by product_code having count > 1000 order by count desc;


-- > Using the limit clause, use at the end

select * from transactions;

select product_code, count(sales_qty) as count from transactions 
group by product_code having count > 1000 order by count desc limit 5;

select product_code, sum(sales_amount) as total_sale from transactions
group by product_code having total_sale > 10000 order by total_sale;

select product_code, sum(sales_amount) as total_sale from transactions
group by product_code having total_sale > 10000 order by total_sale desc limit 10;






