SELECT left_table.*
FROM buildings_2019 AS left_table
LEFT JOIN buildings_2018 AS right_table 
ON left_table.geom = right_table.geom AND left_table.height = right_table.height
WHERE right_table.geom IS NULL;
