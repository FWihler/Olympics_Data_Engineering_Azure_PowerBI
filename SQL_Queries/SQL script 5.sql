SELECT TOP 1
    c.Name AS CoachName,
    c.Country AS CoachCountry,
    COUNT(DISTINCT a.PersonName) AS NumAthletes
FROM coaches c
JOIN athletes a ON c.Discipline = a.Discipline
GROUP BY c.Name, c.Country
ORDER BY NumAthletes DESC;
