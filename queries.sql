
-- Question 1
SELECT EmpId 
FROM EmployeeDetails
INTERSECT
SELECT EmpId
FROM EmployeesSalary; 

-- Question 2
SELECT *
FROM EmployeeDetails
WHERE YEAR(DateOfJoining) = 2020;

-- Question 3
SELECT FullName, Salary
FROM EmployeeDetails
LEFT JOIN EmployeesSalary
ON EmployeeDetails.EmpId = EmployeesSalary.EmpId

-- Question 4
SELECT *
FROM EmployeeDetails
WHERE EmpId IN (
    SELECT DISTINCT(ManagerId) From EmployeeDetails
);