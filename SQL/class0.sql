create table random (
id serial primary key,
name varchar(100) not null,
email text not null unique,
created_at date default now(),
age int check (age>=18)
);

insert into random(name,email,age)
values('Manas', 'manas@gmail.com', 24);

select * from random;