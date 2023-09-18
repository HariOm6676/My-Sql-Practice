use day1;
select sum(id) from tbl1;
select avg(id) from tbl1;
select count(email) from tbl1;
select max(id) from tbl1;
create table tbl3(
id int primary key,
title varchar(30),
body varchar(30),
user_id int
);
insert into tbl3 (id,title, body,user_id) 
values ( 1, "Harry1","Lean",1),
(2,"Harry2", "Slim", 4),
(3,"Harry3","Fit",5);
select * from tbl3 order by id desc;
select user_id from tbl3 order by id desc;
create table cats(
id int primary key not null auto_increment,
name varchar(30)
);
insert into cats (name) values ("Ruby") , ("Jerry") , ("Kerry");
CREATE TABLE customers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  country VARCHAR(255) NOT NULL,
  gender VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO customers (name, country, gender) VALUES ('John Doe', 'United States', 'male');
INSERT INTO customers (name, country, gender) VALUES ('Jane Doe', 'United States', 'female');
INSERT INTO customers (name, country, gender) VALUES ('Peter Jones', 'United Kingdom', 'male');
INSERT INTO customers (name, country, gender) VALUES ('Mary Jones', 'United Kingdom', 'female');
INSERT INTO customers (name, country, gender) VALUES ('Paul Smith', 'Canada', 'male');
INSERT INTO customers (name, country, gender) VALUES ('Susan Smith', 'Canada', 'female');
INSERT INTO customers (name, country, gender) VALUES ('David Williams', 'Australia', 'male');
INSERT INTO customers (name, country, gender) VALUES ('Sarah Williams', 'Australia', 'female');
SELECT gender,name, count(*) AS num_customers
FROM customers
group by gender,name
ORDER BY num_customers DESC;
alter table customers add column c_id timestamp;
alter table customers drop column c_id ;
select * from cats;
select gender as gen from customers;
select * from customers full join cats ;
select * from cats cross join customers;
select cats.name, customers.name from cats inner join customers on cats.id= customers.id;
select * from customers where name like "j%";
select * from customers where name like "%e";
select * from customers where name like "%e%";
select * from customers where name like "_ane doe";

