
--Students--

insert into Students (name, surname, age) values ('Charlotte', 'Molfino', 24);
insert into Students (name, surname, age) values ('Aleece', 'Peealess', 23);
insert into Students (name, surname, age) values ('Crissie', 'Karp', 22);
insert into Students (name, surname, age) values ('Elena', 'Pottiphar', 22);
insert into Students (name, surname, age) values ('Juan', 'Thorlby', 23);
insert into Students (name, surname, age) values ('Elvin', 'Geipel', 22);
insert into Students (name, surname, age) values ('Hayes', 'Tewkesbury.', 21);
insert into Students (name, surname, age) values ('Georgine', 'Larive', 24);
insert into Students (name, surname, age) values ('Randy', 'Rubinivitz', 18);
insert into Students (name, surname, age) values ('Earlie', 'Andersen', 20);
insert into Students (name, surname, age) values ('Hailey', 'McCuis', 24);
insert into Students (name, surname, age) values ('Jane', 'Lashmore', 19);
insert into Students (name, surname, age) values ('Elka', 'McCoughan', 23);
insert into Students (name, surname, age) values ('Sebastiano', 'Winton', 24);
insert into Students (name, surname, age) values ('Jo', 'Pfaffe', 18);
insert into Students (name, surname, age) values ('Noak', 'De Paepe', 18);
insert into Students (name, surname, age) values ('Minnaminnie', 'Brydone', 21);
insert into Students (name, surname, age) values ('Gordon', 'Cant', 21);
insert into Students (name, surname, age) values ('Fidel', 'Crosbie', 25);
insert into Students (name, surname, age) values ('Maria', 'Cuxon', 23);
insert into Students (name, surname, age) values ('Clarie', 'Hawler', 23);
insert into Students (name, surname, age) values ('Cash', 'Mortimer', 19);
insert into Students (name, surname, age) values ('Joella', 'Dincey', 24);
insert into Students (name, surname, age) values ('Taddeo', 'Goosnell', 21);
insert into Students (name, surname, age) values ('Coop', 'Lathwell', 21);

select * from Students

--courses--
insert into Courses (course_number)
values ('I'),
	   ('II'),
	   ('III'),
	   ('IV')
	   
select * from Courses


--Faculties--
insert into Faculties (faculty_name)
values ('IT'),
	   ('Law'),
	   ('History')
	   
--Deans--
insert into Deans (name, surname) values ('Humfrey', 'Ashton');
insert into Deans (name, surname) values ('Julio', 'Cocklie');
insert into Deans (name, surname) values ('Quint', 'Yurshev');

select * from Deans




--dean-faculty--
insert into fac_dean (dean_id, faculty_id)
values (2, 1),
		(1, 3),
		(3, 2)

select * from fac_dean

select faculties.faculty_name, deans2."name", deans2.surname
from fac_dean
left join faculties ON faculties.faculty_id = fac_dean.faculty_id
left join deans deans2 ON deans2.dean_id = fac_dean.dean_id



--Subjects--
insert into Subjects (subject_name, subject_price)
values 
('Programming', 1100),
('Data Structures and Algorithms', 900),
('Database Management Systems', 1000),
('Web Development', 850),

('Civil law', 700),
('Administrative law', 980),
('Financial right', 1400),
('medical law', 1250),

('Introduction to history', 700),
('Ancient world history', 1250),
('History of modern times', 1650),
('History of modernity', 1200)

select * from Subjects


--Professors--
insert into Professors (name, surname) values ('Odelle', 'Dawes');
insert into Professors (name, surname) values ('Aliza', 'Peascod');
insert into Professors (name, surname) values ('Bertram', 'Silby');
insert into Professors (name, surname) values ('Leodora', 'Cawsby');
insert into Professors (name, surname) values ('Audra', 'Pooke');
insert into Professors (name, surname) values ('Phineas', 'Snepp');
insert into Professors (name, surname) values ('Danny', 'Drane');
insert into Professors (name, surname) values ('Angie', 'Buckston');
insert into Professors (name, surname) values ('Willdon', 'Tweedie');
insert into Professors (name, surname) values ('Tatiania', 'Dunbavin');
insert into Professors (name, surname) values ('Anitra', 'De Hooch');
insert into Professors (name, surname) values ('Georg', 'Vallantine');

select * from Professors



--Programs--
insert into Programs (program_name, program_price)
values
('Introduction to Computer Science', 3500),
('Introduction to International Relations', 5000),
('Artificial intelligence', 7500)

select * from Programs



