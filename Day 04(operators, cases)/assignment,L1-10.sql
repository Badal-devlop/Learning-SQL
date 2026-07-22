-- ----------------------- LESSON: 11  Practice / Assigment --------------------------

-- 1.Write a query to fetch all columns for all employees.

select * from employees;

-- 2.Fetch the unique product from the orders table.

SELECT DISTINCT product_id from order_items;

-- 3.Fetch all details of employees who belong to the 'IT' department.

select * from employees where department = 'IT';

-- 4.Fetch the emp_names and their salaries with column aliases "Name" and "Income", show unpaid intern, if salary is 0.

select emp_name as Name,
coalesce(nullif(salary, 0), 'Unpaid intern') as Income
from employees;

-- 5.Show all products buy price above 50 Dollar.

select * 
from products
where price > 50;

-- 6.Fetch the top 2 highest paid employees in our company.

select *
from employees
order by salary desc
limit 0,2;

-- 7.Get employees who are either in IT or have a salary above 30,000.

select *
from employees
where salary > 30000 or department = 'IT';

-- 8.Fetch products with a price between 0 and 100.

select *
from products
where price between 0 and 100;

-- 9.Retrieve orders where the product status is either 'pending' or 'shipped'

select *
from orders
where status in('pending', 'shipped');

-- 10.Find employee names starting with 'J'

select *
from employees
where emp_name like'J%';

-- 11.Case insensitive search for employee names containing 'son'

select *
from employees
where emp_name like '%son%';

-- 12.Display employee names along with their salary category as 'High' if above 60,000, else 'Low'

select emp_name,
	case 
		when salary > 60000 then 'High'
        else 'low'
	end as salary_category
from employees;

-- 13.Show the delivery date, but if it is NULL, display 'Pending'

select delivery_date,
	case 
		when delivery_date is null then 'pending'
        else delivery_date
	end as Delivery_Date
from orders;

-- or we can use the given below code as well.

select delivery_date,
	coalesce(delivery_date, 'pending') as Delivery_Date
from orders;

-- 14.Compare two columns and return NULL if they are the same.

select 
nullif(product_id, category_id) as comparison
from products;

-- 15.Display employee names and their salary incremented by 10% as "New Salary"

select emp_name, salary, salary + salary * 0.1 as new_salary
from employees;

-- 16.Get the employees who are either in 'HR' or 'Marketing' department and earn more than 30,000.

select * from employees
where department in('HR', 'marketing') and salary > 30000;

-- 17.Show the product name and its availability status as 'In Stock' if the quantity is more than 0, else 'Out of Stock'

select name, 
	case 
		when stock > 0 then 'in stock'
        else 'out of stock'
	end as availablility
from products;

-- 18.Display customer names and delivery dates, but if the delivery date is NULL, show 'Not Delivered'

SELECT 
    name,
    COALESCE(delivery_date, 'Item is not deliverable') AS delivery_status
FROM users;

-- 19.Retrieve all products whose names contain the letter 'a' (case insensitive) and are priced between 100 and 200, ordered by price in ascending order.

 select *
 from products
 where name like '%a%' and price between 100 and 500
 order by price asc;

-- 20.Count the number of different products sold.



-- 21.Count how many employees have salaries above 70,000.
