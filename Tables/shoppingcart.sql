use ecommerce;
drop table if exists shoppingcart;
create table shoppingcart
(idcart varchar(10),
iduser varchar(30),	
date_created date,
checkedOut boolean Default 0);


select * from shoppingcart;
show columns from shoppingcart;	
INSERT INTO shoppingcart VALUES ('CT1','C1','2020-01-04',1),
							('CT2','C2','2019-05-06',0),
							('CT3','C3','2019-07-09',1);
INSERT INTO shoppingcart VALUES ('CT4','C4','2020-11-06',0),
								('CT5','C5','2019-07-03',0);

INSERT INTO shoppingcart VALUES ('CT6','C6','2020-11-06',0),
								('CT7','C7','2020-11-06',0);

INSERT INTO shoppingcart VALUES ('CT8','C8','2020-11-06',0);
INSERT INTO shoppingcart VALUES ('CT9','C9','2020-11-06',0);
INSERT INTO shoppingcart VALUES ('CT10','C10','2020-11-06',0);
                            

Alter table shoppingcart
add constraint pk_cart primary key (idcart,iduser);

Alter table shoppingcart
add constraint fk_cart_user foreign key (iduser) references customer(idcustomer);
Alter table shoppingcart
add index fk_cart_user_idx (iduser);

select * from shoppingcart;

show indexes from shoppingcart;