USE employees;

SELECT * FROM employeese
WHERE (first_name = 'Irena' OR
 first_name = 'Vidya' OR
 first_name = 'Maya') AND gender = 'M'
 ORDER BY last_name, first_name;

SELECT CONCAT (first_name, ' ', last_name)
AS full_name
FROM employees
WHERE last_name LIKE 'E%' OR
last_name LIKE '%E'
LIMIT 25;

SELECT (DATEDIFF(curdate(), hire_date)) / 365
AS years_since_hired
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 25;


