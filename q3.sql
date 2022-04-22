WITH SystemsAuthors(name, count, year) AS (SELECT name, count, year
                                           FROM authors NATURAL JOIN conferences
                                           WHERE area='systems')               
SELECT name 
FROM SystemsAuthors
GROUP BY name
HAVING SUM(count)>=2
INTERSECT
SELECT name
FROM SystemsAuthors
WHERE year>=2014
ORDER BY name;
