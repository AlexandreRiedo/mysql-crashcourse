SELECT
	employee_id,
	hat_size
FROM
	wardrobe
WHERE
	employee_id IN
        (
		SELECT
			employee_id
		FROM
			employee
		WHERE
			position_name = 'Pope'
	);