drop table if exists vendor;
create table vendor
(idvendor varchar(10) primary key,
vendor_name varchar(30) unique,
vendor_since year not null,
vendor_email varchar(30)
);


select * from vendor;	
show columns in vendor;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/vendor.txt" IGNORE INTO TABLE vendor FIELDS TERMINATED BY ',' ;