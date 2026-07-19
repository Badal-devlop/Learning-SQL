ALTER TABLE users
ADD delivery_date DATE;

-- Set delivery dates for just 2-3 users, rest stay NULL
UPDATE users SET delivery_date = '2026-07-20' WHERE user_id = 1;
UPDATE users SET delivery_date = '2026-07-22' WHERE user_id = 3;
UPDATE users SET delivery_date = '2026-07-25' WHERE user_id = 6;