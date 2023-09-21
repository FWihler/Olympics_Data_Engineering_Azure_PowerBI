SELECT
    Team_Country AS Country,
    SUM(Gold) AS TotalGold,
    SUM(Silver) AS TotalSilver,
    SUM(Bronze) AS TotalBronze,
    SUM(Total) AS GrandTotal,
    ROW_NUMBER() OVER (ORDER BY SUM(Total) DESC) AS RankByTotal
FROM medals
GROUP BY Team_Country
ORDER BY RankByTotal;
