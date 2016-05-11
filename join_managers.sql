-- Exercise 8.10.2 Joins

SELECT e.emp_no, CONCAT(e.first_name, ' ', e.last_name) AS full_name, dept_name 
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;



--Without Aliases
-- ***************************************
SELECT dept_name AS Department_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, employees.emp_no
FROM employees
JOIN dept_manager
  ON dept_manager.emp_no = employees.emp_no
JOIN departments
  ON departments.dept_no = dept_manager.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;