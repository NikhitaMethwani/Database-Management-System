drop table if exists customer;
create table customer
(idcustomer varchar(10) primary key,
customer_name varchar(30),	
customer_dob varchar(20),
customer_age varchar(20)
);

select * from customer;	
show columns in customer;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.txt" IGNORE INTO TABLE customer FIELDS TERMINATED BY ',' ;

