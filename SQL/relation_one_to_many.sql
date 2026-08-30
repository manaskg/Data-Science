select * from students;

create table marks (
mark_id serial primary key,
student_id int,
subject varchar(50),
marks int,
foreign key (student_id) references students(student_id)
);

insert into marks (student_id, subject, marks)
values

(1, 'English', 85),
(1, 'Math', 89),
(1, 'Science', 92),

(2, 'English', 80),
(2, 'Math', 80),
(2, 'Science', 95),

(3, 'English', 81),
(3, 'Math', 90),
(3, 'Science', 97);

select * from marks;


-- JOINS are used to combine rows from two or more
-- tables based on a related column, usually a primary
-- key in one table and a foreign key in another.
-- “
-- Think of JOINs as a bridge between two tables
-- that lets you query them together.

-- INNER JOIN: returns only matching rows in both table

select * from students s join marks m on s.student_id = m.student_id;

select s.name, m.subject, m.marks from students s join marks m 
on s.student_id = m.student_id
where s.name = 'Manas';

-- LEFT JOIN: returns all rows from the left table, even if there is no match in the right table

insert into students(name) 
values ('Ram');

select * from students s left join marks m on s.student_id = m.student_id;


-- RIGHT JOIN: Returns all rows from the right table, even if there's no match in the left table

insert into marks (student_id, subject, marks)
values (5, 'English', 85); -- it will give error as the foreign key 5 cant be linked with primary key of the student table as in the student table there is no primary key 5.

-- we cant show a good example 

insert into marks (student_id, subject, marks)
values (4, 'English', 85); 

select * from students s right join marks m on s.student_id = m.student_id;

-- FULL JOIN: Returns all rows from both tables, fills NULL for missing matches.


insert into students(name) 
values ('mkg2');

select * from students s full join marks m on s.student_id = m.student_id;


-- CROSS JOIN: Returns cartesian product (every combination)
-- less used

select * from students s cross join marks m;



