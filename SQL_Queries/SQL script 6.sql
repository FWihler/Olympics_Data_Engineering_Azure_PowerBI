WITH DisciplineTotals AS (
    SELECT
        Discipline,
        SUM(Male) AS TotalMaleAthletes,
        SUM(Female) AS TotalFemaleAthletes,
        SUM(Male + Female) AS TotalAthletes
    FROM entriesgender
    GROUP BY Discipline
)
SELECT
    Discipline,
    TotalMaleAthletes,
    TotalFemaleAthletes,
    TotalAthletes,
    CASE
        WHEN TotalAthletes = (SELECT MAX(TotalAthletes) FROM DisciplineTotals) THEN 'Highest Overall'
        ELSE ''
    END AS AthleteStatus
FROM DisciplineTotals;
