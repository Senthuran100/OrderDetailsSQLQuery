CREATE database order_details

use order_details

CREATE table customers (
ID int NOT NULL auto_increment primary key,
Name varchar(64) NOT NULL,
Description varchar(64)
);

CREATE table products (
ID int NOT NULL auto_increment primary key,
Name varchar(64) NOT NULL,
Price decimal(19,2) NOT NULL,
Description varchar(64)
);


CREATE table orders (
ID int NOT NULL auto_increment primary key,
Date date,
customer_id int,
status int not null default 1,
constraint fk_customer_id foreign key (customer_id) references customers (ID)
)

CREATE table orders_item (
ID int NOT NULL auto_increment primary key,
order_id int not null, 
item_id int not null, 
quantity decimal(19,3) not null, 
price decimal(19,3) not null,
constraint fk_order_id foreign key (order_id) references orders (ID),
constraint fk_item_id  foreign key (item_id) references products (ID)
)

use order_details

insert into customers (`Name`,`Description`) values ('John Doe','sample customers')
insert into customers (`Name`,`Description`) values ('customer 2','sample customers')
insert into customers (`Name`,`Description`) values ('customer 3','sample customers')

insert into products (`Name`,`Price`,`Description`) values ('product1',10,'sample product')
insert into products (`Name`,`Price`,`Description`) values ('product2',12.50,'sample product')
insert into products (`Name`,`Price`,`Description`) values ('product3',100.25,'sample product')

insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),1,1)
insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),1,1)
insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),1,2)
insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),2,1)
insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),3,2)
insert into orders (`Date`,`customer_id`,`status`) values (CURDATE(),2,2)


insert into orders_item (`order_id`,`item_id`,`quantity`,`price`) values (1,1,3,2)
insert into orders_item (`order_id`,`item_id`,`quantity`,`price`) values (1,2,2,2)
insert into orders_item (`order_id`,`item_id`,`quantity`,`price`) values (2,3,2,2)
insert into orders_item (`order_id`,`item_id`,`quantity`,`price`) values (3,3,4,2)








	
