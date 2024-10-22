WITH building_centroids AS (
	SELECT ST_Y(ST_Centroid(geometry)) AS y, name, id, geometry
	FROM buildings
), roadX_geometry AS (
	SELECT ST_Y(ST_Centroid(geometry)) AS y
	FROM roads
	WHERE name = 'RoadX'
)

SELECT a.id, a.name, ST_AsText(a.geometry) AS geometry
FROM building_centroids AS a
CROSS JOIN roadX_geometry AS b
WHERE a.y > b.y;