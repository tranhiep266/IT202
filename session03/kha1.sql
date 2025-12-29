create database if not exists kha1;
use kha1;

create table if not exists Student(
    student_id varchar(10) primary key ,
    full_name varchar(50) not null ,
    date_of_birth date ,
    email varchar(50) unique
);

insert into Student (student_id, full_name, date_of_birth, email)
VALUES
    ('SV01','Nguyen Van A','2025-6-6','anguyen@gmail.com'),
    ('SV02','Nguyen Van B','2025-6-26','bnguyen@gmail.com'),
    ('SV03','Nguyen Van C','2025-6-16','cnguyen@gmail.com');

select * from Student;

select student_id,full_name from Student;

