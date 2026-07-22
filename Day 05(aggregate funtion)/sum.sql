use ecommerce_db;

select department, sum(salary) as TOTAL_COST from employees
group by department;