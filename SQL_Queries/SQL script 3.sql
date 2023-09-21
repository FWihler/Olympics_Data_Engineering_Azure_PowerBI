SELECT Discipline, Male AS NumMaleAthletes
FROM entriesgender
WHERE Male = (SELECT MAX(Male) FROM entriesgender);
