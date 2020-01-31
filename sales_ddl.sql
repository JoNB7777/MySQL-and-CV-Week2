CREATE DATABASE IF NOT EXISTS salesdb;
use salesdb;

CREATE TABLE IF NOT EXISTS sales (
	id int AUTO_INCREMENT,
    country varchar(30),
    quantity int,
    price_per_unit dec(7,2),
    PRIMARY KEY(id)
);
