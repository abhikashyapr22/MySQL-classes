use classicmodels;

select * from orders;

select orderNumber, datediff(sysdate(),orderDate) as date_difference from orders;

select date_format(orderDate, '%y'), orderDate from orders;
select date_format(orderDate, '%m'), orderDate from orders; 
select date_format(orderDate, '%d'), orderDate from orders;

select day(orderDate), orderDate from orders;
select quarter(orderDate), orderDate from orders;

select adddate('2017-05-15', INTERVAL 10 MONTH) AS next_date;
select adddate('2017-05-15', INTERVAL 10 YEAR) as next_year;
select adddate('2017-05-15', INTERVAL 10 quarter) as next_date;
