CREATE TABLE Departments (
depart_number varchar(255) PRIMARY KEY,
department_name varchar(255))
;

create table employee_information (
employee_number integer primary key,
empl_title_id varchar(255),
dob varchar(15),
first_name text,
last_name text,
sex text,
hire_date varchar(15)); 

select * from employee_information 

create table employee_titles (
title_id varchar(255) not null primary key,
title text not null);

alter table employee_information
add constraint employee_join
foreign key (empl_title_id) references employee_titles(title_id); 

create table employee_salaries (
employ_number integer not null,
salary money not null,
foreign key (employ_number) references employee_information(employee_number));

select * from employee_salaries es
inner join employee_information ei on es.employ_number = ei.employee_number 

CREATE TABLE Department_Employees (
emp_number integer not null,
department_number varchar(255) not null,
foreign key (emp_number) references employee_information(employee_number),
foreign key (department_number) references departments(depart_number));
select * from Department_Employees

create table department_managers (
department_num varchar(255),
manager_employ_number integer,
foreign key (department_num) references departments(depart_number));
select * from department_managers