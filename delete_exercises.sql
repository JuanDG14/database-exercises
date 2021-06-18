USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Query 1';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the genre ''disco''' AS 'Query 2';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by ''Whitney Houston''' AS 'Query 3';
DELETE FROM albums WHERE artist = 'Whitney Houston';