use ecommerce_db;
select *
from orders
where status in('pending', 'processing');