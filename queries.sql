
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

-- Question 5
SELECT Salary FROM EmployeesSalary
ORDER BY Salary DESC
LIMIT 1 OFFSET 4;

-- Question 6
SELECT ManagerId, NumEmployees FROM (
    SELECT ManagerId, COUNT(*) as NumEmployees
    FROM EmployeeDetails
    GROUP BY ManagerId
) x
WHERE NumEmployees >= 3;
