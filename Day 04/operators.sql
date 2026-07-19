use ecommerce_db;
select price, (price/100)*10 as discounted_price
from products;