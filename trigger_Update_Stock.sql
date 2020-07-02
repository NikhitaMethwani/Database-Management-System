use ecommerce;
select * from products;
select * from cartitems;
select productId,
products.instock,
products.instock - sum(quantity) as'available_stock',
sum(quantity)
from cartitems
inner join products
on cartitems.productid = products.idproduct
where idorder = 'O1'
group by (productId);

delimiter //
create trigger update_check_order
after insert on customer_order_details
for each row 
begin
/*Declare l_cartItemId varchar(10);*/

update shoppingcart 
SET 
    checkedOut = 1
WHERE
    idcart = new.idcart
    and
    iduser = new.iduser	;

/*SET l_cartItemId=(SELECT cartItemId FROM cartitems WHERE cartId=New.idcart);*/

update cartitems 

SET 
    idorder = new.idorder
WHERE
    cartId = new.idcart; 

end //
select * from shoppingcart;
select * from customer_order_details;
select * from cartitems;

insert into customer_order_details values ('O3','C2','CT2','2020-12-15',10,25,'PM3');
insert into customer_order_details values ('O4','C4','CT4','2020-11-08',1,3,'PM2');
insert into customer_order_details values ('O5','C5','CT5','2020-08-08',1,3,'PM1');
insert into customer_order_details values ('O6','C6','CT6','2020-08-08',1,3,'PM1');
insert into customer_order_details values ('O7','C7','CT7','2020-08-08',1,3,'PM1');
insert into customer_order_details values ('O8','C8','CT8','2020-08-08',1,3,'PM1');
insert into customer_order_details values ('O9','C9','CT9','2020-08-08',1,3,'PM1');
insert into customer_order_details values ('O10','C10','CT10','2020-08-08',1,3,'PM1');




