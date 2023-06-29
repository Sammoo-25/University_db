--Students--
create table Students(
	student_id serial primary key,
	name varchar(25) not null,
	surname varchar(25) not null,
	age int not null
)

select * from Students
drop table students


--Courses--
create table Courses(
	course_id serial primary key,
	course_number varchar(5) not null
)

select * from Courses
drop table Courses



--Faculties--
create table Faculties(
	faculty_id serial primary key,
	faculty_name varchar(25) not null
)


select * from Faculties
drop table Faculties



--Deans--
create table Deans(
	dean_id serial primary key,
	name varchar(25) not null,
	surname varchar(25) not null
)

select * from Deans
drop table Deans




--Subjects--
create table Subjects(
	subject_id serial primary key,
	subject_name varchar(30) not null,
	subject_price int not null
)

drop table Subjects
select * from Subjects

--Professors--
create table Professors(
	professor_id serial primary key,
	name varchar(25) not null,
	surname varchar(30) not null
)

drop table Professors
select * from Professors


--Programs--
create table Programs(
	program_id serial primary key,
	program_name varchar(50) not null,
	program_price int not null
)

drop table Programs
select * from Programs





--Reletionships--

--dean-faculty--
create table fac_dean(
	fac_dean serial primary key,
	dean_id int REFERENCES Deans(dean_id),
	faculty_id int REFERENCES Faculties(faculty_id),
	UNIQUE(dean_id, faculty_id)
)

select * from fac_dean
drop table fac_dean

--student_program--

CREATE table student_program(
	stud_prog_id serial primary key,
	program_id int REFERENCES Programs(program_id) not null,
	student_id int REFERENCES Students(student_id) not null,
	UNIQUE(program_id, student_id)
)


select * from student_program
drop table student_program


--fac_course--
create table fac_course(
	fac_course_id serial primary key,
	course_id int REFERENCES Courses(course_id) not null,
	faculty_id int REFERENCES Faculties(faculty_id) not null,
	UNIQUE(course_id, faculty_id)
)


select * from fac_course
drop table fac_course

SELECT * from faculties
select * from courses

--professor_subject--
create table professor_subject (
	prof_sub_id serial primary key,
	subject_id int REFERENCES Subjects(subject_id),
	professor_id int REFERENCES Professors(professor_id),
	UNIQUE(subject_id, professor_id)
)

select * from professor_subject
drop table professor_subject


--curriculum--
create table Curriculum(
	curriculum_id serial primary key,
	fac_course_id int REFERENCES fac_course(fac_course_id),
	prof_sub_id int REFERENCES professor_subject(prof_sub_id),
	subject_time int ,
	UNIQUE(fac_course_id, prof_sub_id)
)

select * from Curriculum
drop table Curriculum

--course_schedule--
create table course_schedule(
	schedule_id serial primary key,
	student_id int REFERENCES Students(student_id),
	curriculum_id int REFERENCES Curriculum(curriculum_id),
	grade int not null,
	UNIQUE(student_id, curriculum_id)
)

select * from course_schedule
drop table course_schedule


--exam--
create table Exam(
	exam_id serial primary key,
	schedule_id int REFERENCES course_schedule(schedule_id),
	exam_grade int not null,
	UNIQUE(schedule_id)
)
select * from Exam
drop table Exam
