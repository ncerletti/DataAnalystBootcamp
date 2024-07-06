WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary,
COUNT(gender) OVER (PARTITION by Gender) as TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM SQLTutorial.dbo.EmployeeDemographics as emp
JOIN SQLTutorial.dbo.EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000')

SELECT *
FROM CTE_Employee