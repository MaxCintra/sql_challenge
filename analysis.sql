select ei.employee_number, ei.last_name, ei.first_name, ei.sex, es.salary
from employee_information ei
inner join employee_salaries es on ei.employee_number = es.employ_number

select first_name, last_name, hire_date
from employee_information
where hire_date like ('%1986');

select dm.department_num, d.department_name, ei.employee_number, ei.last_name, ei.first_name
from department_managers dm
inner join departments d on dm.department_num = d.depart_number
inner join department_employees de on d.depart_number = de.department_number
inner join employee_information ei on de.emp_number = ei.employee_number
where ei.employee_number in ('110022',
'110039',
'110085',
'110114',
'110183',
'110228',
'110303',
'110344',
'110386',
'110420',
'110511',
'110567',
'110725',
'110765',
'110800',
'110854',
'111035',
'111133',
'111400',
'111534',
'111692',
'111784',
'111877',
'111939')
group by dm.department_num, d.department_name, ei.employee_number, ei.last_name, ei.first_name
order by dm.department_num asc;

select de.department_number, ei.employee_number,ei.last_name, ei.first_name, d.department_name
from employee_information ei
inner join department_employees de on de.emp_number = ei.employee_number
inner join departments d on d.depart_number = de.department_number

select first_name, last_name, sex
from employee_information
where first_name = 'Hercules'
and last_name like 'B%'

select d.department_name, ei.employee_number, ei.last_name, ei.first_name
from employee_information ei
inner join department_employees de on de.emp_number = ei.employee_number
inner join departments d on d.depart_number = de.department_number
where d.department_name = 'Sales'
 
select d.department_name, ei.employee_number, ei.last_name, ei.first_name
from employee_information ei
inner join department_employees de on de.emp_number = ei.employee_number
inner join departments d on d.depart_number = de.department_number
where d.department_name = 'Sales'
or d.department_name = 'Development'

select last_name, count(last_name) as frequency_count
from employee_information
group by last_name
order by count(last_name) DESC