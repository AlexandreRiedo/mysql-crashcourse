USE solar_system;

-- 5-1
SELECT *
FROM planet p INNER JOIN ring c
USING (planet_id);

-- 5-2
SELECT
	p.*,
	c.ring_tot
FROM
	planet p
LEFT JOIN ring c
ON
	p.planet_id = c.planet_id;

-- 5-3
SELECT
	*
FROM
	ring r
RIGHT JOIN planet p
		USING (planet_id);

-- 5-4
SELECT
	p.planet_id,
	p.planet_name,
	r.ring_tot AS rings
FROM
	ring r
RIGHT JOIN planet p
ON
	r.planet_id = p.planet_id;