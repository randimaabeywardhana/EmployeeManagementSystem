# Employee Management System

This is a full-stack application for managing employees, departments, and projects using ASP.NET Core, Spring Boot, Angular, and React.

## Setup Instructions
1. Clone the repo: `git clone https://github.com/randimaabeywardhana/EmployeeManagementSystem.git'
2. Install dependencies:
   - .NET SDK for ASP.NET
   - JDK and Maven for Spring Boot
   - Node.js for frontends
3. Databases:
   - Run `database-scripts/mssql-init.sql` in SSMS for MSSQL (EmployeeDB).
   - Run `database-scripts/mysql-init.sql` in MySQL Workbench for MySQL (DepartmentDB).
4. Run Backends:
   - ASP.NET: Open backend/aspnet-core in Visual Studio 2022, build and run.
   - Spring Boot: Open backend/spring-boot in VS Code, run `mvn spring-boot:run` in terminal.
5. Run Frontends:
   - Angular: cd frontend/angular, `npm install`, `ng serve`
   - React: cd frontend/react, `npm install`, `npm start`
6. Access: Frontends at http://localhost:4200 (Angular) or http://localhost:3000 (React). APIs at http://localhost:5000 (ASP.NET) and http://localhost:8080 (Spring Boot).

