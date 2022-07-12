use classicmodels;

show tables;

select * from customers;

-- > concatenation
select concat('hello', ' ', 'world');

select concat(contactFirstname, ' ', contactLastName) from customers;
select trim(contactFirstName) from customers;

-- > trim is use to remove extra spaces
select concat(trim(contactFirstName), ' ', contactLastName) from customers; 

-- > Extracting a sub-string from a string
-- > select substr(" MY SQL tutorial", starting index, how many character)

select substr(" MY SQL tutorial", 5, 8) as substring;   

select substr(contactFirstName,1,3) as shor_name, contactFirstName from customers;

 -- > upper and lower
 select upper(substr(contactFirstName,1,3)) as shor_name, lower(contactFirstName) as Name from customers;
 
 -- > size of the string
 select character_length('Abhishek');
 
 select contactFirstName, character_length(trim(contactFirstName)) from customers;
 
 -- > Mid function, it is similar to substr function
 select mid('hello Abhishek',2,3);  
 select mid('Jonas',2,3) as mid; 
 
 
 
