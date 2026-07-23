-- get the users info who spend more than average.

-- select avg(total_price) as average_price from orders; //gets the average price
-- select * from orders where total price > average_price; //using average price as the refernce, we will find the users who spend more than the average.

select * from orders where total_price > (select avg(total_price) from orders);