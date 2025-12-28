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

create table if not exists teacher
(
    MaGV varchar(10) primary key,
    HoTen varchar(100) not null ,
    Email varchar(100) not null
);

alter table subject
    add MaGV varchar(10) not null ;

alter table subject
    add constraint FK_MH_GV
        foreign key (MaGV)
            references teacher(MaGV);

