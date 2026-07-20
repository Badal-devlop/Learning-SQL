USE ecommerce_db;

CREATE TABLE department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);

INSERT INTO department
(department_id, department_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');
