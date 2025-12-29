create database if not exists xuatsac2;
use xuatsac2;


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

create table if not exists Score
(
    student_id  varchar(10),
    subject_id  varchar(10),
    mid_score decimal not null check ( mid_score between 0 and 10) ,
    final_score decimal not null check ( final_score between 0 and 10) ,
    primary key (student_id, subject_id),
    foreign key (student_id) references Student (student_id),
    foreign key (subject_id) references Subject (subject_id)
    );

insert into Score(student_id, subject_id, mid_score,final_score) VALUE
    ('SV01', 'MH01', 6,8),
    ('SV01', 'MH02', 9,7),
    ('SV02', 'MH01', 6,9);


select * from Score;
select * from Score where final_score >= 8;