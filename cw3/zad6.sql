WITH intersections AS (
    SELECT node_id, ST_Transform(ST_SetSRID(geom, 4326), 3068) AS geometry
    FROM street_node_2019 AS a
    WHERE a."intersect" = 'Y'
), new_line AS (
    SELECT ST_MakeLine(geometry) AS geometry FROM input_points
)
SELECT DISTINCT(left_table.*)
FROM intersections AS left_table
CROSS JOIN new_line AS right_table
WHERE ST_Contains(ST_Buffer(right_table.geometry, 0.002), left_table.geometry);
