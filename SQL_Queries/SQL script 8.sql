SELECT TOP 1
    t.Discipline,
    m.Team_Country,
    SUM(m.Gold) AS TotalGoldMedals
FROM medals m
INNER JOIN teams t ON m.Team_Country = t.TeamName
WHERE t.Discipline = 'Archery'
GROUP BY t.Discipline, m.Team_Country
ORDER BY TotalGoldMedals DESC;
