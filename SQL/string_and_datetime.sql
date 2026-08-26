create table strings(
	id serial,
	name text,
	bio text,
	code char(5),
	email varchar(100),
	is_active boolean
);

insert into strings(name, bio, code, email, is_active)
	values('Mana', 'Hi, i want to be an iitian', '100x', 'mana@gmail.com', false);

select * from strings;


create table timetable(
	id serial,
	created_on timestamp,
	modified_on time,
	expairy date,
	region timestamptz,
	duration interval
);

insert into timetable(created_on, modified_on, expairy, region, duration)
	values('2026-01-01 23:00:11', '14:00:22', '2026-01-02', '2026-01-01 14:00:02+05:30', '2 hours 30 minutes');

insert into timetable(created_on, modified_on, expairy, region, duration)
	values(now(), current_time, '2026-01-02', NOW(), '1 day 2 hours 70 minutes');

select * from timetable