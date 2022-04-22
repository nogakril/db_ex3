WITH RECURSIVE t(dist, name) AS (
    VALUES(0, 'Noam Nisan')
    UNION
    SELECT dist+1, R.name
    FROM t, authors S, authors R  
    WHERE t.name = S.name AND S.conference = R.conference AND S.year = R.year AND S.name != R.name AND dist < 2
    )
SELECT distinct name
FROM t
ORDER BY name;
