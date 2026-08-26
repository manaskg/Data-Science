CREATE TABLE students (
student_id INT,
name CHAR(50),
age INT,
grade CHAR(1)
);

INSERT INTO students(name, age, grade)
	values('Manas', '24', 'A'),
			('Manab', '19', 'O');

SELECT * FROM students;

SELECT name FROM students WHERE grade = 'A';

update students
set age = '25'
where name = 'Manas';

select * from students;

update students 
set student_id = 1
where name = 'Manas';

update students
set student_id = 2
where name = 'Manab';

select * from students;

delete from students
where name = 'Manab';

select * from students;



create table numbers(
id serial,
age smallint,
price numeric(4,2),
rating real
);

insert into numbers(age, price, rating)
values(25,12.24001,5.333456);

select * from numbers;