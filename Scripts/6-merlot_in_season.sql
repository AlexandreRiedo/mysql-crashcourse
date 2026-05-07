SELECT
	c.country_name,
	r.region_name,
	viti.viticultural_area_name,
	wi.winery_name
FROM
	wine_type AS w
INNER JOIN portfolio AS po
ON
	w.wine_type_id = po.wine_type_id
	AND
	po.in_season_flag = TRUE
	AND
	w.wine_type_name = 'Merlot'
INNER JOIN winery AS wi
ON
	po.winery_id = wi.winery_id
	AND
	wi.offering_tours_flag = TRUE
INNER JOIN viticultural_area AS viti
ON
	wi.viticultural_area_id = viti.viticultural_area_id
INNER JOIN region AS r
ON
	viti.region_id = r.region_id
INNER JOIN country AS c
ON 
	r.country_id = c.country_id
	AND
	c.country_name = 'USA';