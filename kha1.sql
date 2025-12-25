create database if not exists kha1;
use kha1;


create table if not exists student(
    MaSV varchar(10) primary key,
    TenSV varchar(20) not null
);

create table if not exists subject(
    MaMH varchar(10) primary key,
    TenMH varchar(20) not null ,
    SoTinChi int not null,
    MaSV varchar(10),
    foreign key (MaSV) references student (MaSV)

);

create table if not exists goals(
    MaMT int auto_increment primary key ,
    ND varchar(250) not null ,
    TG date not null ,
    MaMH varchar(10),
    foreign key (MaMH) references subject (MaMH)
);