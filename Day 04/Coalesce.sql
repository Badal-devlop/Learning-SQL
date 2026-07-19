ALTER TABLE users
ADD outlet_id INT;

INSERT INTO users
(name, email, password, phone, address, outlet_id)
VALUES
('Robert Brown', 'robert@example.com', 'password123', '9988776655', '12 Pine St, FL', 1001),

('Emily Davis', 'emily@example.com', 'password123', '9876543211', '78 Lake Rd, TX', 1002),

('Michael Wilson', 'michael@example.com', 'password123', '9123456789', '45 River St, CA', NULL),

('Sophia Taylor', 'sophia@example.com', 'password123', '9234567890', '67 Maple St, NY', 1003),

('Daniel Moore', 'daniel@example.com', 'password123', '9345678901', '89 Cedar St, WA', NULL),

('Olivia Martin', 'olivia@example.com', 'password123', '9456789012', '34 Elm St, TX', 1001),

('James Anderson', 'james@example.com', 'password123', '9567890123', '90 Birch St, CA', 1004),

('Isabella Thomas', 'isabella@example.com', 'password123', '9678901234', '11 Oak St, FL', NULL);


-- SELECT *,
--        CASE
--            WHEN outlet_id IS NULL THEN 'NO OUTLET ALLOCATED'
--            ELSE CAST(outlet_id AS CHAR)
--        END AS outlet_info
-- FROM users;

-- use above given code, or the code below

SELECT *,
       COALESCE(outlet_id, 'NO OUTLET ALLOCATED') AS outlet_info
       -- Return value1(outlet_id) if it is NOT NULL, otherwise return value2('no outlet allocated') if value is null.
FROM users;

-- COALESCE(value1, value2)
-- Return value1 if it is NOT NULL, otherwise return value2.
-- COALESCE(outlet_id, 'NO OUTLET ALLOCATED').

