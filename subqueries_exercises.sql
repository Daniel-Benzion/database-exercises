USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employees'
FROM employees e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees e
    WHERE e.emp_no = 101010
    );

SELECT t.title AS 'Titles'
FROM titles t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees e
    WHERE e.first_name = 'Aamod'
    );

SELECT e.first_name, e.last_name
FROM employees e
WHERE e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager dm
    WHERE dm.to_date = '9999-01-01' AND
          e.gender = 'F'
    );