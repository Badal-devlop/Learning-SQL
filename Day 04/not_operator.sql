use ecommerce_db;
select * 
from payments
where not payment_status = 'Pending';