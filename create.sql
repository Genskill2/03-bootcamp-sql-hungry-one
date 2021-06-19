CREATE TABLE publisher(
	id serial PRIMARY KEY,
	name text,
	country text
);

CREATE TABLE books(
	id serial PRIMARY KEY,
	title text,
	publisher serial references publisher(id)
);

CREATE TABLE subjects(
	id serial PRIMARY KEY,
	name text
);

CREATE TABLE books_subjects(
	book serial references books(id),
	subject serial references subjects(id)
);
