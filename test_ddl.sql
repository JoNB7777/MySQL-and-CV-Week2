CREATE testdb IF NOT EXISTS;
USE testdb:

CREATE TABLE test (
	id int AUTO_INCREMENT,
    name varchar(40),
    PRIMARY KEY(id)
)