CREATE TABLE obiekty (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);

INSERT INTO obiekty("name", geometry) 
VALUES
('obiekt1', 
	ST_CollectionExtract(
		ST_CurveToLine(
			ST_GeomFromEWKT(
	 			'SRID=0;GEOMETRYCOLLECTION(
					 LINESTRING(0 1, 1 1),
				 	 CIRCULARSTRING(1 1, 2 0, 3 1),
				 	 CIRCULARSTRING(3 1, 4 2, 5 1),
				 	 LINESTRING(5 1, 6 1)
	 			)'
 			)
		)
	)
)