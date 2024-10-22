WITH point_k_geometry AS (
	SELECT geometry
	FROM poi 
	WHERE name = 'K' 
), building_c_geometry AS (
	SELECT geometry
	FROM buildings
	WHERE name = 'BuildingC'
)

SELECT ST_Distance(a.geometry, b.geometry) AS distance
FROM point_k_geometry AS a
CROSS JOIN building_c_geometry AS b;