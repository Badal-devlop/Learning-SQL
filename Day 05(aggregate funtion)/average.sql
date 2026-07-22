use ecommerce_db;

select department, avg(salary) as AVG_COST from employees
group by department
having AVG_COST >20000
order by AVG_COST asc;