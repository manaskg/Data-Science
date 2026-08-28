create table students(
student_id serial PRIMARY KEY,
name VARCHAR(100),
age bigint
);

insert into students(name, age)
values ('Manas', 24),
		('Manab', 19);

select * from students;

-- ADD A NEW COLUMN

alter table students 
add column email varchar (100);

-- DROP A COLUMN
alter table students 
drop column email;

alter table students 
add column email varchar(100) default 'not provided';

-- RENAME A COLUMN
alter table students 
rename column name to full_name;

-- CHANGE DATATYPE OF A COLUMN
alter table students
alter column age type smallint;

-- CHANGE DEFAULT VALUES OF A COLUMN
alter table students
alter column age set default 18;

-- REMOVE THE DEFAULT VALUE
alter table students
alter column age drop default;

-- ADD A CONSTRAINT
alter table students 
add constraint age_check CHECK (age>=18);

-- har ek constraint ki alag alag namm hota h.
-- constraint column ka hissa nhi h. 

-- DROP A CONSTRAINT

alter table students 
drop constraint age_check;

-- Note: If you didn’t name the constraint manually while
-- creating it, you'll need to find its auto-generated name via pg_constraint or pgAdmin.

alter table students
add constraint age_check check (age>=0);

-- RENAME THE ACTUAL TABLE NAME	

alter table students
rename to school_students;



































