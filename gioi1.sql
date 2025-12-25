create database if not exists gioi1;
use gioi1;


create table if not exists subject(
                                      MaMH varchar(10) primary key,
                                      TenMH varchar(20) not null ,
                                      SoTinChi int not null
);

create table if not exists goals(
                                    MaMT int auto_increment primary key ,
                                    ND varchar(250) not null ,
                                    TG date not null ,
                                    MaMH varchar(10),
                                    foreign key (MaMH) references subject (MaMH)
);

create table if not exists calender(
                                       MaCLD int auto_increment primary key ,
                                       NgayOT date not null ,
                                       TGBD time not null ,
                                       TGKT time not null ,
                                       NDOT varchar(250) not null ,
                                       MaMH varchar(10),
                                       foreign key (MaMH) references subject (MaMH)
);