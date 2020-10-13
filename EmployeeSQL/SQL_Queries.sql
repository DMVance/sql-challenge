SELECT employees.emp_no, last_name, first_name, sex, salary 
	FROM employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date FROM employees
	WHERE hire_date > '1986-01-01' AND hire_date < '1987-01-01';

SELECT e.first_name, e.last_name, dp.dept_name, dp.dept_no, dp.dept_name, dm.emp_no FROM employees AS e
	INNER JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
	INNER JOIN departments AS dp ON dp.dept_no = dm.dept_no;

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name FROM employees AS e
	INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
	INNER JOIN departments AS dp ON dp.dept_no = de.dept_no;

SELECT e.first_name, e.last_name, e.sex FROM employees as e
	WHERE e.first_name = 'Hercules' and
	e.last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name FROM employees as e
	INNER JOIN dept_emp as de on de.emp_no = e.emp_no
	INNER JOIN departments as dp on dp.dept_no = de.dept_no
	WHERE dp.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name FROM employees as e
	INNER JOIN dept_emp as de on de.emp_no = e.emp_no
	INNER JOIN departments as dp on dp.dept_no = de.dept_no
	WHERE dp.dept_name = 'Sales' or dp.dept_name = 'Development';

SELECT last_name, count(last_name) from employees
	GROUP BY last_name
	ORDER BY count(last_name) DESC;