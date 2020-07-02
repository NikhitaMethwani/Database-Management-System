drop view if exists shipping_details; 
create view shipping_details as
select 
customer_order_details.idorder,
customer_order_details.iduser,
customer.customer_name,
customerdetails.customer_address1,
customerdetails.customer_address2,
customerdetails.customer_city,
customerdetails.customer_state,
customerdetails.customer_postalcode,
customerdetails.customer_phonenumber,
customer_order_details.date_ordered_on,
customer_order_details.shipping_days,
customer_order_details.idcart
from customer_order_details
inner join customer
on customer_order_details.iduser = customer.idcustomer
inner join customerdetails
on customer_order_details.iduser = customerdetails.idcustomer
where customerdetails.customer_shipping_address=1
and customer_order_details.date_ordered_on >= '2020-01-04';

select * from shipping_details;


