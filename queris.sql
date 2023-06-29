--1)--
select fa.faculty_name, cu.course_number, sum(sub.subject_price * curriculum.subject_time) as one_year_price
from curriculum
left join fac_course fa_cu ON fa_cu.fac_course_id = curriculum.fac_course_id
left join professor_subject pro_su ON pro_su.prof_sub_id = curriculum.prof_sub_id

left join faculties fa ON fa.faculty_id = fa_cu.faculty_id
left join courses cu ON cu.course_id = fa_cu.course_id

left join professors pro ON pro.professor_id = pro_su.professor_id
left join subjects sub ON sub.subject_id = pro_su.subject_id
group by fa.faculty_name, cu.course_number
order by fa.faculty_name

--2)--

select sum(one_year_price) + foo.pg_price as profit
from (
	select fa.faculty_name, cu.course_number, sum(sub.subject_price * curriculum.subject_time) as one_year_price, programs.program_price as pg_price
	from curriculum
	left join fac_course fa_cu ON fa_cu.fac_course_id = curriculum.fac_course_id
	left join professor_subject pro_su ON pro_su.prof_sub_id = curriculum.prof_sub_id

	left join faculties fa ON fa.faculty_id = fa_cu.faculty_id
	left join courses cu ON cu.course_id = fa_cu.course_id

	left join professors pro ON pro.professor_id = pro_su.professor_id
	left join subjects sub ON sub.subject_id = pro_su.subject_id
	
	right join course_schedule ON course_schedule.curriculum_id = curriculum.curriculum_id
	right join students ON students.student_id = course_schedule.student_id
	right join student_program ON student_program.student_id = students.student_id
	right join programs ON programs.program_id = student_program.program_id
	group by fa.faculty_name, cu.course_number, programs.program_price
	order by fa.faculty_name
) as foo
group by foo.pg_price


--3)--
SELECT
  su."name",
  su.surname,
  fa.faculty_name,
  cu.course_number,
  sub.subject_name,
  exam.exam_grade,
  CASE
    WHEN exam.exam_grade >= 8 THEN 'Bavarar'
    ELSE 'Likvid'
  END AS comments
FROM
  Exam
LEFT JOIN
  Course_schedule ON Course_schedule.schedule_id = Exam.schedule_id
LEFT JOIN
  Students su ON su.student_id = Course_schedule.student_id
LEFT JOIN
  Curriculum curr ON curr.curriculum_id = Course_schedule.curriculum_id
LEFT JOIN
  Professors prof ON prof.professor_id = curr.prof_sub_id
LEFT JOIN
  Subjects sub ON sub.subject_id = curr.prof_sub_id
LEFT JOIN
  fac_course fa_cu ON fa_cu.fac_course_id = curr.fac_course_id
LEFT JOIN
  Faculties fa ON fa.faculty_id = fa_cu.faculty_id
LEFT JOIN
  Courses cu ON cu.course_id = fa_cu.course_id
  
  
--4)--
SELECT   
  su."name",
  su.surname,
  fa.faculty_name,
  round(AVG(exam.exam_grade)) AS avg_exam_grade,
  round(AVG(Course_schedule.grade)) AS avg_schedule_grade,
  CASE
    WHEN round(AVG(Course_schedule.grade)) >= 8 THEN 'Graduation'
    WHEN round(AVG(Course_schedule.grade)) < 8 THEN 'Transfer to Next Course'
    ELSE 'No Comment'
  END AS comments
FROM
  Exam
LEFT JOIN
  Course_schedule ON Course_schedule.schedule_id = Exam.schedule_id
LEFT JOIN
  Students su ON su.student_id = Course_schedule.student_id
LEFT JOIN
  Curriculum curr ON curr.curriculum_id = Course_schedule.curriculum_id
LEFT JOIN
  Professors prof ON prof.professor_id = curr.prof_sub_id
LEFT JOIN
  Subjects sub ON sub.subject_id = curr.prof_sub_id
LEFT JOIN
  fac_course fa_cu ON fa_cu.fac_course_id = curr.fac_course_id
LEFT JOIN
  Faculties fa ON fa.faculty_id = fa_cu.faculty_id
LEFT JOIN
  Courses cu ON cu.course_id = fa_cu.course_id
GROUP BY
  su."name",
  su.surname,
  fa.faculty_name;
  
  
--5)--
(SELECT DISTINCT ON (co.course_number)
  std."name",
  std.surname,
  fac.faculty_name,
  co.course_number,
  ROUND(AVG(course_schedule.grade)) AS avg_grade
FROM
  students std
LEFT JOIN
  course_schedule ON course_schedule.student_id = std.student_id
LEFT JOIN
  curriculum ON curriculum.curriculum_id = course_schedule.curriculum_id
LEFT JOIN
  fac_course ON fac_course.fac_course_id = curriculum.fac_course_id
LEFT JOIN
  faculties fac ON fac.faculty_id = fac_course.faculty_id
LEFT JOIN
  courses co ON co.course_id = fac_course.course_id
GROUP BY
  std."name",
  std.surname,
  co.course_number,
  fac.faculty_name
ORDER BY
  co.course_number,
  avg_grade )
  
UNION

(SELECT DISTINCT ON (co.course_number)
  std."name",
  std.surname,
  fac.faculty_name,
  co.course_number,
  ROUND(AVG(course_schedule.grade)) AS avg_grade
FROM
  students std
LEFT JOIN
  course_schedule ON course_schedule.student_id = std.student_id
LEFT JOIN
  curriculum ON curriculum.curriculum_id = course_schedule.curriculum_id
LEFT JOIN
  fac_course ON fac_course.fac_course_id = curriculum.fac_course_id
LEFT JOIN
  faculties fac ON fac.faculty_id = fac_course.faculty_id
LEFT JOIN
  courses co ON co.course_id = fac_course.course_id
GROUP BY
  std."name",
  std.surname,
  co.course_number,
  fac.faculty_name
ORDER BY
  co.course_number,
  avg_grade desc)

--6)--
SELECT
  s."name",
  s.surname,
  COALESCE(p.program_price, 0) AS program_fee,
  COALESCE(cu.subject_time, 0) * COALESCE(sub.subject_price, 0) AS tuition_fee,
  COALESCE(p.program_price, 0) + (COALESCE(cu.subject_time, 0) * COALESCE(sub.subject_price, 0)) AS total_fee
FROM
  Students s
LEFT JOIN
  student_program sp ON sp.student_id = s.student_id
LEFT JOIN
  Programs p ON p.program_id = sp.program_id
LEFT JOIN
  Course_schedule cs ON cs.student_id = s.student_id
LEFT JOIN
  Curriculum cur ON cur.curriculum_id = cs.curriculum_id
LEFT JOIN
  Subjects sub ON sub.subject_id = cur.prof_sub_id
LEFT JOIN
  Courses c ON c.course_id = sub.subject_id
LEFT JOIN
  fac_course fc ON fc.course_id = c.course_id
LEFT JOIN
  Curriculum cu ON cu.fac_course_id = fc.fac_course_id

GROUP BY
  s."name",
  s.surname,
  p.program_price,
  cu.subject_time,
  sub.subject_price;
