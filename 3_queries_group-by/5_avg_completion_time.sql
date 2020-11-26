SELECT students.name as student, AVG(assignment_submissions.duration) as average_assingment_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assingment_duration DESC;
