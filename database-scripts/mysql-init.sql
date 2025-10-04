USE DepartmentDB;

-- Create Department table
CREATE TABLE Department (
    DepartmentId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeId INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    DepartmentId INT,
    FOREIGN KEY (DepartmentId) REFERENCES Department(DepartmentId)
);

-- Create Project table
CREATE TABLE Project (
    ProjectId INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(100) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE
);

-- Create Employee_Project join table
CREATE TABLE Employee_Project (
    EmployeeId INT NOT NULL,
    ProjectId INT NOT NULL,
    PRIMARY KEY (EmployeeId, ProjectId),
    FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId),
    FOREIGN KEY (ProjectId) REFERENCES Project(ProjectId)
);