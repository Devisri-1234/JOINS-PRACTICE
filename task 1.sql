DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT
);

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

INSERT INTO Employees (EmpID, EmpName, DeptID) VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 103),
(4, 'David', NULL),
(5, 'Eva', 105);

INSERT INTO Departments (DeptID, DeptName) VALUES
(101, 'HR'),
(102, 'Engineering'),
(103, 'Sales'),
(104, 'Finance');

-- INNER JOIN
SELECT 'INNER JOIN' AS JoinType, E.EmpName, D.DeptName
FROM Employees E
INNER JOIN Departments D ON E.DeptID = D.DeptID;

-- LEFT JOIN
SELECT 'LEFT JOIN' AS JoinType, E.EmpName, D.DeptName
FROM Employees E
LEFT JOIN Departments D ON E.DeptID = D.DeptID;

-- RIGHT JOIN
SELECT 'RIGHT JOIN' AS JoinType, E.EmpName, D.DeptName
FROM Employees E
RIGHT JOIN Departments D ON E.DeptID = D.DeptID;

-- FULL OUTER JOIN 
SELECT 'FULL JOIN' AS JoinType, E.EmpName, D.DeptName
FROM Employees E
LEFT JOIN Departments D ON E.DeptID = D.DeptID
UNION
SELECT 'FULL JOIN' AS JoinType, E.EmpName, D.DeptName
FROM Employees E
RIGHT JOIN Departments D ON E.DeptID = D.DeptID;
