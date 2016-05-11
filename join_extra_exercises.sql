-- Using the example in the Associative Table Joins section as a guide, write a query that shows 
-- each department along with the name of the current manager for that department.
SELECT e.emp_no AS `Employee Number`, 
    CONCAT(e.first_name, ' ', e.last_name) AS `Full Name`, 
    dept_name AS `Department Name` 
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01'
ORDER BY `Department Name`;

-- Find the name of all departments currently managed by women.
SELECT dept_name AS `Department Name`, 
    CONCAT(e.first_name, ' ', e.last_name) AS `Manager Name`
FROM employees AS e
JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE to_date = '9999-01-01' AND gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
SELECT title AS Title, COUNT(title)
FROM titles AS t
JOIN dept_emp AS de
    ON de.emp_no = t.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY title;

-- Find the current salary of all current managers.
SELECT dept_name AS `Department Name`, 
    CONCAT(e.first_name, ' ', e.last_name) AS `Full Name`, 
    salary AS Salary
FROM salaries AS s
JOIN employees AS e
    ON e.emp_no = s.emp_no
JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY `Full Name`
ORDER BY dept_name;

-- BONUS not done
SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Employee Name`, 
    d.dept_name AS `Department Name`, 
    CONCAT(m.first_name, ' ', m.last_name) AS `Manager Name`
FROM dept_emp AS de
JOIN employees AS e
    ON e.emp_no = de.emp_no
JOIN departments AS d
    ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
    ON dm.dept_no = d.dept_no
JOIN employees AS m
    ON m.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND de.to_date = '9999-01-01';

