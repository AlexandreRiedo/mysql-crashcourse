USE canada;

DROP TABLE IF EXISTS open_tourist_attraction;

CREATE TEMPORARY TABLE open_tourist_attraction
SELECT
	ta.attraction_city_id,
	ta.attraction_name
FROM
	tourist_attraction ta
WHERE
	ta.open_flag = TRUE;

SELECT
	ota.attraction_name,
	cc.city_name
FROM
	open_tourist_attraction ota
INNER JOIN capital_city cc
ON
	ota.attraction_city_id = cc.city_id
WHERE
	cc.city_name = 'Toronto';