SELECT name FROM albums;
SELECT name FROM albums WHERE release_date < 1980;
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET sales = (sales * 10);
SELECT sales FROM albums;
UPDATE albums SET release_date = (release_date - 100) WHERE release_date < 1980;
SELECT release_date FROM albums;
Update albums SET artist = 'Peter Jackson' WHERE artist = 'Micheal Jackson';
SELECT artist FROM albums WHERE artist = 'Peter Jackson';