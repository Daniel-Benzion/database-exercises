USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name
FROM employees
WHERE
    last_name LIKE 'e%' AND
    last_name LIKE '%e'
GROUP BY last_name;

SELECT CONCAT(first_name, ', ', last_name)
FROM employees
WHERE
        last_name LIKE 'e%' AND
        last_name LIKE '%e'
GROUP BY last_name, first_name;

SELECT last_name, COUNT(last_name) AS 'Number'
FROM employees
WHERE
    last_name LIKE '%q%' AND
    last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE
    (first_name = 'Irena' OR
     first_name = 'Vidya' OR
     first_name = 'Maya')
GROUP BY gender;