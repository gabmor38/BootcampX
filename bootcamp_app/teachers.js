const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();

const cohortName = process.argv[2] || 'JUL02';
const values = [cohortName];
const queryString = ` SELECT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.id) as Total
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN Students ON student_id = students.id
JOIN Cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
GROUP BY teacher, cohorts.name
ORDER BY teacher;
`;

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort} : ${row.teacher}`);
  })
});
