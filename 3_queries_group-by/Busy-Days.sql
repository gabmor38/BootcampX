SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(day) >= 10;
ORDER BY day;