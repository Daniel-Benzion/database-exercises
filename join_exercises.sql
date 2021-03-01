USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_emp AS de
    ON e.emp_no = de.emp_no
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN departments d
    ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;