USE codeup_test_db;

SELECT 'All albums after 1991' AS 'Results';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with a genre of Soft Rock' AS 'Results';
DELETE FROM albums WHERE genre = 'Soft Rock';

SELECT 'Artists names Platypus' AS 'Results';
DELETE FROM albums WHERE artist = 'Platypus';