-- PART A
BEGIN TRANSACTION;

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (1, 'Ashish', 5000.00, '2024-06-01');

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (2, 'Smaran', 4500.00, '2024-06-02');

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (3, 'Vaibhav', 5500.00, '2024-06-03');

COMMIT;


--PART B
BEGIN TRANSACTION;

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (4, 'Kiran', 4800.00, '2024-06-05');

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (1, 'Ashish', -3000.00, '2024-06-06');

ROLLBACK;


--PART C
BEGIN TRANSACTION;

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (5, 'Sneha', 4700.00, '2024-06-08');

INSERT INTO FeePayments (payment_id, student_name, amount, payment_date)
VALUES (6, NULL, 4900.00, '2024-06-09');

ROLLBACK;


-- PART D
BEGIN TRANSACTION;

INSERT INTO FeePayments VALUES (7, 'Sneha', 4700.00, '2024-06-08');
INSERT INTO FeePayments VALUES (8, 'Arjun', 4900.00, '2024-06-09');

COMMIT;  -- Atomicity + Durability
