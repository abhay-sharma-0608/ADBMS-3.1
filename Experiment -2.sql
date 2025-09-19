
CREATE TABLE StudentEnrollments (
    enrollment_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id VARCHAR(10),
    enrollment_date DATE,
    CONSTRAINT uq_student_course UNIQUE (student_name, course_id)
);

-- Part A
START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (1, 'Ashish', 'CSE101', '2024-07-01');
COMMIT;

START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (2, 'Ashish', 'CSE101', '2024-07-01');
ROLLBACK;

-- Part B
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_name = 'Ashish' AND course_id = 'CSE101' FOR UPDATE;

START TRANSACTION;
UPDATE StudentEnrollments SET enrollment_date = '2024-07-05' WHERE student_name = 'Ashish' AND course_id = 'CSE101';
COMMIT;
COMMIT;

-- Part C
INSERT INTO StudentEnrollments VALUES (3, 'Smaran', 'CSE102', '2024-07-01');
START TRANSACTION;
SELECT * FROM StudentEnrollments WHERE student_name = 'Smaran' FOR UPDATE;
UPDATE StudentEnrollments SET course_id = 'CSE201' WHERE student_name = 'Smaran';
COMMIT;
START TRANSACTION;
UPDATE StudentEnrollments SET course_id = 'CSE301' WHERE student_name = 'Smaran';
COMMIT;

-- Part D
START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (4, 'Vaibhav', 'CSE101', '2024-07-01');
INSERT INTO StudentEnrollments VALUES (5, 'Sneha', 'CSE103', '2024-07-01');
COMMIT;
START TRANSACTION;
INSERT INTO StudentEnrollments VALUES (6, NULL, 'CSE104', '2024-07-01');
ROLLBACK;

SELECT * FROM StudentEnrollments;
