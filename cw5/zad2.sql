WITH obiekt3_geometry AS (
	SELECT geometry FROM obiekty WHERE "name" = 'obiekt3'
),
obiekt4_geometry AS (
	SELECT geometry FROM obiekty WHERE "name" = 'obiekt4'
)

SELECT ST_Area(ST_Buffer(ST_ShortestLine(left_table.geometry, right_table.geometry), 5))
FROM obiekt3_geometry AS left_table
CROSS JOIN obiekt4_geometry AS right_table;