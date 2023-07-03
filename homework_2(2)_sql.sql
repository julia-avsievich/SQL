-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary  on employee_salary.employee_id = employees.id
join salary  on salary.id = employee_salary.salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary 
from employees  e 
join salary s on e.id = s.id
join employee_salary es on es.salary_id = s.id
where s.monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select s.monthly_salary, e.employee_name from employee_salary es
join employees e on es.employee_id = e.id
right join salary s on es.salary_id = s.id
where employee_name is null
order  by monthly_salary;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select s.monthly_salary, e.employee_name from employee_salary es
join employees e on es.employee_id = e.id
right join salary s on es.salary_id = s.id
where monthly_salary<2000 and employee_name is null
order  by monthly_salary;

--5. Найти всех работников кому не начислена ЗП.
select employee_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id
where monthly_salary is null;

 --6. Вывести всех работников с названиями их должности.
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id ;

 --7. Вывести имена и должность только Java разработчиков.
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
where role_name like '%Java %';

 --8. Вывести имена и должность только Python разработчиков.
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
where role_name like '%Python %';

 --9. Вывести имена и должность всех QA инженеров.
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
where role_name like '%QA %';

 --10. Вывести имена и должность ручных QA инженеров.
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
where role_name like '%Manual QA %';

 --11. Вывести имена и должность автоматизаторов QA
select employee_name, r.role_name
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
where role_name like '%Automation QA %';

 --12. Вывести имена и зарплаты Junior специалистов
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Junior %';

 --13. Вывести имена и зарплаты Middle специалистов
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Middle %';

 --14. Вывести имена и зарплаты Senior специалистов
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Senior  %';

 --15. Вывести зарплаты Java разработчиков
select  r.role_name, monthly_salary
from  employee_salary es
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id = e.id 
join salary s on s.id=es.salary_id
join roles r on r.id = re.role_id
where role_name like '%Java %';

 --16. Вывести зарплаты Python разработчиков
select  r.role_name, monthly_salary
from  employee_salary es
join employees e on es.employee_id = e.id 
join roles_employee re on re.employee_id = e.id 
join salary s on s.id=es.salary_id
join roles r on r.id = re.role_id
where role_name like '%Python %';

 --17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Junior Python developer';

 --18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Middle JavaScript developer';

 --19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Senior JavaScript developer';

 --20. Вывести зарплаты Junior QA инженеров
select r.role_name, s.monthly_salary
from employees e
join employee_salary es on es.employee_id = e.id
join roles r on r.id = es.salary_id 
join salary s on s.id=es.salary_id
where role_name like 'Junior%QA %';

 --21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like 'Junior%';

 --22. Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%JavaScript developer';

 --23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%QA%';

 --24. Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%QA%';

 --25. Вывести количество QA инженеров
select COUNT(role_name)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%QA%';

 --26. Вывести количество Middle специалистов.
select COUNT(role_name)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like 'Middle %';

--27. Вывести количество разработчиков
select COUNT(role_name)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%developer';

 --28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from employee_salary es
join salary s on s.id=es.salary_id
join employees e on es.employee_id = e.id 
join roles r on r.id = es.salary_id 
where role_name like '%developer';

 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, salary.monthly_salary, r.role_name
from employees 
join employee_salary es  on es.employee_id = employees.id
join roles r on r.id = es.salary_id 
join salary  on salary.id = es.salary_id
order by monthly_salary;

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, salary.monthly_salary, r.role_name
from employees 
join employee_salary es  on es.employee_id = employees.id
join roles r on r.id = es.salary_id 
join salary  on salary.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary;

 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, salary.monthly_salary, r.role_name
from employees 
join employee_salary es  on es.employee_id = employees.id
join roles r on r.id = es.salary_id 
join salary  on salary.id = es.salary_id
where monthly_salary<2300
order by monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, salary.monthly_salary, r.role_name
from employees 
join employee_salary es  on es.employee_id = employees.id
join roles r on r.id = es.salary_id 
join salary  on salary.id = es.salary_id
where monthly_salary in(1100,1500,2000)
order by monthly_salary;





