-- Group By, it is used with aggregate function like, sum(), max(), count(), etc.

-- WHERE → Filters Rows First.
-- HAVING → Filters Results of COUNT, SUM, AVG, MAX, MIN.

-- SELECT ...
-- FROM ...
-- WHERE ...
-- GROUP BY ...
-- HAVING ...
-- ORDER BY ...;

select count(*) as No_of_worker, department
from employees
group by department;

-- using 'where' 
SELECT *
FROM employees
WHERE salary > 30000;

-- using 'having' with aggregate functions
SELECT count(department) as No_of_workers, department, AVG(salary) AS avg_salary, max(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 30000;
