--1

--SELECT *
--FROM Genre


--2

--SELECT *
--FROM Artist
--ORDER BY ArtistName


--3

--SELECT s.Id,
--	s.Title,
--	s.SongLength,
--	s.ReleaseDate,
--	s.GenreId,
--	s.ArtistId,
--	s.AlbumId,
--	a.ArtistName
--FROM Song as s
--LEFT JOIN Artist as a 
--on s.ArtistId = a.Id 


--4

--SELECT ar.ArtistName,
--	g.Name
--FROM Album as al
--LEFT JOIN Artist as ar
--on al.ArtistId = ar.Id 
--LEFT JOIN Genre as g
--on al.GenreId = g.Id
--WHERE g.Name = 'Pop'


--5

--SELECT ar.ArtistName,
--	g.Name
--FROM Album as al
--LEFT JOIN Artist as ar
--on al.ArtistId = ar.Id
--LEFT JOIN Genre as g
--on al.GenreId = g.Id
--WHERE GenreId = 2
--OR 
--GenreId = 4


--6

--SELECT Title
--FROM Album


--7

--INSERT INTO Artist
--	(ArtistName, YearEstablished)
--VALUES
--	('Kiltro', 2018)

--8

--INSERT INTO Album 
--	(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES
--	('Creatures of Habit', '07/6/2019', 2334, 'Kiltro', 1002, 12);


--9

--INSERT INTO Song
--	(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES
--	('Curicó', 309, '07/06/2019', 12, 1002, 1002);

--10

--SELECT s.Title as SongTitle,
--	al.Title as AlbumTitle,
--	ar.ArtistName
--FROM Song as s
--LEFT JOIN Album as al
--on s.ArtistId = al.ArtistId
--LEFT JOIN Artist as ar
--on s.ArtistId = ar.Id
--WHERE ar.Id = 1002


--11

--SELECT al.Title,
--	COUNT(*) as SongCount
--FROM Song as s
--LEFT JOIN Album as al
--on s.AlbumId = al.Id
--WHERE s.AlbumId = al.Id
--GROUP BY al.Title


--12

--SELECT ar.ArtistName,
--	COUNT(*) as SongCount
--FROM Artist as ar
--LEFT JOIN Song as s
--on s.ArtistId = ar.Id
--WHERE s.ArtistId = ar.Id
--GROUP BY ar.ArtistName


--13

--SELECT g.Name,
--	COUNT(*) as SongCount
--FROM Genre as g
--LEFT JOIN Song as s
--on g.id = s.GenreId
--WHERE g.id = s.GenreId
--GROUP BY g.Name


--14

--SELECT ar.ArtistName,
--	COUNT(al.Label) as Labels
--FROM Album as al
--LEFT JOIN Artist as ar
--on al.ArtistId = ar.Id
--GROUP BY ar.ArtistName
--HAVING COUNT(al.Label) > 1


--15

--SELECT
--	MAX(al1.AlbumLength) as Duration,
--	al1.Title
--FROM Album as al1
--WHERE al1.AlbumLength = (SELECT MAX(al2.AlbumLength) FROM album as al2)
--GROUP BY al1.Title


--16

--SELECT
--	MAX(s.SongLength) as Duration,
--	s.Title
--FROM Song as s
--WHERE s.SongLength = (SELECT MAX(s2.SongLength) FROM Song as s2)
--GROUP BY s.Title


--17

--SELECT
--	MAX(s.SongLength) as Duration,
--	s.Title,
--	al.Title
--FROM Song as s
--LEFT JOIN Album as al
--on s.AlbumId = al.Id
--WHERE s.SongLength = (SELECT MAX(s2.SongLength) FROM Song as s2)
--GROUP BY s.Title, al.Title