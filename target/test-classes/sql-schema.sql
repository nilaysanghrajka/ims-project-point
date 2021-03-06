create database if not exists ims;
drop table if exists ims.customers;
drop table if exists ims.items;
drop table if exists ims.orders;

create table if not exists ims.customers(id int primary key auto_increment, first_name varchar(40), surname varchar(40));
create table if not exists ims.items (id int primary key auto_increment, item_name varchar(40),item_value double);
create table if not exists ims.orders (id int primary key auto_increment, customer_id int NOT NULL, item_id int NOT NULL, units double, total_value double, FOREIGN KEY (customer_id) REFERENCES customers(id), FOREIGN key (item_id) REFERENCES items(id));
