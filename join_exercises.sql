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

SELECT t.title AS 'Title', COUNT(*) AS 'Count'
FROM employees AS e
    JOIN titles AS t
        ON e.emp_no = t.emp_no
    JOIN dept_emp de
        ON e.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
    JOIN dept_manager dm on d.dept_no = dm.dept_no
WHERE d.dept_name = 'Customer Service' AND
      t.to_date = '9999-01-01' AND
      dm.to_date = '9999-01-01' AND
      de.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM employees AS e
         JOIN salaries s
             ON e.emp_no = s.emp_no
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
         JOIN dept_manager AS dm
              ON e.emp_no = dm.emp_no
         JOIN departments d
              ON d.dept_no = de.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;