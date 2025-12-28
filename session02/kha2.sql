create database if not exists kha2;
use kha2;

create table if not exists student(
    MaSV varchar(10) primary key ,
    HoTen varchar(50) not null
);

create table if not exists subject(
    MaMH varchar(10) primary key ,
    TenMH varchar(20) not null ,
    SoTC int not null CHECK ( SoTC > 0 )
);