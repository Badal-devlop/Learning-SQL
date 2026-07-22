SELECT quantity,  -- quantity becomes the switch
       CASE -- now under different cases we will define different o/p.
           WHEN quantity > 3 THEN 'high'  
           WHEN quantity = 1 THEN 'low'
           WHEN quantity = 2 THEN 'moderate'
       END AS quantity_level -- end the cases
FROM order_items;

-- in case of overlapping conditions, always write the highest values 1st.