drop table if exists productcategory;
create table productcategory
(idproductcategory varchar(20) primary key ,
categoryname varchar(30)
);


select * from productcategory;
show columns in productcategory;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/productcategory.txt" IGNORE INTO TABLE productcategory FIELDS TERMINATED BY ',' ;