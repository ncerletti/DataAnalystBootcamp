SELECT Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary AS Sal 
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics as Ware 
	ON Demo.EmployeeID = Ware.EmployeeID