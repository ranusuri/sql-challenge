--Query 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
join salaries s
on e.emp_no = s.emp_no 
order by emp_no asc

--Query 2: List first name, last name, and hire date for employees who were hired in 1986.
select  first_name, last_name, hire_date
from employees 
where hire_date between '01/01/1986' AND '12/31/1986'
order by hire_date asc

--Query 3: List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
select dp.dept_no, dp.dept_name, e.emp_no, e.last_name, e.first_name
from dept_manager dm
join employees e  on dm.emp_no = e.emp_no
join departments dp on dp.dept_no = dm.dept_no;

--Query 4: List the department of each employee with the following information: employee number, last name, first name, 
--and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments dp on dp.dept_no = de.dept_no

