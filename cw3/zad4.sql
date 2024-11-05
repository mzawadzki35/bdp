CREATE TABLE input_points (
	id SERIAL PRIMARY KEY,
	geometry geometry
);
INSERT INTO input_points(geometry)
VALUES
('POINT(8.36093 49.03174)'),
('POINT(8.39876 49.00644)');