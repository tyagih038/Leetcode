select a.student_id,a.student_name, b.subject_name, count(c.student_id) as attended_exams 
from students as a 
cross join subjects as b
left join examinations as c
on a.student_id = c.student_id and b.subject_name = c.subject_name
GROUP BY a.student_id, a.student_name, b.subject_name
order by a.student_id, b.subject_name;