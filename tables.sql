create table departments (
	dept_no varchar(255) not null primary key,
	dept_name varchar(255) not null);
	
select * from departments;

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));

	
select * from dept_emp;

create table dept_manager (
	dept_no varchar not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));
	
select * from dept_manager;


create table employees (
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	foreign key (emp_title_id) references titles(title_id),
	primary key (emp_no));
	
ALTER DATABASE homework9_db SET datestyle TO "ISO, MDY";

	
select * from employees;

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees (emp_no));
	
select * from salaries;

drop table salaries;

create table titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id));
	
select * from titles;