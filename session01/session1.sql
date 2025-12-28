use session01;
create table student(
student_id int auto_increment primary key,
full_name varchar(50),
date_of_birth date,
gender bit,
class_name varchar(100),
email varchar(100) not null unique,
phone_number varchar(11) unique
);

create table subject(
subject_id int auto_increment primary key,
subject_name varchar(100) not null unique,
credit_hours int
);

create table enrollment(
student_id int not null,
subject_id int not null,
semester int,
 registration_date date,
primary key(student_id,subject_id),
foreign key(student_id) references student(student_id),
foreign key(subject_id) references subject(subject_id)

);