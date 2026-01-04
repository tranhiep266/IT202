create database if not exists xuatsac2;
use xuatsac2;

create table if not exists products
(
    product_id    int auto_increment primary key,
    product_name  varchar(255)               not null,
    price         decimal(10, 2)             not null,
    stock         int                        not null,
    status        enum ('active','inactive') not null,
    sold_quantity int                        not null
);

insert into products (product_name, price, stock, status, sold_quantity)
    VALUE
    ('Laptop Dell', 10000000, 5, 'active', 5),
    ('Laptop HP', 12000000, 4, 'active', 5),
    ('Laptop Asus', 15000000, 6, 'inactive', 5),
    ('Điện thoại Samsung', 5000000, 10, 'active', 10),
    ('Điện thoại iPhone', 15000000, 3, 'active', 10),
    ('Điện thoại Xiaomi', 4000000, 8, 'inactive', 10),
    ('Điện thoại Oppo', 4500000, 7, 'active', 10),
    ('Điện thoại Vivo', 4200000, 6, 'inactive', 10),
    ('Điện thoại Realme', 3800000, 9, 'active', 10),
    ('Điện thoại Nokia', 3000000, 12, 'inactive', 10),
    ('Điện thoại Sony', 9000000, 2, 'active', 10),
    ('Điện thoại LG', 3500000, 5, 'inactive', 10),
    ('Điện thoại Huawei', 6000000, 4, 'inactive', 10),
    ('Điện thoại Tecno', 2800000, 15, 'active', 10),
    ('Điện thoại Infinix', 2600000, 18, 'inactive', 10),
    ('Điện thoại Itel', 2000000, 20, 'inactive', 10),
    ('Điện thoại OnePlus', 11000000, 3, 'active', 10),
    ('Điện thoại Pixel', 13000000, 2, 'inactive', 10),
    ('PC Gaming', 10000000, 5, 'active', 7);

select * from products where status = 'active' and price between 1000000 and 3000000;
select * from products order by price asc ;
select * from products order by sold_quantity desc limit 10 ;
