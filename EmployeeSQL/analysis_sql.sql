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

--Query 5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees e
where e.first_name = 'Hercules' and e.last_name like 'B%'

--Query 6: List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments dp on de.dept_no = dp.dept_no  and dp.dept_name = 'Sales'


--Query 7 : List all employees in the Sales and Development departments, including their employee number, last name, 
--first name, and department name.
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments dp on de.dept_no = dp.dept_no  and dp.dept_name IN ('Sales','Development')

--Query 7;  with OR
select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments dp on de.dept_no = dp.dept_no  and (dp.dept_name = 'Sales' OR dp.dept_name = 'Development')  

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as Emp_count 
from employees 
group by last_name
order by Emp_count desc


