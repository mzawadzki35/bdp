INSERT INTO buildings(name, geometry) 
VALUES
('BuildingA', ST_GeomFromEWKT('SRID=0;POLYGON((8 4, 10.5 4, 10.5 1.5, 8 1.5, 8 4))')),
('BuildingB', ST_GeomFromEWKT('SRID=0;POLYGON((4 7, 6 7, 6 5, 4 5, 4 7))')),
('BuildingC', ST_GeomFromEWKT('SRID=0;POLYGON((3 8, 5 8, 5 6, 3 6, 3 8))')),
('BuildingD', ST_GeomFromEWKT('SRID=0;POLYGON((9 9, 10 9, 10 8, 9 8, 9 9))')),
('BuildingF', ST_GeomFromEWKT('SRID=0;POLYGON((1 2, 2 2, 2 1, 1 1, 1 2))'));

INSERT INTO poi(name, geometry)
VALUES
('G', ST_GeomFromEWKT('SRID=0;POINT(1 3.5)')),
('H', ST_GeomFromEWKT('SRID=0;POINT(5.5 1.5)')),
('I', ST_GeomFromEWKT('SRID=0;POINT(9.5 6)')),
('J', ST_GeomFromEWKT('SRID=0;POINT(6.5 6)')),
('K', ST_GeomFromEWKT('SRID=0;POINT(6 9.5)'));

INSERT INTO roads(name, geometry)
VALUES
('RoadX', ST_GeomFromEWKT('SRID=0;LINESTRING(0 4.5, 12 4.5)')),
('RoadY', ST_GeomFromEWKT('SRID=0;LINESTRING(7.5 10.5, 7.5 0)'));