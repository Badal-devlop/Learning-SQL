-- return user's name and email, who live in NY or TX

select name, email 
from users
where address in (select address from users where address like '%NY' or address like '%TX');

-- or we could have simply written

select name, email 
from users
where address like '%NY' or address like '%TX';