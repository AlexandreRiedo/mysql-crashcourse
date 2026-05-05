DROP DATABASE IF EXISTS athletic;

CREATE DATABASE athletic;

USE athletic;

DROP TABLE IF EXISTS sport;

CREATE TABLE sport
(
	sport_id int,
	sport_name varchar(50),
	PRIMARY KEY (sport_id)
);

DROP TABLE IF EXISTS player;

CREATE TABLE player
(
	player_id int,
	player_name varchar(50),
	player_age int,
	sport_id int,
	PRIMARY KEY (player_id),
	FOREIGN KEY (sport_id) REFERENCES sport(sport_id)
);