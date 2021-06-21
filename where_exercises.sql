# SELECT * FROM employees WHERE hire_date = '1985-01-01';
#
# SELECT first_name FROM employees WHERE first_name LIKE '%sus%';
#
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;
#
# SELECT emp_no, first_name, last_name FROM employees WHERE (emp_no < 20000 AND last_name IN ('Herber', 'Baek')) OR first_name = 'Shridhar';
#
# SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;
#
# SELECT birth_date, hire_date FROM employees WHERE birth_date NOT LIKE '195%' AND hire_date NOT LIKE '199%';
#
# SELECT * FROM employees WHERE birth_date LIKE '1963-01%';


USE employees;

# SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';


SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

# SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name LIKE 'E%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';