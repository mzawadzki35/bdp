CREATE TABLE buildings (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);

CREATE TABLE roads (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);

CREATE TABLE poi (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);
