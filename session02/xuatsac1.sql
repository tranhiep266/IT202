create database if not exists xuatsac1;
use xuatsac1;

create database if not exists gioi2;
use gioi2;

create table if not exists student
(
    MaSV  varchar(10) primary key,
    HoTen varchar(50) not null
);

create table if not exists subject
(
    MaMH  varchar(10) primary key,
    TenMH varchar(20) not null,
    SoTC  int         not null CHECK ( SoTC > 0 )
);

create table if not exists regist
(
    MaSV varchar(10),
    MaMH varchar(10),
    primary key (MaSV, MaMH),
    foreign key (MaSV) references student (MaSV),
    foreign key (MaMH) references subject (MaMH)
);

create table if not exists score(
    MaSv varchar(10),
    MaMH varchar(10),
    ScoreProgress float not null ,
    ScoreLast float not null ,
    primary key (MaMH,MaSv),
    foreign key (MaMH) references subject(MaMH),
    foreign key (MaSv) references student(MaSV),
    check ( ScoreProgress between 0 and 10),
    check ( ScoreLast between 0 and 10)
);

