use mysql_python;

create table user_accounts
(
User_ID int Not NUll Auto_Increment,
First_Name Varchar(20) Not Null,
Last_Name Varchar(20),
Gender Varchar(20),
Country Varchar(20),
Email Varchar(100) Not null,
Create_password varchar(50) not null,
Confirm_password varchar(50) not null,
constraint Primary Key (User_ID)
);

select * from user_accounts;

insert into user_accounts values(1, "Abhishek", "Kashyap", "Male", "India", "abhi@gmail.com", "jkfljaagkl", "shfajnjkda;ah");

insert into user_accounts (First_Name, Last_Name, Gender, Country, Email, Create_password, Confirm_password) 
values("Divyesh", "Chaudhary", "Male", "India", "divyesh@gmail.com", "jkfljaagkl", "shfajnjkda;ah");

insert into user_accounts (First_Name, Last_Name, Gender, Country, Email, Create_password, Confirm_password) 
values("Abhishek", "Pandey", "Male", "India", "ap@gmail.com", "jkfljaagkl", "shfajnjkda;ah"),
("Vikrant", "Chauhan", "Male", "India", "Vikrant@gmail.com", "jkfljaagkl", "shfajnjkda;ah");

