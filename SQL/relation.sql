create table students (
student_id serial primary key,
name varchar(100) not null
);

insert into students (name)
values ('Manas'),
		('Manab'),
		('Sarmila');

select * from students;


create table student_profiles (
student_id int primary key,
address text,
age int,
phone varchar(15)
);


insert into student_profiles (student_id, address, age, phone)
values (1,'wb', 24,'1111111111'),
		(2,'mh', 19, '2222222222'),
		(3, 'del', 57, '3333333333');


select * from student_profiles;


ALTER TABLE student_profiles
add constraint fk_student_id
FOREIGN KEY (student_id)
REFERENCES students(student_id);


SELECT 
	s.student_id,
	s.name,
	sp.address,
	sp.age,
	sp.phone
FROM students s
JOIN student_profiles sp
ON s.student_id = sp.student_id;












