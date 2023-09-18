create database day1;
use day1;
create table tbl1(
id int  not null,
name varchar(30),
email varchar(30),
password varchar(30)
);
desc tbl1;
drop table tbl1;
desc tbl1;
insert into tbl1 (id,name,email,password) values ( 1, "user1","user1@gmail.com", "user1");
insert into tbl1 (id,name,email,password) 
values ( 2, "user2","user2@gmail.com", "user2"),
( 3, "user3","user3@gmail.com", "user3"),
( 4, "user4","user4@gmail.com", "user4");
select * from tbl1;
set sql_safe_updates=0;
update tbl1 set name = "HariOm",password="Mehtab" where id=2	;
delete from tbl1 where id=1;	
use day1;
create table tbl2(
id int primary key,
title varchar(30),
body int
);
drop table tbl2;