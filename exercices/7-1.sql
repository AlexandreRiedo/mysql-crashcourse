USE band;

SELECT
	m.musician_name,
	m.musician_type
FROM
	musician m
WHERE
	(m.phone LIKE '615%' OR m.phone LIKE '629%')
	AND m.musician_type LIKE '%Singer%';
