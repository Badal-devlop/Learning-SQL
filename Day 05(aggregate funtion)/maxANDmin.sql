select max(salary) from employees;
select min(salary) from employees where salary > 0;


-- concatenates all the VALUES of the GROUP/Column, that is present within that group or satisfies a specific condition.
select group_concat(emp_name) from employees where salary > 20000;
select group_concat(manager_id) from employees;