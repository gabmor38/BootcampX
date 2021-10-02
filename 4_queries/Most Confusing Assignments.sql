SELECT  assignments.id, day, chapter, name, count(assignment_id) AS Total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY Total_requests DESC;