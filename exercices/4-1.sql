CREATE DATABASE rapper;

USE rapper;

CREATE TABLE album 
(
	rapper_id 				SMALLINT UNSIGNED,
	album_name 				VARCHAR(100),
	explicit_lyrics_flag 	BOOL,
	album_revenue 			DECIMAL(12, 2),
	album_content 			LONGBLOB
);