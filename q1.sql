SELECT region, COUNT(DISTINCT country) as countryCount
FROM institutions
GROUP BY region
ORDER BY region;
