SELECT first_name,last_name,birth_date,county
FROM persons
WHERE county = 'Cork' OR county = 'Kerry'
AND birth_date >= '2000-01-01'

SELECT COUNT(person_id) AS 'People Count' ,county
FROM persons
GROUP BY county;

SELECT p.first_name, l.food
FROM persons AS p JOIN likes AS l
ON p.person_id  = l.person_id
WHERE l.food LIKE '%e%';

SELECT p1.first_name, p1.last_name, k.friend_id
FROM persons AS p1 JOIN knows AS k
ON p1.person_id = k.person_id 
JOIN persons AS p2 
ON k.friend_id = p2.person_id
WHERE p2.first_name = 'Aoife' AND p2.last_name = 'Ahern'

SELECT p1.first_name, p1.last_name,l.food
FROM persons AS p1 JOIN knows AS k
ON p1.person_id = k.person_id 
JOIN persons AS p2 
ON k.friend_id = p2.person_id
JOIN likes AS l ON p1.person_id = l.person_id
WHERE p2.first_name = 'Aoife' AND p2.last_name = 'Ahern' 
AND l.food = 'beer';


SELECT p1.first_name, p1.last_name, k.friend_id
FROM persons AS p1 JOIN knows AS k
ON p1.person_id = k.person_id 
JOIN persons AS p2 
ON k.friend_id = p2.person_id
WHERE p2.first_name = 'Aoife' AND p2.last_name = 'Ahern'
AND p2.first_name = 'Declan' AND p2.last_name = 'Duffy';

SELECT COUNT(*) AS Popular , l.food
FROM persons AS p JOIN likes AS l
ON p.person_id = l.person_id
WHERE p.county = 'Cork'
GROUP BY l.food
ORDER BY Popular DESC;

SELECT DISTINCT p.county
FROM persons AS p JOIN likes AS l 
ON p.person_id = l.person_id
GROUP BY p.county, l.food
HAVING COUNT (*) >= 3
-- ^^ Nothing fits the query in this database (frick you daddy bases), the query below shows so

-- SELECT p.county, l.food, COUNT(*) AS Number_of_people
-- FROM persons AS p
-- JOIN likes AS l ON p.person_id = l.person_id
-- GROUP BY p.county, l.food
-- ORDER BY Number_of_people DESC;

SELECT p1.first_name,p1.last_name,p2.first_name,p2.last_name
FROM persons AS p1 JOIN persons AS p2
ON substr(p1.first_name, 1, 1) = substr(p2.first_name, 1, 1)
AND p1.person_id < p2.person_id;
-- 'Substr()' removes part of a string it works like this:
-- 'substr(text, start, length)'
-- Nothing fits this query in this database either