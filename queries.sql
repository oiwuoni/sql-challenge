-- Listing the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary from employees as e
left join salaries as s 
on (e.emp_no = s.emp_no)
order by e.emp_no;

-- Listing the first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date 
FROM employees as e
WHERE (e.hire_date BETWEEN '1986-01-01' AND '1986-12-31')
ORDER BY hire_date;

-- Listing the manager of each department with the following information: department number, department name,
-- the manager's employee number, last name, first name.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join employees as e
on (dm.emp_no = e.emp_no);

-- Listing the department of each employee with the following information: employee number, last name, first name,
-- and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
right join employees as e
on (de.emp_no = e.emp_no)
right join departments as d
on (de.dept_no = d.dept_no);

-- Listing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' and e.last_name like 'B%';

-- Listing all employees in the Sales department, including their employee number, last name, first name,
-- and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
right join employees as e
on (de.emp_no = e.emp_no)
right join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
select de.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
right join employees as e
on (de.emp_no = e.emp_no)
right join departments as d
on (de.dept_no = d.dept_no)
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- Listing the frequency count of employee last names (i.e., how many employees share each last name)
-- in descending order.
select e.last_name, 
count (e.last_name) from employees as e
group by e.last_name
order by count desc;


