use task5;
    create table students(
    student_id INT,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

INSERT INTO students (student_id, name, age, department, marks) VALUES
(2, 'Meena', 21, 'Mechanical', 78),
(3, 'Ravi', 20, 'Electrical', 65),
(4, 'Anita', 22, 'Computer Science', 92),
(5, 'Suresh', 21, 'Civil', 55),
(6, 'Priya', 20, 'Mechanical', 88),
(7, 'Kiran', 22, 'Electrical', NULL),
(8, 'Divya', 21, 'Computer Science', 74);

SELECT
    COUNT(*) AS total_students,
    SUM(marks) AS total_marks,
    AVG(marks) AS average_marks,
    MIN(marks) AS minimum_marks,
    MAX(marks) AS maximum_marks
FROM students;

SELECT
    age,
    COUNT(*) AS student_count
FROM students
GROUP BY age;
SELECT
    department,
    AVG(marks) AS average_marks
FROM students
GROUP BY department;
SELECT
    department,
    COUNT(*) AS student_count
FROM students
GROUP BY department
HAVING COUNT(*) > 2;

SELECT
    department,
    COUNT(*) AS student_count
FROM students
WHERE marks > 60
GROUP BY department;



SELECT
    department,
    AVG(IFNULL(marks, 0)) AS average_marks
FROM students
GROUP BY department;


