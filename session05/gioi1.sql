create database if not exists gioi1;
use gioi1;

create table orders
(
    order_id     int primary key auto_increment,
    customer_id  int            not null,
    total_amount decimal(10, 2) not null,
    order_date   date                                       default (current_date),
    status       enum ('pending', 'completed', 'cancelled')
);

insert into orders (customer_id, total_amount, order_date, status)
values (1, 15000000.00, '2025-01-01', 'completed'),
       (2, 7500000.50, '2025-01-03', 'pending'),
       (3, 22000000.00, '2025-01-05', 'completed'),
       (4, 5000000.00, '2025-01-06', 'cancelled');

select *
from orders
where status = 'completed';
select *
from orders
where total_amount > 5000000;
select *
from orders
order by order_date desc
limit 5;
select *
from orders
where status = 'completed'
order by total_amount desc;