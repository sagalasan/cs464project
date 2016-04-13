load data local infile 'employees.csv'
into table cs464_employees
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'clients.csv'
into table cs464_clients
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'items.csv'
into table cs464_items
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'groups.csv'
into table cs464_groups
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'transactions.csv'
into table cs464_transactions
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'updates.csv'
into table cs464_updates
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data local infile 'categories.csv'
into table cs464_categories
fields terminated by '|' enclosed by '"'
lines terminated by '\n'
ignore 1 rows;