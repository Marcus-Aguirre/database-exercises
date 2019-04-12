USE employees;


SELECT *
FROM dept_manager;

-- DEPARTMENT NAME, AND CURRENT MANAGER, ALL

SELECT employees.departments.dept_name AS "Department Name",
       CONCAT(employees.employees.first_name, ' ', employees.employees.last_name)
                                       AS 'Department Manager'
FROM departments
       JOIN dept_manager on departments.dept_no = dept_manager.dept_no
       JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE employees.dept_manager.to_date = '9999=01-01'
ORDER BY dept_name;



-- WALKTHROUGH VERSION
/*SELECT d.dept_name AS 'department_name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'full_name'
FROM employees e
JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;*/




-- DEPARTMENT NAME, AND CURRENT MANAGER, ONLY WOMEN

SELECT employees.departments.dept_name AS "Department Name",
       CONCAT(employees.employees.first_name, ' ', employees.employees.last_name)
                                       AS 'Department Manager'
FROM departments
       JOIN dept_manager on departments.dept_no = dept_manager.dept_no
       JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE employees.dept_manager.to_date = '9999-01-01'
  AND employees.employees.gender = 'F'
ORDER BY dept_name;




-- DEPARTMENT NAME, AND CURRENT # OF EMPLOYEES

SELECT t.title, COUNT(title)
FROM titles t
       JOIN dept_emp de ON de.emp_no = t.emp_no
WHERE t.to_date > CURDATE()
  AND dept_no = 'd009'
  AND de.to_date > CURDATE()
GROUP BY t.title;


-- DEPARTMENT NAME, AND CURRENT MANAGER, CURRENT SALARY, ALL

SELECT employees.departments.dept_name AS "Department Name",
       CONCAT(employees.employees.first_name, ' ', employees.employees.last_name)
                                       AS 'Department Manager',
       employees.salaries.salary       AS 'Salary'
FROM departments
       JOIN dept_manager on departments.dept_no = dept_manager.dept_no
       JOIN employees on dept_manager.emp_no = employees.emp_no
       JOIN salaries on dept_manager.emp_no = salaries.emp_no
WHERE employees.dept_manager.to_date = '9999=01-01'
  AND employees.salaries.to_date = '9999=01-01'
ORDER BY dept_name;

