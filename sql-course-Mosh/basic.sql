create database shop;
use shop;
create table customer (
  id int primary key, 
  first_name varchar(80), 
  last_name varchar(80), 
  City varchar(80), 
  product varchar(300)
);

-- insert into customer values(101, 'AAA', 'BBB', 'Nashik', 'book');
-- insert into customer values(102, 'CCC', 'DDD', 'Mumbai', 'pen');
-- insert into customer values(103, 'EEE', 'FFF', 'Banglore', 'bag');
-- insert into customer values(104, 'GGG', 'HHH', 'Nashik', 'book');
-- insert into customer values(105, 'XXX', 'ZZZ', 'Hydrabad', null);

insert into customer (id, first_name, last_name, City, product)
values(101, 'AAA', 'BBB', 'Nashik', 'book'),
  (102, 'CCC', 'DDD', 'Mumbai', 'pen'),
  (103, 'EEE', 'FFF', 'Banglore', 'bag'),
  (104, 'GGG', 'HHH', 'Nashik', 'book'),
  (105, 'XXX', 'ZZZ', 'hydrabad', null);

select * from customer;

select * 
from customer
where first_name like '%n%';

select * 
from customer 
where product like 'book'
order by first_name desc;

select * 
from customer 
where id between 103 and 105;

select * 
from customer
where first_name like '%a';

select * 
from customer
where City in ('Nashik');

select * from customer;
select * 
from customer 
