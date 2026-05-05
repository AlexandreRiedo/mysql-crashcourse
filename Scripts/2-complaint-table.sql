USE land;

DROP TABLE IF EXISTS complaint;

CREATE TABLE complaint
	(
	complaint_id int,
	customer_id int,
	complaint varchar(200),
	PRIMARY KEY (complaint_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);