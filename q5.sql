SELECT DISTINCT name
FROM authors
EXCEPT
SELECT name
FROM authors
WHERE conference NOT IN (SELECT conference
						 FROM authors
						 GROUP BY conference
						 HAVING count(DISTINCT year)>= 10)
ORDER BY name;

