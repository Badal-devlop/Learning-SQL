-- find orders placed by a specific user by name

-- mistake in the code below: as 2 john doe are present in database.
-- use ecommerce_db;
-- select * 
-- from orders
-- where user_id = (select user_id from users where name = 'john Doe');



-- correct version

-- 1.use e-mail or any other factor(that is unique), for identification.
use ecommerce_db;
SELECT * FROM orders
WHERE user_id = (SELECT user_id FROM users WHERE email = 'john@example.com');

-- 2. or simply get the info about all the john doe present within the database.
use ecommerce_db;
SELECT * FROM orders
WHERE user_id IN (SELECT user_id FROM users WHERE name = 'John Doe');