WITH rank_area AS (
	SELECT name, geometry, RANK () OVER (ORDER BY ST_Area(geometry) DESC) as rank_area
	FROM buildings
)

SELECT name, ST_Perimeter(geometry) AS Perimeter 
FROM rank_area
ORDER BY rank_area
LIMIT 2;
