create database if not exists gioi1;
use gioi1;

create table if not exists Subject
(
    subject_id   varchar(10) primary key,
    subject_name varchar(50) not null,
    credit       int check ( credit > 0 )
);

insert into Subject (subject_id, subject_name, credit)
    VALUE
    ('MH01', 'IT101', '3'),
    ('MH02','IT202','2'),
    ('MH03','IT301','4');

update Subject set credit = '2' where subject_id = 'MH03';
update Subject set subject_name = 'IT201' where subject_id = 'MH03';

select * from Subject;
