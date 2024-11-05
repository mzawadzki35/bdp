WITH buffer AS (
	SELECT ST_Buffer(ST_Union(geom), 0.003) AS wkb_geometry
	FROM land_use_2019
	WHERE "type" ILIKE '%park%'
), sport_pois AS (
	SELECT geom FROM pois_2019 WHERE "type" LIKE 'Sporting Goods Store'
)

SELECT COUNT(CASE WHEN ST_Contains(left_table.wkb_geometry, right_table.geom) THEN 1 END) AS count
FROM sport_pois AS right_table
CROSS JOIN buffer AS left_table;