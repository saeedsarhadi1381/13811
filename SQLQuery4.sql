CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(150) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    department_id INT,
    position_id INT,
    salary DECIMAL(10, 2)
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employees("employee_id)
);
CREATE TABLE JobTitles (
    position_id INT PRIMARY KEY AUTO_INCREMENT,
    position_name VARCHAR("100")
);