SELECT quantity,
       CASE quantity
           WHEN 1 THEN 'low'
           WHEN 2 THEN 'moderate'
           ELSE 'high'
       END AS quantity_level
FROM order_items;