SELECT m.Gold AS GoldMedals, m.Silver AS SilverMedals, m.Bronze AS BronzeMedals
FROM medals m
JOIN athletes a ON m.Team_Country = a.Country
WHERE a.PersonName = 'ALTO Gaston'
  AND a.Country = 'Argentina'
