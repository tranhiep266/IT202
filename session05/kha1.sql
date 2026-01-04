create database if not exists kha1;
use kha1;

create table if not exists products
(
    product_id   int auto_increment primary key,
    product_name varchar(255)               not null,
    price        decimal(10, 2)             not null,
    stock        int                        not null,
    status       enum ('active','inactive') not null
);

insert into products (product_name, price, stock, status)
    VALUE
    ('laptop', 10000000, 5, 'active'),
    ('dien thoai', 10000, 5, 'inactive'),
    ('pc', 10000, 5, 'active');

select *
from products;
select *
from products
where status = 'active';
select *
from products
where price > 1000000;
select *
from products
where status = 'active'
order by price asc;
