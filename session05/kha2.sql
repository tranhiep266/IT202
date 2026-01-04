create database if not exists kha2;
use kha2;

create table if not exists customers
(
    customer_id int auto_increment primary key,
    full_name   varchar(255)               not null,
    email       varchar(255)               not null,
    city        varchar(255)               not null,
    status      enum ('active','inactive') not null
);

insert into customers (full_name, email, city, status)
    VALUE
    ('Nguyen Van A', 'a.nguyen@gmail.com', 'Ha Noi', 'active'),
    ('Nguyen Van B', 'b.nguyen@gmail.com', 'HCM', 'inactive'),
    ('Nguyen Van D', 'd.nguyen@gmail.com', 'Ha Noi', 'inactive'),
    ('Nguyen Van C', 'c.nguyen@gmail.com', 'HCM', 'active');

select *
from customers;
select *
from customers
where city = 'HCM';
select *
from customers
where city = 'Ha Noi'
  and status = 'active';
select *
from customers
order by full_name asc;