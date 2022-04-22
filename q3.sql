CREATE VIEW papers AS (SELECT *
                       FROM authors NATURAL JOIN conferences
                       WHERE area='systems');
                
SELECT name
FROM papers
GROUP BY name
HAVING SUM(count)>=2
INTERSECT
SELECT name
FROM papers
WHERE year>=2014;

DROP VIEW papers;
