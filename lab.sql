CREATE TABLE person (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
   age INTEGER,
   height INTEGER,
   city VARCHAR(100),
   favorite_color VARCHAR(20)
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Arthur Dent', 30, 182, 'London', 'Blue'),
('Ford Prefect', 42, 167, 'Betelgeuse', 'Purple'),
('Slartibartfast', 9000, 185, 'Magrathea', 'Orange'),
('Marvin', 350, 121, 'Heart of Gold', 'Black'),
('Dirk Gently', 35, 180, 'London', 'Green');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

CREATE TABLE orders (
   order_id SERIAL PRIMARY KEY,
   person_id INT,
   product_name VARCHAR(50),
   product_price NUMERIC,
   quantity INT
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES 
(0, 'Tonkotsu Ramen', 7.50, 1),
(1, 'Curry', 10.00, 1),
(2, 'Ginger Tofu', 11.65, 1),
(3, 'Kung Pao Chicken', 14.65, 1),
(4, 'Peanut stir fry', 14.85, 1);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 3;

SELECT * FROM artist;

INSERT INTO artist
(name)
VALUES
('Monica Martin'), ('Lake Street Dive'), ('Nujabes');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name
LIMIT 5;

SELECT * FROM artist
WHERE name ILIKE 'black%';

SELECT * FROM artist
WHERE name ILIKE '%black%';

SELECT * FROM employee;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT max(birth_date) FROM employee;

SELECT min(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT * FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;