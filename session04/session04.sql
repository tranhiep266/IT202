create database if not exists session04;
use session04;

create table if not exists student
(
    student_id    int auto_increment primary key,
    student_name  varchar(100) not null,
    student_birth date         not null,
    student_email varchar(100) not null unique
);

create table if not exists teacher
(
    teacher_id    int auto_increment primary key,
    teacher_name  varchar(100) not null,
    teacher_email varchar(100) not null unique
);

create table if not exists course
(
    course_id     int auto_increment primary key,
    course_name   varchar(100) not null,
    course_des    varchar(100) not null,
    total_session int          not null,
    teacher_id    int          not null,
    foreign key (teacher_id) references teacher (teacher_id)
);

create table if not exists enrollment
(
    student_id  int,
    course_id   int,
    enroll_date date default (current_date),
    primary key (student_id, course_id),
    foreign key (student_id) references student (student_id),
    foreign key (course_id) references course (course_id)
);

create table if not exists score
(
    student_id  int,
    course_id   int,
    mid_score   decimal(4, 2) not null check ( mid_score between 0 and 10),
    final_score decimal(4, 2) not null check ( final_score between 0 and 10),
    primary key (student_id, course_id),
    foreign key (student_id) references student (student_id),
    foreign key (course_id) references course (course_id)
);

insert into student (student_name, student_birth, student_email)
    VALUE
    ('Nguyễn Văn A', '2002-05-12', 'a.nguyen@gmail.com'),
    ('Trần Thị B', '2001-09-20', 'b.tran@gmail.com'),
    ('Lê Hoàng C', '2003-01-15', 'c.le@gmail.com'),
    ('Phạm Thị D', '2002-11-03', 'd.pham@gmail.com'),
    ('Võ Minh Đ', '2001-07-08', 'd.vo@gmail.com');

insert into teacher (teacher_name, teacher_email)
    VALUE
    ('Nguyễn Thanh T', 't.nguyen@edu.vn'),
    ('Trần Minh H', 'h.tran@edu.vn'),
    ('Lê Quốc H', 'h.le@edu.vn'),
    ('Phạm Anh T', 't.pham@edu.vn'),
    ('Võ Thị L', 'l.vo@edu.vn');


insert into course (course_name, course_des, total_session, teacher_id)
    VALUE
    ('Lập trình C', 'C cơ bản cho người mới bắt đầu', 20, 1),
    ('SQL Cơ bản', 'Làm việc với cơ sở dữ liệu', 18, 2),
    ('Java OOP', 'Lập trình hướng đối tượng Java', 22, 3),
    ('Web Frontend', 'HTML, CSS, JavaScript', 25, 4),
    ('Python Data', 'Xử lý dữ liệu với Python', 24, 5);

insert into enrollment (student_id, course_id, enroll_date)
    VALUE
    (1, 1, '2024-09-01'),
    (1, 2, '2024-09-02'),
    (2, 2, '2024-09-01'),
    (3, 3, '2024-09-03'),
    (4, 4, '2024-09-04');

insert into score (student_id, course_id, mid_score, final_score)
    VALUE
    (1, 1, 7.5, 8.0),
    (1, 2, 8.0, 8.5),
    (2, 2, 6.5, 7.0),
    (3, 3, 7.0, 7.5),
    (4, 4, 8.5, 9.0);

update student
set student_email = 'a.new@gmail.com'
where student_id = 1;

update course
set course_des = 'SQL từ cơ bản đến nâng cao'
where course_id = 2;

update score
set final_score = 9.5
where student_id = 1 and course_id = 2;

delete from score
where student_id = 4 and course_id = 4;

delete from enrollment
where student_id = 4 and course_id = 4;

select * from student;

select * from teacher;

select * from course;

select * from enrollment;

select * from score;