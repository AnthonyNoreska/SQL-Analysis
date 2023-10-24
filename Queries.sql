SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year', hire_date::date) = 1986;


SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.first_name, employees.last_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

SELECT dept_emp.dept_no, dept_emp.emp_no, employees.first_name, employees.last_name,
departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT employees.first_name, employees.last_name, dept_emp.emp_no,
departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, 
employees.first_name, employees.last_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE departments.dept_name IN ('Sales', 'Development');


SELECT last_name, COUNT(last_name) AS frequency 
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
