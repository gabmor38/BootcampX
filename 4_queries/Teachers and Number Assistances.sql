SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) as Total
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN Students ON student_id = students.id
JOIN Cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohorts.name
ORDER BY teacher;