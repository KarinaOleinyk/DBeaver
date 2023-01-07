/*1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.*/
select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on employee_salary.employee_id = employees.ID
join salary on employee_salary.salary_id = salary.ID;


/*2. Вывести всех работников у которых ЗП меньше 2000.*/
select employees.employee_name, salary.monthly_salary
from employees 
join employee_salary on employee_salary.employee_id = employees.ID
join salary on employee_salary.salary_id = salary.ID
where salary.monthly_salary < '2000';

/*3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employees.employee_name, salary.monthly_salary
from employees 
right outer join employee_salary on employee_salary.employee_id = employees.ID
right outer join salary on employee_salary.salary_id = salary.ID
where employees.employee_name is null;

/*4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)*/
select employees.employee_name, salary.monthly_salary
from employees 
right outer join employee_salary on employee_salary.employee_id = employees.ID
right outer join salary on employee_salary.salary_id = salary.ID
where employees.employee_name is null 
AND
salary.monthly_salary < '2000';

/*5. Найти всех работников кому не начислена ЗП.*/
select employees.employee_name, salary.monthly_salary
from employees 
left outer join employee_salary on employee_salary.employee_id = employees.ID
left outer join salary on employee_salary.salary_id = salary.ID
where salary.monthly_salary is null;

/*6. Вывести всех работников с названиями их должности.*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID;

/*7. Вывести имена и должность только Java разработчиков.*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID
where roles.role_name like '%Java %';

/*8. Вывести имена и должность только Python разработчиков.*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID
where roles.role_name like '%Python%';

/*9. Вывести имена и должность всех QA инженеров.*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID
where roles.role_name like '%QA%';

/*10. Вывести имена и должность ручных QA инженеров.*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID
where roles.role_name like '%QA%' and roles.role_name like '%Manual%';

/*11. Вывести имена и должность автоматизаторов QA*/
select employees.employee_name, roles.role_name
from employees
join roles_employee on roles_employee.employee_id = employees.ID
join roles on roles_employee.role_id = roles.ID
where roles.role_name like '%QA%' and roles.role_name like '%Automation%';

/*12. Вывести имена и зарплаты Junior специалистов*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';
                                                                                                                                                                                

/*13. Вывести имена и зарплаты Middle специалистов*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

/*14. Вывести имена и зарплаты Senior специалистов*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%';

/*15. Вывести зарплаты Java разработчиков*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java %';

/*16. Вывести зарплаты Python разработчиков*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python%';

/*17. Вывести имена и зарплаты Junior Python разработчиков*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%' and roles.role_name like '%Python%';

/*18. Вывести имена и зарплаты Middle JS разработчиков*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%' and roles.role_name like '%JavaScript%';

/*19. Вывести имена и зарплаты Senior Java разработчиков*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%' and roles.role_name like '%Java %'

/*20. Вывести зарплаты Junior QA инженеров*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%' and roles.role_name like '%QA%'

/*21. Вывести среднюю зарплату всех Junior специалистов*/
select employees.employee_name, avg(salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%'
group by employees.employee_name;

/*22. Вывести сумму зарплат JS разработчиков*/
select roles.role_name, sum(salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%JavaScript%'
group by roles.role_name;

/*23. Вывести минимальную ЗП QA инженеров*/
select roles.role_name, min(salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'
group by roles.role_name;

/*24. Вывести максимальную ЗП QA инженеров*/
select roles.role_name, max(salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'
group by roles.role_name;

/*25. Вывести количество QA инженеров*/
select count(roles.role_name)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%'

/*26. Вывести количество Middle специалистов.*/
select count(roles.role_name)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

/*27. Вывести количество разработчиков*/
select count(roles.role_name)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer%';

/*28. Вывести фонд (сумму) зарплаты разработчиков.*/
select sum(salary.monthly_salary)
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer%';

/*29. Вывести имена, должности и ЗП всех специалистов по возрастанию*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary asc;

/*30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where salary.monthly_salary between '1700' and '2300';

/*31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
order by salary.monthly_salary asc, salary.monthly_salary < '2300';

/*32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000*/
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees
join employee_salary on employees.id = employee_id
join salary on salary_id = salary.id
join roles_employee on employees.id = roles_employee.role_id
join roles on roles_employee.role_id = roles.id
where salary.monthly_salary = '1100' and salary.monthly_salary = '1500' and salary.monthly_salary = '2000';

