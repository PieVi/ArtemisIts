SELECT EmpId 
FROM EmployeeDetails
INTERSECT
SELECT EmpId
FROM EmployeesSalary; 


SELECT *
FROM EmployeeDetails
WHERE YEAR(DateOfJoining) = 2020;