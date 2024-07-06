Select SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
From EmployeeErrors as err
JOIN EmployeeDemographics as dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

SELECT FirstName, LOWER(FirstName)
From EmployeeErrors