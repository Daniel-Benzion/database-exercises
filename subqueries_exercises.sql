USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employees'
FROM employees e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees e
    WHERE e.emp_no = 101010
    );