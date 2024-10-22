WITH building_b_buffer AS(
	SELECT ST_Buffer(geometry, 0.5, 16) AS geometry
	FROM buildings
	WHERE name = 'BuildingB'
), building_c AS(
	SELECT geometry
	FROM buildings
	WHERE name = 'BuildingC'
)

SELECT ST_Area(ST_Difference(a.geometry, b.geometry)) AS area
FROM building_c AS a
CROSS JOIN building_b_buffer AS b;