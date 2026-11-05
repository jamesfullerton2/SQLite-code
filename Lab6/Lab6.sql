SELECT COUNT(DISTINCT a.name) AS 'Actors', COUNT(DISTINCT m.title) AS 'Movies'
FROM actors AS a JOIN movies AS m;

SELECT COUNT(title)
FROM movies
WHERE yr = '1975';

SELECT *
FROM actors JOIN castings
ON id = actorid
WHERE name = 'Clint Eastwood';

SELECT actors.name, movies.title, movies.yr 
FROM actors JOIN castings JOIN movies
ON actors.id = castings.actorid 
AND castings.movieid = movies.id 
WHERE actors.name = 'Clint Eastwood'
ORDER BY movies.yr;

SELECT actors.name, movies.title
FROM actors JOIN castings JOIN movies
ON actors.id = castings.actorid 
AND castings.movieid = movies.id
WHERE movies.title = 'Citizen Kane';

SELECT actors.name, movies.title
FROM actors JOIN castings JOIN movies
ON actors.id = castings.actorid 
AND castings.movieid = movies.id
WHERE movies.title = 'Vertigo' 
OR movies.title = 'Rear Window';

SELECT m2.title
FROM movies AS m1 JOIN movies AS m2 
ON m1.director = m2.director 
WHERE m1.id = '28';

SELECT m2.title
FROM movies AS m1 JOIN movies AS m2 
ON m1.director = m2.director 
WHERE m1.title = 'Godfather, The';

SELECT m1.title, m2.title, m1.yr AS 'Remake', m2.yr AS 'The first'
FROM movies AS m1 JOIN movies AS m2
ON m1.title = m2.title
WHERE m1.title = m2.title AND m1.yr != m2.yr

SELECT title
FROM movies
WHERE title LIKE '% II'
OR title LIKE '% III'
OR title LIKE '% IV'
OR title LIKE '% V';

SELECT m1.title AS 'Org', m1.title AS 'Sql'
FROM movies AS m1 
JOIN movies AS m2
ON m2.title = m1.title || ' II';

SELECT m1.title AS 'Good film',m1.score AS 'Score', m2.title AS 'Bad film', m2.score AS 'Score',m1.director
FROM movies AS m1 JOIN movies AS m2
ON m1.director = m2.director
WHERE m1.score > 8 and m2.score <3;