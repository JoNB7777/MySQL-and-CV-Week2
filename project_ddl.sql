CREATE DATABASE IF NOT EXISTS projectdb;
USE projectdb;

CREATE TABLE IF NOT EXISTS customers (
	id int AUTO_INCREMENT,
    customer_name varchar(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS items (
	id int AUTO_INCREMENT,
    item_name varchar(50) NOT NULL,
    item_value dec(7,2) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS orders (
	id int AUTO_INCREMENT,
    customer_id int,
    cost int,
    PRIMARY KEY(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
    
CREATE TABLE IF NOT EXISTS items_in_order (
	id int AUTO_INCREMENT,
    item_id int,
    item_value dec(7,2),
    quantity int NOT NULL,
    order_id int,
    PRIMARY KEY(id),
    FOREIGN KEY (item_id) REFERENCES items(id),
    -- FOREIGN KEY (item_value) REFERENCES items(item_value),
    FOREIGN KEY (order_id) REFERENCES orders(id)
);

CREATE TABLE IF NOT EXISTS customer_item (
	id int AUTO_INCREMENT,
    item_id int,
    customer_id int,
    quantity int,
    PRIMARY KEY(id),
    FOREIGN KEY (item_id) REFERENCES items(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);



	