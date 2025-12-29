create database if not exists tonghop;
use tonghop;

create table if not exists Student(
    studentId varchar(10) primary key ,
    studentName varchar(50) not null
);
create table if not exists Subject(
    subjectId varchar(10) primary key ,
    subjectName varchar(50) not null
);
create table if not exists Enrollment(
    studentId varchar(10),
    subjectId varchar(10),
    primary key (studentId,subjectId),
    foreign key (studentId) references Student(studentId),
    foreign key (subjectId) references Subject(subjectId)
 );
create table if not exists Score(
    studentId varchar(10),
    subjectId varchar(10),
    score decimal not null ,
    check ( score between 0 and 10) ,
    primary key (studentId,subjectId),
    foreign key (studentId,subjectId) references Enrollment(studentId,subjectId)
);

insert into Student (studentId, studentName)
    VALUE
    ('Sv01','Nguyen A'),
    ('Sv02','Tran B');

insert into Subject(subjectId, subjectName)
    VALUE
    ('Mh01','IT102'),
    ('Mh02','It202');

insert into Enrollment (studentId, subjectId)
    VALUE ('Sv01','Mh01');

insert into Score (studentId, subjectId, score)
    VALUE ('Sv01','Mh01','8.0');

select * from Enrollment where studentId = 'Sv01';
select * from Score where studentId = 'Sv01';

update Score set score = '9.0' where studentId = 'Sv01' and subjectId = 'Mh01';

delete from Score where studentId = 'Sv01' and subjectId = 'Mh01';

