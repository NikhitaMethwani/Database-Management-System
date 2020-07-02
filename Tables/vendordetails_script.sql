drop table if exists vendordetails;
create table vendordetails
(idadress int primary key auto_increment,
idvendor varchar(10),
vendor_address1 varchar(30) not null,
vendor_address2 varchar(30) not null,
vendor_city varchar(30) not null,
vendor_state varchar(3) not null,
vendor_country varchar(10) not null,
vendor_phonenumber int(11) not null
);

alter table vendordetails
modify vendor_phonenumber varchar(11);
select * from vendordetails;	
show columns in vendordetails;
Alter table vendordetails
add constraint fk_vendordetails_vendor foreign key (idvendor) references vendor(idvendor);
Alter table vendordetails
add index fk_vendordetails_vendor_idx (idvendor);
show indexes from vendordetails;

LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/vendordetails.txt" IGNORE INTO TABLE vendordetails FIELDS TERMINATED BY ',' ;