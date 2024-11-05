SELECT DISTINCT(ST_Intersection(left_table.geom, right_table.geom)) AS wkb_geometry
INTO T2019_KAR_BRIDGES
FROM railways_2019 AS left_table
CROSS JOIN water_lines_2019 AS right_table
WHERE ST_Intersects(left_table.geom, right_table.geom)