USE employees;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%e' ORDER BY emp_no;

SELECT CONCAT(first_name, ' ', last_name), birth_date FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT CONCAT(first_name, ' ', last_name), birth_date, hire_date FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999;
# without a function way....
# SELECT CONCAT(first_name, ' ', last_name) FROM employees
# WHERE birth_date LIKE '____-12-25' AND(YEAR(hire_date) BETWEEN 1990 AND 1999);

SELECT CONCAT(first_name, ' ', last_name), birth_date, hire_date FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(hire_date, CURDATE()) FROM employees WHERE day(birth_date) = 25 AND month(birth_date) = 12 AND year(hire_date) LIKE '199%' ORDER BY datediff(hire_date, CURDATE());