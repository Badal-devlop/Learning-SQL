CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(30),
    salary INT,
    manager_id INT
);

INSERT INTO employees
(emp_id, emp_name, email, department, salary, manager_id)
VALUES

(101, 'John Doe', 'john@company.com', 'IT', 50000, NULL),

(102, 'Jane Smith', 'jane@company.com', 'HR', 45000, 101),

(103, 'Alice Johnson', 'alice@company.com', 'IT', 60000, 101),

(104, 'Bob Williams', 'bob@company.com', 'Finance', 55000, 101),

(105, 'Charlie Brown', 'charlie@company.com', 'Marketing', 40000, 102),

(106, 'David Miller', 'david@company.com', 'IT', 0, 103),

(107, 'Emma Davis', 'emma@company.com', 'HR', 38000, 102),

(108, 'Frank Wilson', 'frank@company.com', 'Finance', 0, 104),

(109, 'Grace Taylor', 'grace@company.com', 'Marketing', 47000, 105),

(110, 'Henry Anderson', 'henry@company.com', 'IT', 72000, NULL),

(111, 'Isabella Thomas', 'isabella@company.com', 'HR', 52000, 110),

(112, 'Jack Martin', 'jack@company.com', 'Finance', 61000, 110),

(113, 'Karen Moore', 'karen@company.com', 'Marketing', 0, 105),

(114, 'Liam Jackson', 'liam@company.com', 'IT', 68000, 110),

(115, 'Mia White', 'mia@company.com', 'HR', 43000, 111);

SELECT * FROM employees;