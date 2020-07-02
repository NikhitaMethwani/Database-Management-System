use ecommerce;
drop table if exists customer_order_details;
create table customer_order_details
(idorder varchar(10),
iduser varchar(10),
idcart varchar(10),
date_ordered_on date,
shipping_days int,
total_products_ordered int,
idpayment varchar(10));

Alter table customer_order_details
add constraint primary key (idorder,iduser);

Alter table customer_order_details
add constraint fk_order_customer foreign key (iduser) references customer(idcustomer);
Alter table customer_order_details
add index fk_order_customer_idx (iduser);

Alter table customer_order_details
add constraint fk_order_payment foreign key (idpayment) references payment(idpayment);
Alter table customer_order_details
add index fk_order_payment_idx (idpayment);

Alter table customer_order_details
add constraint fk_order_cart foreign key (idcart) references shoppingcart(idcart);
Alter table customer_order_details
add index fk_order_cart_idx (idcart);

alter table customer_order_details drop foreign key fk_order_cart;

show indexes from customer_order_details;


INSERT INTO customer_order_details VALUES   ('O1','C1','CT1','2020-01-04',4,5,'PM1'),
											('O2','C3','CT3','2020-05-06',2,3,'PM2');
									
/*INSERT INTO customer_order_details VALUES   ('O3','C1','CT1','2020-01-04',4,5,'PM1'),
											('O4','C1','CT4','2020-06-23',2,3,'PM1'),
                                            ('O5','C2','CT1','2020-06-24',5,3,'PM3'),
                                            ('O6','C3','CT1','2020-06-23',2,3,'PM4');*/

select * from customer_order_details;	  
show columns in customer_ordproductcategoryproductcategoryer_details;

