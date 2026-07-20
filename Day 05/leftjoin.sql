select e.emp_name, e.department, e.salary, d.department_id
from employees e LEFT JOIN department d 
ON e.department = d.department_nameemployees
order by salary desc;