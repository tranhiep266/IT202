create database if not exists kha1;
use kha1;

create table if not exists class
(
    MaLop  varchar(10) primary key,
    TenLop varchar(20) not null,
    NHoc   int         not null
);

create table if not exists student
(
    MaSV  varchar(10) primary key,
    HoTen varchar(50) not null,
    NSinh date        not null,
    MaLop varchar(10),
    foreign key (MaLop) references class (MaLop)
);