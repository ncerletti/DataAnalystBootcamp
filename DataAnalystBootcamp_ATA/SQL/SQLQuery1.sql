SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old' 
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age
