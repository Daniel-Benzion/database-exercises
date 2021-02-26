USE employees;

SELECT CONCAT(first_name, ' ', last_name)
    AS 'Employee Names'
FROM employees
WHERE
        last_name LIKE 'e%' AND
        last_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name',
       datediff(curdate(), hire_date) AS 'Days with Company'
FROM employees
WHERE hire_date LIKE '199%' AND
        birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;