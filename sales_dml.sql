INSERT INTO sales(country, quantity, price_per_unit) VALUES ('UK', 10, 6.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('US', 6, 5.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('US', 3, 5.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('India', 15, 10.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('UK', 3, 6.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('US', 2, 5.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('India', 9, 10.99);
INSERT INTO sales(country, quantity, price_per_unit) VALUES ('China', 19, 7.99);

SELECT * FROM sales;
SELECT AVG(quantity), AVG(price_per_unit) from sales;
SELECT country, AVG(quantity) FROM SALES GROUP BY country;

UPDATE sales SET price_per_unit = 8.99 WHERE id = 5;
UPDATE sales SET price_per_unit = 7.99 WHERE id = 3;
UPDATE sales SET price_per_unit = 21.99 WHERE id = 7;
UPDATE sales SET price_per_unit = 8.99 WHERE id = 8;

SELECT country, AVG(quantity), price_per_unit FROM sales GROUP BY country;
