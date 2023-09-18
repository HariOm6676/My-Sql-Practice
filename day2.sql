create database day2;
use day2; 
create table customers(
customer_id int not null auto_increment,
name varchar(50) not null,
email varchar(50) not null,
primary key(customer_id)
);
create table orders(
order_id int not null auto_increment,
customer_id int not null,
order_date date not null,
total_amount decimal(10,2) not null,

primary key (order_id)
);
alter table orders add foreign key (customer_id) references customers(customer_id);
