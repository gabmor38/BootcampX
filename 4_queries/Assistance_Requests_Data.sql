Select count(assistance_requests.teacher_id) as Total_assitances, teachers.name as teacher
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
