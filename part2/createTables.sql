drop table if exists cs464_updates;
drop table if exists cs464_transactions;
drop table if exists cs464_categories;
drop table if exists cs464_items;
drop table if exists cs464_groups;
drop table if exists cs464_clients;
drop table if exists cs464_employees;

create table cs464_employees 
(
employee_id int,
first_name varchar(20),
last_name varchar(20),
address varchar(255),
PRIMARY KEY(employee_id)
);

create table cs464_clients
(
client_id int,
name varchar(255),
address varchar(255),
PRIMARY KEY(client_id)
);

create table cs464_groups
(
name varchar(255),
description varchar(255),
PRIMARY KEY(name)
);

create table cs464_items
(
item_id int primary key,
name varchar(255),
description varchar(255),
quantity int
);

create table cs464_categories
(
group_name varchar(255),
item_id int,
PRIMARY KEY(group_name, item_id),
FOREIGN KEY(group_name) REFERENCES cs464_groups(name),
FOREIGN KEY(item_id) REFERENCES cs464_items(item_id)
);

create table cs464_transactions
(
item_id int,
client_id int,
employee_id int,
date int,
quantity int,
price real,
order_type varchar(255),
PRIMARY KEY(item_id, client_id, employee_id, date),
FOREIGN KEY(item_id) REFERENCES cs464_items(item_id),
FOREIGN KEY(client_id) REFERENCES cs464_clients(client_id),
FOREIGN KEY(employee_id) REFERENCES cs464_employees(employee_id)
);

create table cs464_updates
(
item_id int,
employee_id int,
date int,
quantity_before int,
quantity_after int,
PRIMARY KEY(item_id, employee_id, date),
FOREIGN KEY(item_id) REFERENCES cs464_items(item_id),
FOREIGN KEY(employee_id) REFERENCES cs464_employees(employee_id)
);