USE employees;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE 'E%e'
GROUP BY last_name;

SELECT COUNT(DISTINCT first_name, last_name) FROM employees
WHERE last_name LIKE 'E%e';

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%' AND
last_name NOT LIKE '%qu%';

SELECT DISTINCT last_name FROM employees
WHERE last_name LIKE '%q%' AND
last_name NOT LIKE '%qu%';

SELECT COUNT(gender) AS total_people, gender FROM employees
WHERE (first_name = 'Irena' OR
 first_name = 'Vidya' OR
 first_name = 'Maya') GROUP BY gender;