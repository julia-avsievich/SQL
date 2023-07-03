--Создание функции, которая считает машины которые свободны

delimiter $$
create function count_free()
returns int deterministic
begin
declare n int  default 0;
select count(id_client) into n
from orderlist
where order_status='FREE';
return n;
end; $$ delimiter
 --Вызов: 
 select count_free();
 
--Создание функции,которая считает количество машин введенной марки
Delimiter $$
create function count_cars
(car_type varchar(35))
returns int
deterministic
begin
declare c int default 0;
select count(government_number_of_car) into c
from car
where car_brand=car_type;
return c;
end; $$

Delimiter ;
select count_cars('Audi');
 
--Создание процедуры, которая добавляет клиента

delimiter $$
create procedure add_client(full_name_par varchar(30), phone_par int(12), address_par varchar(30))
begin
insert into clients
(mobile_phone, full_name, address)
values
(phone_par, full_name_par, address_par);
end; $$
delimiter ;
 call add_client('Нестеров А.М.', 296667345, 'Козлова 92');
 
==Создание процедуры, которая удаляет водителя

delimiter $$
create procedure del_driver(full_name_par varchar(30))
begin
delete from driver
where full_name=full_name_par;
end; $$
delimiter ;
 call del_driver('Высоцкая О.К.');

 






--Триггер,который при удалении машины записывает номер автоматически
delimiter $$
create trigger del_car
before delete on car
for each row
begin
update driver
set government_number_of_car= 7777
where government_number_of_car=old.government_number_of_car;
end; $$
delimiter ;
delete from driver
where government_number_of_car=9504;

 

 
--Тригер который делает первую букву при вводе из маленькой в большую
delimiter $$
create trigger name_upper
after update on clients
for each row
begin
update clients
set new.full_name = CONCAT(UPPER(LEFT(new.full_name, 1)), SUBSTRING(new.full_name, 2)); 
end; $$
delimiter ;

use taxi;
delimiter $$
create trigger name_upper
before update on clients
for each row
begin
set new.full_name = CONCAT(UPPER(LEFT(new.full_name, 1)), SUBSTRING(new.full_name, 2)); 
end; $$
delimiter ;
update clients
set full_name='гудкова Е.Ф.'
where id_client=1;

