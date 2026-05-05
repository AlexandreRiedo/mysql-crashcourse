USE land;

DROP TABLE IF EXISTS customer;

CREATE TABLE customer 
(
	customer_id int, 
	first_name varchar(50),
	last_name varchar(50),
	address varchar(100),
	customer varchar(200), 
	PRIMARY KEY (customer_id)
);