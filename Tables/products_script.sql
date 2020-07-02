use ecommerce;
drop table if exists  products;
create table products 
(idproduct varchar(20) primary key,
sku varchar(20),
productname varchar(20),
productdescription varchar(30),
idproduct_category varchar(20),
idvendor varchar(20),
unitprice float4,
instock double,
idtag varchar(20)
)	;
show tables;
	
show columns in products;

# Alter table products modify idproduct int auto_increment;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/productdetails_data.txt" IGNORE INTO TABLE products FIELDS TERMINATED BY ',' ;
select * from products;
update  products
set Instock = 3
where idproduct = 6;

Alter table products 
add constraint fk_product_productcategory foreign key (idproduct_category) references  productcategory(idproductcategory);
alter table products
modify idvendor varchar(10);
Alter table products 
add constraint fk_products_vendor foreign key (idvendor) references  vendor(idvendor);
alter table products
modify idtag varchar(10);

Alter table products 
add index fk_products_vendor_idx  (idvendor);

Alter table products 
add index fk_product_productcategory_idx  (idproduct_category);



show columns from products;

select * from products;

show indexes from products;
