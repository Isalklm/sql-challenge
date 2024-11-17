-- Drop existing tables if they exist
DROP TABLE IF EXISTS Dept_Manager CASCADE;
DROP TABLE IF EXISTS Dept_Emp CASCADE;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Titles CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

-- Create Departments table
CREATE TABLE Departments (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Create Employees table
CREATE TABLE Employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

-- Create Titles table
CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Create Salaries table
CREATE TABLE Salaries (
    emp_no INTEGER,
    salary INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Dept_Emp table
CREATE TABLE Dept_Emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Create Dept_Manager table
CREATE TABLE Dept_Manager (
    dept_no VARCHAR(4),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Verify data in Departments table
SELECT * FROM Departments;

-- Verify data in Employees table
SELECT * FROM Employees;

-- Verify data in Titles table
SELECT * FROM Titles;

-- Verify data in Salaries table
SELECT * FROM Salaries;

-- Verify data in Dept_Emp table
SELECT * FROM Dept_Emp

-- Verify data in  Dept_Manager table
SELECT * FROM  Dept_Manager