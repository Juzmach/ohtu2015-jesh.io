CREATE TABLE authors
(
	authorID SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE journals
(
	journalID SERIAL PRIMARY KEY,
	name VARCHAR(30)
);

CREATE TABLE bibtexrefs 
(
	refID SERIAL PRIMARY KEY,
	author INTEGER references authors(authorID),
	title VARCHAR(50),
	journal INTEGER references journals(journalID),
	year INTEGER,
	volume INTEGER,
	pages VARCHAR(10)

);

