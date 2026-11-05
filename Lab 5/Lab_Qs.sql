SELECT *
FROM persons 
CROSS JOIN likes;

SELECT *
FROM persons AS p JOIN likes AS l ON p.person_id = l.person_id;

SELECT p.first_name,l.food
FROM persons AS p JOIN likes AS l
ON p.person_id = l.person_id
WHERE p.first_name = 'Aoife' AND p.last_name = 'Ahern';

SELECT p.first_name,p.last_name,l.food
FROM persons AS p JOIN likes AS l
ON p.person_id = l.person_id
WHERE p.county = 'Cork';

SELECT p.first_name,p.last_name,l.food
FROM persons AS p JOIN likes AS l
ON p.person_id = l.person_id
WHERE l.food = 'Pizza';

SELECT p.first_name,p.last_name,p.town
FROM persons AS p JOIN likes AS l
ON p.person_id = l.person_id
WHERE l.food = 'Beer';

SELECT *
FROM likes AS l1 CROSS JOIN likes AS l2;

SELECT l1.person_id,l1.food AS food1, l2.food AS food2
FROM likes AS l1 JOIN likes AS l2
ON l1.person_id = l2.person_id AND l1.food < l2.food;

SELECT *
FROM likes
ORDER BY food;

