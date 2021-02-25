SELECT EmpId 
FROM EmployeeDetails
INTERSECT
SELECT EmpId
FROM EmployeesSalary; 


SELECT *
FROM EmployeeDetails
WHERE YEAR(DateOfJoining) = 2020;

SELECT FullName, Salary
FROM EmployeeDetails
LEFT JOIN EmployeesSalary
ON EmployeeDetails.EmpId = EmployeesSalary.EmpId;