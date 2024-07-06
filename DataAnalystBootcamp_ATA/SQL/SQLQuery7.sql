CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select*
from #temp_Employee

INSERT INTO #temp_Employee VALUES(
'1001', 'HR', '45000')

INSERT INTO #temp_Employee
Select *
FROM SQLTutorial.DBO.EmployeeSalary

DROP TABLE if EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics as emp
JOIN SQLTutorial.dbo.EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

select * 
from #temp_Employee2
