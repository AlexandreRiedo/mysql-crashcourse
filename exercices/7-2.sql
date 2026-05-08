USE airport;

SELECT *
FROM boarding b
WHERE 
	b.license_flag IS TRUE 
	AND (b.student_id_flag IS TRUE OR b.soc_sec_card_flag IS TRUE);