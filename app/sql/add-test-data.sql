INSERT INTO authors (name)
VALUES ('Matti Luukkainen'),
	('Arto Vihavainen');

INSERT INTO journals(name)
VALUES	('Tieteellinen julkaisu'),
	('Pseudojulkaisu');

INSERT INTO bibtexrefs(author, title, journal, year, volume, pages)
VALUES 	(1, 'Java on kivaa', 2, 2002, 5, '23-23'),
	(2, 'Ohjelmoinnin ihmeet', 1, 2014, 1, '56-59');
