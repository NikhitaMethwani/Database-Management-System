use ecommerce;
show tables;
drop view if exists order_bill;
/* create a view to genearate the bill for each custmer */
create view order_bill as
select  cartitems.productId,
	    products.productname,
        products.productdescription,	
        cartitems.quantity as quantity_purchased,
        products.unitprice as cost_price,
        discount.discounttype as 'discount type',
        discount.discount_percent as 'discount%',
        products.unitprice - (products.unitprice * (discount.discount_percent/100)) as 'new price'
        from cartitems
        inner join products 
        on cartitems.productId = products.idproduct
        inner join shoppingcart 
        on cartitems.cartId = shoppingcart.idcart
        inner join discount 
        on cartitems.iddiscount = discount.iddiscount
        where cartitems.idorder is not null
        and shoppingcart.iduser = 'C1';
        
select * from order_bill;