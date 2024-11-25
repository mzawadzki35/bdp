WITH polygon_geometry AS (
	SELECT ST_MakePolygon(ST_AddPoint(geometry, ST_StartPoint(geometry)))
	FROM obiekty
	WHERE "name" = 'obiekt4'
)

UPDATE obiekty
SET geometry = (SELECT * FROM polygon_geometry)
WHERE "name" = 'obiekt4';