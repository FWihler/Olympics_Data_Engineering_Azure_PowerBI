SELECT
    t.Discipline,
    SUM(m.Gold) AS GoldMedals,
    SUM(m.Silver) AS SilverMedals,
    SUM(m.Bronze) AS BronzeMedals
FROM medals m
INNER JOIN teams t ON m.Team_Country = t.Country
WHERE m.Team_Country = 'Argentina'
GROUP BY t.Discipline;