--student_program--
insert into student_program (program_id, student_id) values (3, 5);
insert into student_program (program_id, student_id) values (2, 8);
insert into student_program (program_id, student_id) values (1, 13);
insert into student_program (program_id, student_id) values (2, 9);
insert into student_program (program_id, student_id) values (3, 13);
insert into student_program (program_id, student_id) values (2, 18);
insert into student_program (program_id, student_id) values (3, 21);
insert into student_program (program_id, student_id) values (2, 10);
insert into student_program (program_id, student_id) values (2, 12);
insert into student_program (program_id, student_id) values (2, 15);
insert into student_program (program_id, student_id) values (1, 15);
insert into student_program (program_id, student_id) values (3, 24);
insert into student_program (program_id, student_id) values (3, 2);
insert into student_program (program_id, student_id) values (3, 19);
insert into student_program (program_id, student_id) values (1, 5);

select * from student_program

select st."name", st.surname, pg.program_name, pg.program_price
from student_program
left join programs pg ON pg.program_id = student_program.program_id
left join students st ON st.student_id = student_program.student_id



--fac_course--
insert into fac_course (course_id, faculty_id)
values
(1,1),
(2,1),
(3,1),
(4,1),

(1,2),
(2,2),
(3,2),
(4,2),

(1,3),
(2,3),
(3,3),
(4,3)

select co.course_number, fa.faculty_name
from fac_course
left join courses co ON co.course_id = fac_course.course_id
left join faculties  fa ON fa.faculty_id = fac_course.faculty_id




--professor_subject--
insert into professor_subject (subject_id, professor_id) values (1, 2);
insert into professor_subject (subject_id, professor_id) values (2, 12);
insert into professor_subject (subject_id, professor_id) values (3, 1);
insert into professor_subject (subject_id, professor_id) values (4, 6);
insert into professor_subject (subject_id, professor_id) values (5, 3);
insert into professor_subject (subject_id, professor_id) values (6, 8);
insert into professor_subject (subject_id, professor_id) values (7, 9);
insert into professor_subject (subject_id, professor_id) values (8, 5);
insert into professor_subject (subject_id, professor_id) values (9, 4);
insert into professor_subject (subject_id, professor_id) values (10, 7);
insert into professor_subject (subject_id, professor_id) values (11, 11);
insert into professor_subject (subject_id, professor_id) values (12, 10);

select * from professor_subject

select pro."name", pro.surname, sub.subject_name, sub.subject_price
from professor_subject
left join professors pro ON pro.professor_id = professor_subject.professor_id
left join subjects sub ON sub.subject_id = professor_subject.subject_id



--curriculum--
insert into Curriculum (fac_course_id, prof_sub_id,subject_time)
values
(1,1,36),
(1,2,42),
(1,3,52),
(1,4,30),

(2,1,45),
(2,2,42),
(2,3,46),
(2,4,36),

(3,1,49),
(3,2,37),
(3,3,32),
(3,4,53),

(4,1,54),
(4,2,56),
(4,3,41),
(4,4,39),



(5,5,45),
(5,6,32),
(5,7,60),
(5,8,58),

(6,5,35),
(6,6,38),
(6,7,41),
(6,8,52),

(7,5,62),
(7,6,63),
(7,7,43),
(7,8,55),

(8,5,66),
(8,6,67),
(8,7,49),
(8,8,59),



(9,9,29),
(9,10,25),
(9,11,30),
(9,12,42),

(10,9,38),
(10,10,28),
(10,11,51),
(10,12,26),

(11,9,33),
(11,10,44),
(11,11,22),
(11,12,69),

(12,9,30),
(12,10,12),
(12,11,35),
(12,12,40)


select * from curriculum

select fa.faculty_name, cu.course_number, pro."name", sub.subject_name, curriculum.subject_time
from curriculum
left join fac_course fa_cu ON fa_cu.fac_course_id = curriculum.fac_course_id
left join professor_subject pro_su ON pro_su.prof_sub_id = curriculum.prof_sub_id

left join faculties fa ON fa.faculty_id = fa_cu.faculty_id
left join courses cu ON cu.course_id = fa_cu.course_id

left join professors pro ON pro.professor_id = pro_su.professor_id
left join subjects sub ON sub.subject_id = pro_su.subject_id




--course_schedule--

select * from course_schedule
drop table course_schedule

insert into course_schedule (curriculum_id,student_id,grade)
values

--IT 1 course
(1,1, floor(random() * (100 - 50 + 1) + 50)::int),
(2,1, floor(random() * (100 - 50 + 1) + 50)::int),
(3,1, floor(random() * (100 - 50 + 1) + 50)::int),
(4,1, floor(random() * (100 - 50 + 1) + 50)::int),

