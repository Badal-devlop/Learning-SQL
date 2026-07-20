select t1.order_id, t1.status, t2.name, t2.email -- order is t1 and user is t2.
from orders t1 JOIN users t2 ON t1.user_id = t2.user_id
where t1.status = 'pending' and t2.user_id between 3 and 13
order by t1.order_id desc
limit 2;