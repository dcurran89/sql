-- Exercise 8.10.2 Joins

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, dept_name, e.emp_no
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01'
ORDER BY dept_name;