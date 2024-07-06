
--CASE
--	WHEN JobTitle = 'Salesman' THEN Salary + (Salary*.10)
--	WHEN JobTitle = 'Accountant' THEN Salary + (Salary*.05)
--	WHEN JobTitle = 'HR' THEN Salary + (Salary*.000001)
--	ELSE Salary + (Salary*.03)
--END AS SalaryAfterRaise
SELECT JobTitle, AVG(Salary) AS 'Count'
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle 
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

