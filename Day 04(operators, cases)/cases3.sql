USE ecommerce_db;
-- instead of 'select' we will have 'update' and insrtead of 'directly using case statement' afterwards, we will addd oen extra statement, that is "upadte col_name"
UPDATE order_items
SET volume =
    CASE
        WHEN quantity > 3 THEN 'high'
        WHEN quantity = 2 THEN 'moderate'
        WHEN quantity = 1 THEN 'low'
        ELSE 'unknown'
    END
WHERE order_id > 0;