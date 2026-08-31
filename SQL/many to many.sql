create database many_db;

create table students (
student_id serial primary key,
name varchar(100)
);

insert into students (name)
values ('Manas'),
		('Manab'),
		('Sarmila');

select * from students;

create table courses (
course_id int primary key,
name varchar(100)
);

insert into courses (course_id,name)
values  (101, 'Python'),
		(102, 'SQL'),
		(103, 'PowerBI');

select * from courses;

create table students_courses (
student_id int,
course_id int,

primary key (student_id, course_id),
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id)
);

insert into students_courses (student_id, course_id)
values (1,101), -- Manas -> Python
		(1,102), -- Manas -> SQL
		(2,101), -- Manab -> Python
		(2, 103), -- Manab -> PowerBI
		(3, 102); -- Sarmila -> SQL
		
select * from students_courses;


select * from students_courses sc
join students s on sc.student_id = s.student_id
join courses c on sc.course_id = c.course_id;


select s.name, c.name from students_courses sc
join students s on sc.student_id = s.student_id
join courses c on sc.course_id = c.course_id;

-- mention all courses taken by manas
select * from students_courses sc
join students s on sc.student_id = s.student_id
join courses c on sc.course_id = c.course_id 
where s.name = 'Manas';








