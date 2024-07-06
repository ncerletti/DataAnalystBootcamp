SELECT FirstName + ' ' + LastName as Name, Gender, Salary
, COUNT(Gender) OVER (Partition by Gender) as TotalGender
from SQLTutorial.dbo.EmployeeDemographics as DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID


SELECT FirstName + ' ' + LastName as Name, Gender, Salary
, COUNT(Gender)
from SQLTutorial.dbo.EmployeeDemographics as DEMO
JOIN SQLTutorial.dbo.EmployeeSalary AS SAL
	ON DEMO.EmployeeID = SAL.EmployeeID
Group by FirstName, LastName, Gender, Salary