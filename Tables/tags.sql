drop table if exists tags;
create table tags
(idtag varchar(10) primary key,
tagname varchar(30)
);

select * from tags;	
show columns in tags;
LOAD DATA INFILE  "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tags.txt" IGNORE INTO TABLE tags FIELDS TERMINATED BY ',' ;