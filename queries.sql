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








	
