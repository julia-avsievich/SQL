
create table employees(
id serial primary key,
employee_name varchar(50) not null);

insert into employees(employee_name)
values ( 'valera'),
(default, julia),
(default, valeria),
(default, angela),
(default, cringe),
(default, madina),
(default, anton),
(default, kate),
(default, elena),
(default, helena),
(default, vadim),
(default, angelina),
(default, cris),
(default, masha),
(default, anthony),
(default, katerina),
(default, eva),
(default, yury),
(default, valentin),
(default, angelika),
(default, cristina),
(default, marina),
(default, anatoliy),
(default, oksana),
(default, maria),
(default, mary),
(default, polina),
(default, yana),
(default, milena),
(default, milana),
(default, andrey),
(default, maxim),
(default, stas),
(default, nikita),
(default, sonya),
(default, kirill),
(default, tihon),
(default, lera),
(default, helga),
(default, volga),
(default, sonya),
(default, sanya),
(default, sveta),
(default, olya),
(default, iosif),
(default, makar),
(default, liana),
(default, katerina),
(default, nadya),
(default, yuliya),
(default, ivan),
(default, viktoria),
(default, vika),
(default, regina),
(default, gapa),
(default, petr),
(default, peter),
(default, emelyan),
(default, fenya),
(default, eseniya),
(default, iolanta),
(default, sergey),
(default, serge),
(default, maks),
(default, aleksandr),
(default, aleksandrina),
(default, senya),
(default, arseniy),
(default, liza),
(default, elizabeth);
select * from employees;

create table salary(
id serial primary key,
monthly_salary int not null);


insert into salary (monthly_salary)
values(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);


create table employee_salary(id serial primary key,
employee_id int not null unique,
salary_id int not null);

insert into employee_salary(employee_id,salary_id)
values (71,2),
(72,3),
(74,5),
(73,6),
(77,9),
(88,10),
(99,12),
(92,8),
(83,5),
(97,1),
(1,2),
(2,3),
(4,5),
(3,6),
(7,9),
(8,10),
(9,12),
(10,8),
(11,5),
(12,1),
(22,2),
(13,3),
(14,5),
(15,6),
(16,9),
(17,10),
(18,12),
(19,8),
(20,5),
(21,1),
(23,2),
(24,3),
(25,5),
(26,6),
(27,9),
(28,10),
(29,12),
(30,8),
(31,5),
(32,1);



create table roles(
id serial primary key,
role_name int not null unique);

alter table roles alter column role_name type varchar(30);
alter table roles alter column role_name type varchar(50);

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Phython developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA developer'),
('Middle Manual QA  developer'),
('Senior Manual QA  developer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA developer'),
('Middle Automation QA  developer'),
('Senior Automation QA  developer');

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id));

insert into roles_employee (employee_id,role_id)
values (33,2),
(34,3),
(35,5),
(36,6),
(37,9),
(38,10),
(39,12),
(40,8),
(5,5),
(6,1),
(1,2),
(2,3),
(4,5),
(3,6),
(7,9),
(8,10),
(9,12),
(10,8),
(11,5),
(12,1),
(22,2),
(13,3),
(14,5),
(15,6),
(16,9),
(17,10),
(18,12),
(19,8),
(20,5),
(21,1),
(23,2),
(24,3),
(25,5),
(26,6),
(27,9),
(28,10),
(29,12),
(30,8),
(31,13),
(32,15);
insert into roles_employee (employee_id,role_id)
values (41,19),
(42,20),
(43,21),
(44,19);




  create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);
insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
    ('11', 6, 10, 700),
    ('12', 8, 12, 1000),
    ('7', 4, 12, 400),
    ('XR', 6, 12, 800),
    ('XS', 6, 12, 1000),
    ('13', 6, 12, 1500),
    ('8', 4, 10, 700),
    ('SE2020', 6, 8, 700),
    ('X65', 6, 10, 350),
    ('X75', 8, 10, 450),
    ('X85', 4, 16, 550),
    ('X95', 12, 10, 650),
    ('X105', 8, 12, 760),
    ('X115', 6, 10, 820)
 ;

create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
);
insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
    ('A50', 8, 10, 400),
    ('A52', 8, 16, 500),
    ('S20', 8, 24, 1500),
    ('S21', 8, 12, 1000),
    ('S22', 6, 12, 1200),
    ('A71', 6, 12, 1200),
    ('A91', 4, 12, 1900),
    ('A57', 8, 8, 900),
    ('A32', 8, 4, 800),
    ('A33', 8, 5, 750),
    ('A43', 8, 5, 850),
    ('A65', 6, 10, 350),
    ('A75', 8, 10, 450),
    ('A85', 4, 16, 550),
    ('A95', 12, 10, 650),
    ('A105', 8, 12, 760),
    ('A115', 6, 10, 820)
 ;
select * from phones_apple;
select price from phones_apple;
select avg(price) from phones_apple;

select * from phones_apple 
where price>(select avg(price) from phones_apple)
order by price;
  

