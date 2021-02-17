-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no;

	 
-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%/1986';


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT man.dept_no, dept_name, man.emp_no, last_name, first_name FROM dept_manager man
LEFT JOIN departments d on man.dept_no = d.dept_no
LEFT JOIN employees e on man.emp_no = e.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
LEFT JOIN dept_emp de on e.emp_no = de.emp_no
LEFT JOIN departments d on de.dept_no = d.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE '%B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, 
COUNT(last_name) AS frequency FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;