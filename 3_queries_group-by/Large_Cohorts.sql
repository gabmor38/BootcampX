SELECT cohorts.name, count(students.id) as total_students
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id);
