USE codeup_test_db;
SELECT 'All albums in your table' AS 'Query 1';
SELECT * FROM albums;
SELECT 'All albums released before 1980' AS 'Query 2';
SELECT * FROM albums WHERE release_date < 1980;
SELECT 'All albums by Michael Jackson' AS 'Query 3';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;
SELECT 'Make all the albums 10 times more popular (sales * 10)' AS 'Query 4';
SELECT sales FROM albums;

UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT 'Move all the albums before 1980 back to the 1800s.
' AS 'Query 5';
SELECT * FROM albums;

Update albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT 'Change ''Michael Jackson'' to ''Peter Jackson''' AS 'Query 6';
SELECT * FROM albums WHERE artist = 'Peter Jackson'