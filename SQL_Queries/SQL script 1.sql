SELECT TOP 5 Country, COUNT(*) AS NumAthletes
FROM athletes
GROUP BY Country
ORDER BY NumAthletes DESC;
