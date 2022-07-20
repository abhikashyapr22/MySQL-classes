
use classicmodels;

select * from customers;

create view usa as
select * from customers where country = 'USA';
select * from usa;

select * from productlines;

select * from products;

create view prod_cam as 
select a.productCode, a.productName, a.productline, a.MSRP, b.textDescription
from products a, productlines b
where a.productLine = b.productLine;

select * from prod_cam;



