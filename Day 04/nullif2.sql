SELECT
    emp_id,
    emp_name,
    department,
    salary,
    
    COALESCE(NULLIF(salary, 0), 'Intern') AS salary_status
FROM employees;