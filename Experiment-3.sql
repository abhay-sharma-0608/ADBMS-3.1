DROP TABLE IF EXISTS StudentEnrollments;

CREATE TABLE StudentEnrollments (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id VARCHAR(10),
    enrollment_date DATE
);

INSERT INTO StudentEnrollments VALUES
(1, 'Ashish', 'CSE101', '2024-06-01'),
(2, 'Smaran', 'CSE102', '2024-06-01'),
(3, 'Vaibhav', 'CSE103', '2024-06-01');

-- Part A
START TRANSACTION;
UPDATE StudentEnrollments SET course_id = 'CSE201' WHERE student_id = 1;
UPDATE StudentEnrollments SET course_id = 'CSE202' WHERE student_id = 2;
COMMIT;

START TRANSACTION;
UPDATE StudentEnrollments SET course_id = 'CSE301' WHERE student_id = 2;
UPDATE StudentEnrollments SET course_id = 'CSE302' WHERE student_id = 1;
COMMIT;

-- Part B
START TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT enrollment_date FROM StudentEnrollments WHERE student_id = 1;
COMMIT;

START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-10' WHERE student_id = 1;
COMMIT;

-- Part C
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1 FOR UPDATE;
COMMIT;

START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_id = 1;
COMMIT;

START TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT * FROM StudentEnrollments WHERE student_id = 1;
COMMIT;

START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-15' WHERE student_id = 1;
COMMIT;

SELECT * FROM StudentEnrollments;
