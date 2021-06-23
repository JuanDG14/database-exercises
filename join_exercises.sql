USE employees;
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm ON e.emp_no = dm.emp_no JOIN departments d ON dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%';

# SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager FROM employees AS e JOIN dept_manager AS dm ON e.emp_no = dm.emp_no AND to_date > CURDATE() JOIN departments AS d USING(dept_no) ORDER BY dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm ON e.emp_no = dm.emp_no JOIN departments d ON dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' AND e.gender = 'F';

SELECT t.title, COUNT(de.emp_no) AS Count FROM dept_emp AS de JOIN titles AS t ON de.emp_no = t.emp_no AND t.to_date > CURDATE() AND de.to_date > CURDATE() JOIN departments AS d ON d.dept_no = de.dept_no AND dept_name = 'Customer Service' GROUP BY t.title;