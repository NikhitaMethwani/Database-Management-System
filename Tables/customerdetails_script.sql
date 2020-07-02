SHOW GLOBAL VARIABLES LIKE 'local_infile';
LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer_data.txt" IGNORE INTO TABLE customer;
SHOW VARIABLES LIKE "secure_file_priv";
use ecommerce;
show tables;
show columns in customer;
Alter table customer MODIFY idcustomer varchar (25);
Select * from customer;
drop table if exists customerdetails;
create table customerdetails(
idaddress int primary key auto_increment,
idcustomer varchar(10),
customer_address1 varchar(20),
customer_address2 varchar(20),
customer_city varchar(20),
customer_state varchar(20),
customer_country varchar(20),
customer_postalcode varchar(20),
customer_phonenumber varchar(11),
customer_email varchar(30),
customer_shipping_address boolean,
customer_billing_address boolean,
KEY fk_idcustomer_idx (idcustomer),
CONSTRAINT fk_idcustomer FOREIGN KEY (idcustomer)
      REFERENCES customer (idcustomer)
) 
select * from customerdetails;
show columns from customerdetails;


LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customerdetails_data.txt" IGNORE INTO TABLE customerdetails FIELDS TERMINATED BY ',' ;

SHOW INDEXES FROM customerdetails;
