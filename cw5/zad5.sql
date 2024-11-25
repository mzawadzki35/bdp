SELECT ST_Area(ST_Buffer(ST_Union(ST_Force3D(geometry)), 5)) 
FROM obiekty
WHERE NOT ST_HasArc(geometry)