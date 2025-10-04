USE EmployeeDB;

-- Create Department table
CREATE TABLE Department (
    DepartmentId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Location NVARCHAR(100) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

-- Create Employee_Project join table
CREATE TABLE Employee_Project (
    EmployeeId INT NOT NULL,
    ProjectId INT NOT NULL,
    PRIMARY KEY (EmployeeId, ProjectId),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId),
    FOREIGN KEY (ProjectId) REFERENCES Project(ProjectId)
);

-- Create Project table
CREATE TABLE Project (
    ProjectId INT PRIMARY KEY IDENTITY(1,1),
    ProjectName NVARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE
);