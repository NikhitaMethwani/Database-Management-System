drop table if exists payment;
create table payment
(idpayment varchar(10) primary key,
idcustomer varchar(30),	
paymenttype varchar(20),
cardtype varchar(20),
card_number varchar(20),
card_expiry_date date
);

select * from payment;	
show columns in payment;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/payment.txt" IGNORE INTO TABLE payment FIELDS TERMINATED BY ',' ;

Alter table payment
add constraint fk_idpay_user foreign key (idcustomer) references customer(idcustomer);
Alter table payment
add index fk_idpay_user_idx (idcustomer);

show indexes from payment;