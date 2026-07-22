ALTER TABLE orders
ADD delivery_date DATE NULL;

INSERT INTO orders
(user_id, total_price, status, created_at, delivery_date)
VALUES
(4, 249.99, 'Processing', '2026-07-19 09:15:00', NULL),
(5, 1499.99, 'Shipped', '2026-07-19 10:20:00', '2026-07-22'),
(6, 89.50, 'Pending', '2026-07-19 11:00:00', NULL),
(7, 320.75, 'Delivered', '2026-07-19 11:30:00', '2026-07-20'),
(8, 45.99, 'Processing', '2026-07-19 12:00:00', NULL),
(9, 799.99, 'Shipped', '2026-07-19 12:30:00', '2026-07-23'),
(10, 59.99, 'Pending', '2026-07-19 13:00:00', NULL),
(11, 1299.00, 'Delivered', '2026-07-19 13:30:00', '2026-07-21'),
(12, 699.99, 'Processing', '2026-07-19 14:00:00', NULL),
(1, 109.99, 'Shipped', '2026-07-19 14:30:00', '2026-07-24'),
(2, 1999.99, 'Delivered', '2026-07-19 15:00:00', '2026-07-20'),
(3, 35.49, 'Pending', '2026-07-19 15:30:00', NULL);