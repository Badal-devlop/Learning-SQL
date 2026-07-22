select count(*) 
from employees 
where manager_id >= 102 and salary >10000;

select count(*) from orders where status in ('delivered', 'shipped');