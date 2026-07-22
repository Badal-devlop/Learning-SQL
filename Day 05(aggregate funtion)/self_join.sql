-- self join---------------------------
-- used when hierarchial order is important.


-- shows all the worker and thier manager

select worker.emp_name as co_worker, m.emp_name as manager
from employees worker, employees m
where worker.manager_id = m.emp_id;

-- shows the worker and their managers, along with who's boss

select Emp.emp_name as WORKER, coalesce(Boss.emp_name, 'BOSS') as MANAGER
from employees Emp LEFT JOIN employees Boss
on Emp.manager_id = Boss.emp_id;