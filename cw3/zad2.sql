WITH buildings AS (
	SELECT left_table.*
	FROM buildings_2019 AS left_table
	LEFT JOIN buildings_2018 AS right_table 
	ON left_table.geom = right_table.geom AND left_table.height = right_table.height
	WHERE right_table.geom IS NULL
), buffer AS (
	SELECT ST_Buffer(ST_Union(geom), 0.005) AS geom FROM buildings
), new_poi AS (
	SELECT left_table.*
	FROM pois_2019 AS left_table
	LEFT JOIN pois_2018 AS right_table
	ON left_table.geom = right_table.geom
	WHERE right_table.geom IS NULL
), count_poi AS (
	SELECT COUNT(CASE WHEN ST_Contains(left_table.geom, right_table.geom) THEN 1 END) AS count, type
	FROM new_poi AS right_table
	CROSS JOIN buffer AS left_table
	GROUP BY type
)

SELECT * 
FROM count_poi
WHERE count != 0
ORDER BY count DESC;