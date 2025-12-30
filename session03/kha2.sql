create database if not exists kha2;
use kha2;

create table if not exists Student
(
    student_id    varchar(10) primary key,
    full_name     varchar(50) not null,
    date_of_birth date,
    email         varchar(50) unique
);

insert into Student (student_id, full_name, date_of_birth, email)
VALUES ('SV01', 'Nguyen Van A', '2006-6-6', 'anguyen@gmail.com'),
       ('SV02', 'Nguyen Van B', '2006-6-26', 'bnguyen@gmail.com'),
       ('SV03', 'Nguyen Van C', '2006-6-16', 'cnguyen@gmail.com');



update Student set email = 'newanguyen@gmail.com' where student_id = 'SV01';
update Student set date_of_birth = '2006-12-5' where student_id = 'SV02';
delete from Student where student_id = 'SV03';

select *
from Student;

select student_id, full_name
from Student;