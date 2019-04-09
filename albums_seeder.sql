USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 66, 'Pop, Rock'),
       ('AC/DC', 'Back in Black', 1980, 50, 'Hard Rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 43, 'Hard Rock'),
       ('Fleetwood Mac', 'Rumours', 1977, 40, 'Soft Rock'),
       ('Celine Dion', 'Falling into You', 1996, 32, 'Soft Rock'),
       ('Adele', '21', 2011, 31, 'Pop, Soul'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 30, 'Disco, Pop'),
       ('Metallica', 'Metallica', 1991, 31, 'Heavy Metal'),
       ('Nirvana', 'Nevermind', 1991, 30, 'Alternative Rock'),
       ('Platypus', 'Ocean Whale of a Dolphin', 2021, 67.2, 'New Space Age Disco');

