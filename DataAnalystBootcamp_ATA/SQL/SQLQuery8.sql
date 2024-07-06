CREATE TABLE SQLTutorial.dbo.EmployeeErrors 
(EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

Select LastName, REPLACE(LastName, ' - Fired', ' ') as LastNamefix
From EmployeeErrors

Select LastName, REPLACE(LastName, ' - Fired', ' ') as LastNamefix
From EmployeeErrors


Select Substring(FirstName,3,3)
From EmployeeErrors

Select *
From SQLTutorial.dbo.EmployeeDemographics
INSERT INTO SQLTutorial.dbo.EmployeeDemographics VALUES(
'1005', 'Toby', 'Flenderson', '32', 'Male')
Select err.FirstName, dem.FirstName
From EmployeeErrors as err
JOIN EmployeeDemographics as dem
	ON err.FirstName = dem.FirstName

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)
