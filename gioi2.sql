create database if not exists gioi2;
use gioi2;


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

create table if not exists document(
                                       MaD int auto_increment primary key ,
                                       TenD varchar(100) not null ,
                                       LoaiD varchar(100) not null ,
                                       UrlD varchar(250) not null ,
                                       MaCLD int,
                                       MaMH varchar(10),
                                       foreign key (MaMH) references subject(MaMH)
);

create table if not exists CalenDocu(
                                        MaCLD int,
                                        MaD int,
                                        primary key (MaCLD,MaD),
                                        foreign key (MaCLD) references calender(MaCLD),
                                        foreign key (MaD) references document(MaD)
);