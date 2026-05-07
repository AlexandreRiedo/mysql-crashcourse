USE canada;

SELECT
	ta.attraction_name,
	cc.city_name,
	p.province_name
FROM
	tourist_attraction ta
INNER JOIN capital_city cc
ON
	ta.attraction_city_id = cc.city_id
INNER JOIN province p
		USING (province_id)
WHERE
	ta.open_flag = TRUE
	AND p.official_language = 'French';
	