(1,2, floor(random() * (100 - 50 + 1) + 50)::int),
(2,2, floor(random() * (100 - 50 + 1) + 50)::int),
(3,2, floor(random() * (100 - 50 + 1) + 50)::int),
(4,2, floor(random() * (100 - 50 + 1) + 50)::int),

--IT 2 course
(5,3, floor(random() * (100 - 50 + 1) + 50)::int),
(6,3, floor(random() * (100 - 50 + 1) + 50)::int),
(7,3, floor(random() * (100 - 50 + 1) + 50)::int),
(8,3, floor(random() * (100 - 50 + 1) + 50)::int),

(5,4, floor(random() * (100 - 50 + 1) + 50)::int),
(6,4, floor(random() * (100 - 50 + 1) + 50)::int),
(7,4, floor(random() * (100 - 50 + 1) + 50)::int),
(8,4, floor(random() * (100 - 50 + 1) + 50)::int),

--IT 3 course
(9,5, floor(random() * (100 - 50 + 1) + 50)::int),
(10,5, floor(random() * (100 - 50 + 1) + 50)::int),
(11,5, floor(random() * (100 - 50 + 1) + 50)::int),
(12,5, floor(random() * (100 - 50 + 1) + 50)::int),

(9,6, floor(random() * (100 - 50 + 1) + 50)::int),
(10,6, floor(random() * (100 - 50 + 1) + 50)::int),
(11,6, floor(random() * (100 - 50 + 1) + 50)::int),
(12,6, floor(random() * (100 - 50 + 1) + 50)::int),

--IT 4 course
(13,7, floor(random() * (100 - 50 + 1) + 50)::int),
(14,7, floor(random() * (100 - 50 + 1) + 50)::int),
(15,7, floor(random() * (100 - 50 + 1) + 50)::int),
(16,7, floor(random() * (100 - 50 + 1) + 50)::int),

(13,8, floor(random() * (100 - 50 + 1) + 50)::int),
(14,8, floor(random() * (100 - 50 + 1) + 50)::int),
(15,8, floor(random() * (100 - 50 + 1) + 50)::int),
(16,8, floor(random() * (100 - 50 + 1) + 50)::int),


--Law 1 course

(17,9, floor(random() * (100 - 50 + 1) + 50)::int),
(18,9, floor(random() * (100 - 50 + 1) + 50)::int),
(19,9, floor(random() * (100 - 50 + 1) + 50)::int),
(20,9, floor(random() * (100 - 50 + 1) + 50)::int),

(17,10, floor(random() * (100 - 50 + 1) + 50)::int),
(18,10, floor(random() * (100 - 50 + 1) + 50)::int),
(19,10, floor(random() * (100 - 50 + 1) + 50)::int),
(20,10, floor(random() * (100 - 50 + 1) + 50)::int),

--Law 2 course
(21,11, floor(random() * (100 - 50 + 1) + 50)::int),
(22,11, floor(random() * (100 - 50 + 1) + 50)::int),
(23,11, floor(random() * (100 - 50 + 1) + 50)::int),
(24,11, floor(random() * (100 - 50 + 1) + 50)::int),

(21,12, floor(random() * (100 - 50 + 1) + 50)::int),
(22,12, floor(random() * (100 - 50 + 1) + 50)::int),
(23,12, floor(random() * (100 - 50 + 1) + 50)::int),
(24,12, floor(random() * (100 - 50 + 1) + 50)::int),


--Law 3 course
(25,13, floor(random() * (100 - 50 + 1) + 50)::int),
(26,13, floor(random() * (100 - 50 + 1) + 50)::int),
(27,13, floor(random() * (100 - 50 + 1) + 50)::int),
(28,13, floor(random() * (100 - 50 + 1) + 50)::int),

(25,14, floor(random() * (100 - 50 + 1) + 50)::int),
(26,14, floor(random() * (100 - 50 + 1) + 50)::int),
(27,14, floor(random() * (100 - 50 + 1) + 50)::int),
(28,14, floor(random() * (100 - 50 + 1) + 50)::int),


--Law 4 course
(29,15, floor(random() * (100 - 50 + 1) + 50)::int),
(30,15, floor(random() * (100 - 50 + 1) + 50)::int),
(31,15, floor(random() * (100 - 50 + 1) + 50)::int),
(32,15, floor(random() * (100 - 50 + 1) + 50)::int),

(29,16, floor(random() * (100 - 50 + 1) + 50)::int),
(30,16, floor(random() * (100 - 50 + 1) + 50)::int),
(31,16, floor(random() * (100 - 50 + 1) + 50)::int),
(32,16, floor(random() * (100 - 50 + 1) + 50)::int),



