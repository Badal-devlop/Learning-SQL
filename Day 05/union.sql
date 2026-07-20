select emp.emp_name as NAME, emp.emp_id as ID
from employees emp
UNION
select u.name, u.user_id
from users u;