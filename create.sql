CREATE TABLE publisher(
	id serial PRIMARY KEY,
	name text unique not null,
	country text not null
);

CREATE TABLE books(
	id serial PRIMARY KEY,
	title text unique not null,
	publisher serial references publisher(id) not null
);

CREATE TABLE subjects(
	id serial PRIMARY KEY,
	name text unique not null
);

CREATE TABLE books_subjects(
	book serial references books(id) not null,
	subject serial references subjects(id) not null
);