--History 1 course
(33,17, floor(random() * (100 - 50 + 1) + 50)::int),
(34,17, floor(random() * (100 - 50 + 1) + 50)::int),
(35,17, floor(random() * (100 - 50 + 1) + 50)::int),
(36,17, floor(random() * (100 - 50 + 1) + 50)::int),

(33,18, floor(random() * (100 - 50 + 1) + 50)::int),
(34,18, floor(random() * (100 - 50 + 1) + 50)::int),
(35,18, floor(random() * (100 - 50 + 1) + 50)::int),
(36,18, floor(random() * (100 - 50 + 1) + 50)::int),

--History 2 course
(37,19, floor(random() * (100 - 50 + 1) + 50)::int),
(38,19, floor(random() * (100 - 50 + 1) + 50)::int),
(39,19, floor(random() * (100 - 50 + 1) + 50)::int),
(40,19, floor(random() * (100 - 50 + 1) + 50)::int),

(37,20, floor(random() * (100 - 50 + 1) + 50)::int),
(38,20, floor(random() * (100 - 50 + 1) + 50)::int),
(39,20, floor(random() * (100 - 50 + 1) + 50)::int),
(40,20, floor(random() * (100 - 50 + 1) + 50)::int),


--History 3 course
(41,21, floor(random() * (100 - 50 + 1) + 50)::int),
(42,21, floor(random() * (100 - 50 + 1) + 50)::int),
(43,21, floor(random() * (100 - 50 + 1) + 50)::int),
(44,21, floor(random() * (100 - 50 + 1) + 50)::int),

(41,22, floor(random() * (100 - 50 + 1) + 50)::int),
(42,22, floor(random() * (100 - 50 + 1) + 50)::int),
(43,22, floor(random() * (100 - 50 + 1) + 50)::int),
(44,22, floor(random() * (100 - 50 + 1) + 50)::int),


--History 4 course
(45,23, floor(random() * (100 - 50 + 1) + 50)::int),
(46,23, floor(random() * (100 - 50 + 1) + 50)::int),
(47,23, floor(random() * (100 - 50 + 1) + 50)::int),
(48,23, floor(random() * (100 - 50 + 1) + 50)::int),

(45,24, floor(random() * (100 - 50 + 1) + 50)::int),
(46,24, floor(random() * (100 - 50 + 1) + 50)::int),
(47,24, floor(random() * (100 - 50 + 1) + 50)::int),
(48,24, floor(random() * (100 - 50 + 1) + 50)::int),
(48,25, floor(random() * (100 - 50 + 1) + 50)::int)

drop table course_schedule
select * from course_schedule




