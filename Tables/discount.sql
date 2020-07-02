drop table if exists discount;
create table discount
(iddiscount varchar(10) primary key,
discounttype varchar(30),
discount_percent int
);

INSERT INTO discount VALUES ('D1','Cash Discount',10),
							('D2','Promotion',3),
							('D3','Buy 1 get 1 free',2),
							('D4','Seasonal Discount',5);



select * from discount;	
show columns in discount;