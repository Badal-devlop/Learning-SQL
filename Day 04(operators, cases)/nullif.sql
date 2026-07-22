SELECT emp_name, email, salary,
    NULLIF(salary, 0) AS modified_salary
FROM employees;