CREATE TABLE publisher(
        id int PRIMARY KEY AUTOINCREMENT,
        name text unique not null,
        country text not null
);

CREATE TABLE books(
        id int PRIMARY KEY AUTOINCREMENT,
        title text unique not null,
        publisher serial references publisher(id) not null
);

CREATE TABLE subjects(
        id int PRIMARY KEY AUTOINCREMENT,
        name text unique not null
);

CREATE TABLE books_subjects(
        book int references books(id) not null,
        subject int references subjects(id) not null
);
