USE nutrition;

SELECT snack_name FROM good_snack
UNION
SELECT snack_name FROM bad_snack;