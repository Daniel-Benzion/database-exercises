USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';