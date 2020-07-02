drop table if exists cartitems;
CREATE TABLE cartitems (
    cartItemId varchar(10) Primary Key NOT NULL,
    cartId varchar(30) NOT NULL,
    productId varchar(10) NOT NULL,
    idvendor varchar(20),
    quantity int NOT NULL,
    idorder varchar(10) null,
    iddiscount varchar(10) null  
);
select * from cartitems;
show columns from cartitems;
INSERT INTO cartitems VALUES   				('CIT1','CT1','P1','V1',2,'O1','D1'),
											('CIT2','CT1','P2','V1',1,'O1','D2'),
                                            ('CIT3','CT1','P3','V1',3,'O1','D1'),
                                            ('CIT4','CT1','P1','V1',4,'O1','D2'),
                                            ('CIT5','CT2','P1','V1',1,null,'D1'),
                                            ('CIT6','CT2','P4','V5',2,null,null),
                                            ('CIT7','CT2','P5','V2',3,null,'D3'),
                                            ('CIT8','CT3','P4','V5',5,'O2','D2'),
                                            ('CIT9','CT3','P2','V1',1,'O2',null);
INSERT INTO cartitems VALUES   				('CIT10','CT5','P2','V1',2,null,'D2'),
											('CIT11','CT5','P1','V1',4,null,'D1'),
                                            ('CIT12','CT5','P3','V2',3,null,'D2');
                                            
INSERT INTO cartitems VALUES   				('CIT13','CT6','P2','V1',2,null,'D2'),
											('CIT14','CT6','P1','V1',4,null,'D1'),
                                            ('CIT15','CT6','P3','V2',3,null,'D2');

INSERT INTO cartitems VALUES   				('CIT16','CT7','P2','V1',2,null,'D2'),
											('CIT17','CT7','P1','V1',4,null,'D1'),
                                            ('CIT18','CT7','P3','V2',3,null,'D2');
INSERT INTO cartitems VALUES   				('CIT19','CT8','P2','V1',2,null,'D2');
INSERT INTO cartitems VALUES   				('CIT20','CT9','P2','V1',2,null,'D2');	
INSERT INTO cartitems VALUES   				('CIT21','CT10','P2','V1',2,null,'D2');								
							
											
Alter table cartitems
add constraint fk_cartId foreign key (cartId) references shoppingcart(idcart);
Alter table cartitems
add index fk_cartId_idx (cartId);


Alter table cartitems
add constraint fk_productId foreign key (productId) references products(idproduct);
Alter table cartitems
add index fk_productId_idx (productId);

Alter table cartitems
add constraint fk_cartitems_vendor foreign key (idvendor) references vendor(idvendor);
Alter table cartitems
add index fk_cartitems_vendor_idx (idvendor);

Alter table cartitems
add constraint fk_cartitems_order foreign key (idorder) references customer_order_details(idorder);
Alter table cartitems
add index fk_cartitems_order_idx (idorder);

Alter table cartitems
drop foreign key fk_cartitems_order;

Alter table cartitems
drop foreign key fk_cartId;

Alter table cartitems
add constraint fk_cartitems_discount foreign key (iddiscount) references discount(iddiscount);
Alter table cartitems
add index fk_cartitems_discount_idx (iddiscount);



Alter table cartitems
drop foreign key fk_cartitems_discount;




select * from cartitems;
show columns from  cartitems;

show indexes from cartitems;