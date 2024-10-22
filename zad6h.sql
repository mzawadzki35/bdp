WITH building_c AS (
	SELECT geometry
	FROM buildings
	WHERE name = 'BuildingC'
)

-- ST_Union(A,B) - ST_Intersection(A,B)
SELECT ST_Area(
	ST_SymDifference(
		geometry, 
		ST_GeomFromEWKT('SRID=0;POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
	)
)
FROM building_c;