SELECT Country, COUNT(*) AS NumAthletes
FROM athletes
WHERE Discipline = 'Basketball'
GROUP BY Country
ORDER BY NumAthletes DESC;
