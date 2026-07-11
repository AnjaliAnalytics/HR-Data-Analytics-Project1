Schema SQL

CREATE TABLE Employee_Master (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Status VARCHAR(20),
    Attrition VARCHAR(5),
    Location VARCHAR(50),
    Business_Travel VARCHAR(50),
    Daily_Rate INT,
    Department VARCHAR(50),
    Education_Field VARCHAR(50),
    Gender VARCHAR(10),
    Manager_Name VARCHAR(100),
    Joining_Date DATE,
    Monthly_Income INT,
    Total_Working_Years INT
);

INSERT INTO Employee_Master VALUES 
(127, 'Emp_Name_127', 'ACTIVE', 'No', 'Chicago', 'Travel_Rarely', 500, 'Research & Development', 'Medical', 'Female', 'Manager_Alpha', '1986-01-01', 6000, 10),
(99, 'Emp_Name_99', 'ACTIVE', 'No', 'New York', 'Travel_Frequently', 600, 'Sales', 'Life Sciences', 'Male', 'Manager_Beta', '1989-01-01', 5500, 8),
(1117, 'Emp_Name_1117', 'ACTIVE', 'No', 'London', 'Non-Travel', 450, 'Sales', 'Marketing', 'Male', 'Manager_Beta', '1990-01-01', 5200, 5),
(238, 'Emp_Name_238', 'INACTIVE', 'Yes', 'Chicago', 'Travel_Rarely', 700, 'Sales', 'Medical', 'Male', 'Manager_Gamma', '1993-01-01', 4000, 3);





Query SQL

-- 1. Department-wise Active Employee Count
SELECT Department, COUNT(*) AS Total_Employees 
FROM Employee_Master
WHERE Status = 'ACTIVE'
GROUP BY Department;

-- 2. Average Salary Metrics
SELECT Department, ROUND(AVG(Monthly_Income), 2) AS Average_Monthly_Salary
FROM Employee_Master
GROUP BY Department;

-- 3. Span of Control Analysis (Employees Under Each Manager)
SELECT Manager_Name, COUNT(*) AS Total_Direct_Reports
FROM Employee_Master
WHERE Status = 'ACTIVE' AND Manager_Name IS NOT NULL
GROUP BY Manager_Name;