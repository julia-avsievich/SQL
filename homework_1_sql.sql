select model, speed, hd from PC
where price<500;

select distinct maker from Product
where type='Printer';

select * from Printer
where color='y';

select model, ram, screen from Laptop 
where price>1000;

select model, speed, hd from PC
where (cd='12x' or cd='24x') and price<600;

select distinct maker,speed from Laptop
	inner join  Product  
on Laptop.model=Product.model
	where hd>=10;
    
select laptop.model , laptop.price  from laptop inner join product on laptop.model = product.model  
where product.maker= 'B' 
union 
select pc.model , pc.price from pc inner join product on pc.model = product.model  
where product.maker= 'B' 
union 
select printer.model , printer.price from printer inner join product on printer.model = product.model  
where product.maker= 'B';

select distinct maker from Product
where Product.type='PC' 
except
select distinct product.maker
from product
where type = 'laptop';

select distinct maker from Product
 inner join
PC 
on product.model=PC.model
where speed>=450;

Select model, price
from Printer
where 
price= (select max(price) from Printer);