--exam--
insert into Exam (schedule_id, exam_grade) values (1, 17);
insert into Exam (schedule_id, exam_grade) values (2, 17);
insert into Exam (schedule_id, exam_grade) values (3, 15);
insert into Exam (schedule_id, exam_grade) values (4, 11);
insert into Exam (schedule_id, exam_grade) values (5, 8);
insert into Exam (schedule_id, exam_grade) values (6, 19);
insert into Exam (schedule_id, exam_grade) values (7, 16);
insert into Exam (schedule_id, exam_grade) values (8, 16);
insert into Exam (schedule_id, exam_grade) values (9, 17);
insert into Exam (schedule_id, exam_grade) values (10, 15);
insert into Exam (schedule_id, exam_grade) values (11, 9);
insert into Exam (schedule_id, exam_grade) values (12, 14);
insert into Exam (schedule_id, exam_grade) values (13, 8);
insert into Exam (schedule_id, exam_grade) values (14, 16);
insert into Exam (schedule_id, exam_grade) values (15, 8);
insert into Exam (schedule_id, exam_grade) values (16, 9);
insert into Exam (schedule_id, exam_grade) values (17, 12);
insert into Exam (schedule_id, exam_grade) values (18, 10);
insert into Exam (schedule_id, exam_grade) values (19, 17);
insert into Exam (schedule_id, exam_grade) values (20, 17);
insert into Exam (schedule_id, exam_grade) values (21, 9);
insert into Exam (schedule_id, exam_grade) values (22, 13);
insert into Exam (schedule_id, exam_grade) values (23, 20);
insert into Exam (schedule_id, exam_grade) values (24, 14);
insert into Exam (schedule_id, exam_grade) values (25, 8);
insert into Exam (schedule_id, exam_grade) values (26, 9);
insert into Exam (schedule_id, exam_grade) values (27, 19);
insert into Exam (schedule_id, exam_grade) values (28, 18);
insert into Exam (schedule_id, exam_grade) values (29, 12);
insert into Exam (schedule_id, exam_grade) values (30, 14);
insert into Exam (schedule_id, exam_grade) values (31, 17);
insert into Exam (schedule_id, exam_grade) values (32, 15);
insert into Exam (schedule_id, exam_grade) values (33, 12);
insert into Exam (schedule_id, exam_grade) values (34, 8);
insert into Exam (schedule_id, exam_grade) values (35, 13);
insert into Exam (schedule_id, exam_grade) values (36, 18);
insert into Exam (schedule_id, exam_grade) values (37, 14);
insert into Exam (schedule_id, exam_grade) values (38, 8);
insert into Exam (schedule_id, exam_grade) values (39, 11);
insert into Exam (schedule_id, exam_grade) values (40, 10);
insert into Exam (schedule_id, exam_grade) values (41, 10);
insert into Exam (schedule_id, exam_grade) values (42, 8);
insert into Exam (schedule_id, exam_grade) values (43, 16);
insert into Exam (schedule_id, exam_grade) values (44, 14);
insert into Exam (schedule_id, exam_grade) values (45, 11);
insert into Exam (schedule_id, exam_grade) values (46, 12);
insert into Exam (schedule_id, exam_grade) values (47, 13);
insert into Exam (schedule_id, exam_grade) values (48, 11);
insert into Exam (schedule_id, exam_grade) values (49, 16);
insert into Exam (schedule_id, exam_grade) values (50, 15);
insert into Exam (schedule_id, exam_grade) values (51, 18);
insert into Exam (schedule_id, exam_grade) values (52, 17);
insert into Exam (schedule_id, exam_grade) values (53, 16);
insert into Exam (schedule_id, exam_grade) values (54, 14);
insert into Exam (schedule_id, exam_grade) values (55, 20);
insert into Exam (schedule_id, exam_grade) values (56, 11);
insert into Exam (schedule_id, exam_grade) values (57, 12);
insert into Exam (schedule_id, exam_grade) values (58, 17);
insert into Exam (schedule_id, exam_grade) values (59, 11);
insert into Exam (schedule_id, exam_grade) values (60, 14);
insert into Exam (schedule_id, exam_grade) values (61, 10);
insert into Exam (schedule_id, exam_grade) values (62, 10);
insert into Exam (schedule_id, exam_grade) values (63, 18);
insert into Exam (schedule_id, exam_grade) values (64, 11);
insert into Exam (schedule_id, exam_grade) values (65, 17);
insert into Exam (schedule_id, exam_grade) values (66, 18);
insert into Exam (schedule_id, exam_grade) values (67, 19);
insert into Exam (schedule_id, exam_grade) values (68, 19);
insert into Exam (schedule_id, exam_grade) values (69, 11);
insert into Exam (schedule_id, exam_grade) values (70, 20);
insert into Exam (schedule_id, exam_grade) values (71, 13);
insert into Exam (schedule_id, exam_grade) values (72, 19);
insert into Exam (schedule_id, exam_grade) values (73, 15);
insert into Exam (schedule_id, exam_grade) values (74, 11);
insert into Exam (schedule_id, exam_grade) values (75, 10);
insert into Exam (schedule_id, exam_grade) values (76, 20);
insert into Exam (schedule_id, exam_grade) values (77, 10);
insert into Exam (schedule_id, exam_grade) values (78, 15);
insert into Exam (schedule_id, exam_grade) values (79, 15);
insert into Exam (schedule_id, exam_grade) values (80, 14);
insert into Exam (schedule_id, exam_grade) values (81, 18);
insert into Exam (schedule_id, exam_grade) values (82, 10);
insert into Exam (schedule_id, exam_grade) values (83, 8);
insert into Exam (schedule_id, exam_grade) values (84, 9);
insert into Exam (schedule_id, exam_grade) values (85, 19);
insert into Exam (schedule_id, exam_grade) values (86, 12);
insert into Exam (schedule_id, exam_grade) values (87, 12);
insert into Exam (schedule_id, exam_grade) values (88, 17);
insert into Exam (schedule_id, exam_grade) values (89, 13);
insert into Exam (schedule_id, exam_grade) values (90, 16);
insert into Exam (schedule_id, exam_grade) values (91, 8);
insert into Exam (schedule_id, exam_grade) values (92, 10);
insert into Exam (schedule_id, exam_grade) values (93, 19);
insert into Exam (schedule_id, exam_grade) values (94, 11);
insert into Exam (schedule_id, exam_grade) values (95, 10);
insert into Exam (schedule_id, exam_grade) values (96, 11);
insert into Exam (schedule_id, exam_grade) values (97, 10);



select * from exam
