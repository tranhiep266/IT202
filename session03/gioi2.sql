create database if not exists gioi2;
use gioi2;


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

create table if not exists Subject
(
    subject_id   varchar(10) primary key,
    subject_name varchar(50) not null,
    credit       int check ( credit > 0 )
);

insert into Subject (subject_id, subject_name, credit)
    VALUE
    ('MH01', 'IT101', '3'),
    ('MH02', 'IT202', '2'),
    ('MH03', 'IT301', '4');

create table if not exists Enrollmment
(
    student_id  varchar(10),
    subject_id  varchar(10),
    enroll_date date,
    primary key (student_id, subject_id),
    foreign key (student_id) references Student (student_id),
    foreign key (subject_id) references Subject (subject_id)
);

insert into Enrollmment(student_id, subject_id, enroll_date) VALUE
    ('SV01', 'MH01', '2025-6-12'),
    ('SV01', 'MH02', '2025-6-12'),
    ('SV02', 'MH01', '2025-6-12');

select * from Enrollmment where student_id = 'SV01';
select * from Enrollmment;