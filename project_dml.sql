INSERT INTO customers(customer_name) VALUES('Jake');
INSERT INTO customers(customer_name) VALUES('Peter');
INSERT INTO customers(customer_name) VALUES('Sarah');
INSERT INTO customers(customer_name) VALUES('Emily');
SELECT * FROM customers;

INSERT INTO items(item_name, item_value) VALUES ('Banana', 1.99);
INSERT INTO items(item_name, item_value) VALUES ('Mango', 3.99);
INSERT INTO items(item_name, item_value) VALUES ('Coconut', 4.99);
INSERT INTO items(item_name, item_value) VALUES ('Apple', 0.49);
SELECT * FROM items;
UPDATE items SET item_value = 3.29 WHERE id = 2;
DELETE FROM items WHERE id = 3;
DELETE FROM customers WHERE id = 4;
UPDATE customers SET customer_name = 'Jack' WHERE id = 1;

INSERT INTO orders(customer_id) VALUES (1);
INSERT INTO orders(customer_id) VALUES (1);
INSERT INTO orders(customer_id) VALUES (3);
INSERT INTO orders(customer_id) VALUES (4);
SELECT * FROM orders;

INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES  (1, 1.99, 7, 1);
INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES (3, 4.99, 1, 2);
INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES (2, 3.99, 2, 3);
INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES(3, 4.99, 1, 4);
INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES (3, 4.99, 1, 3);
INSERT INTO items_in_order(item_id, item_value, quantity, order_id) VALUES (4, 0.49, 5, 3);
SELECT* FROM items_in_order;
UPDATE items_in_order SET quantity = 3 WHERE id = 3;
DELETE FROM items_in_order WHERE id = 6;



