CREATE DATABASE solar_system;

USE solar_system;

CREATE TABLE planet 
(
	planet_id INT AUTO_INCREMENT,
	planet_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (planet_id)
);

INSERT INTO planet (planet_name)
VALUES 
	('Mercury'),
	('Venus'),
	('Earth'),
	('Mars'),
	('Jupiter'),
	('Saturn'),
	('Uranus'),
	('Neptune');


CREATE TABLE ring
(
	planet_id INT,
	ring_tot INT,
	FOREIGN KEY (planet_id) REFERENCES planet(planet_id),
	PRIMARY KEY (ring_tot)
);

INSERT INTO ring
VALUES
	(5, 3),
	(6, 7),
	(7, 13),
	(8, 6);